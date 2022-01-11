#include <Arduino.h>
#include "IRremote.h"
#include "wifi_info.h"
#include "WiFi.h" // ESP32 WiFi include
#include <PubSubClient.h>
#include <Wire.h>
#include "esp_log.h"
#include <ArduinoJson.h>
#include <AsyncTCP.h>
#include <ESPAsyncWebServer.h>
#include <AsyncElegantOTA.h>


#define RECEIVER_PIN 35
#define SENDER_PIN 26

WiFiClient espClient;
PubSubClient client(espClient);
AsyncWebServer server(80);

#define mqtt_server "192.168.1.77"
#define mqtt_username "admin"
#define mqtt_pass "274733"
#define ir_sending_topic "ir_sending_topic"

const char *command_tv_on_off = "tv_on_off";
const char *command_audio_volume_up = "audio_volume_up";
const char *command_audio_volume_down = "audio_volume_down";
const char *command_audio_volume_mute = "audio_volume_mute";

void callback(char *topic, byte *payload, unsigned int length) {
    Serial.print("Message arrived in topic: ");
    Serial.println(topic);

    char message[length];
    Serial.print("Message: ");

    for (int i = 0; i < length; i++) {
        Serial.print((char) payload[i]);
        message[i] = (char) payload[i];
    }

    StaticJsonDocument<256> doc;
    deserializeJson(doc, message);

    const char *command = doc["command"];

    Serial.println();
    Serial.print("Json parsed: ");

    if (strcmp(command, command_tv_on_off) == 0) {
        Serial.println("Switch tv");
        IrSender.sendRC6(0x0, 0xC, 1, false);
    } else if (strcmp(command, command_audio_volume_up) == 0) {
        Serial.println("Audio up");
        IrSender.sendNEC(0xE78, 0x1, 1, false);
    } else if (strcmp(command, command_audio_volume_down) == 0) {
        Serial.println("Audio down");
        IrSender.sendNEC(0xE78, 0x2, 1, false);
    } else if (strcmp(command, command_audio_volume_mute) == 0) {
        Serial.println("Audio mute");
        IrSender.sendNEC(0xE78, 0x9, 1, false);
    } else {
        Serial.println("Unknown command: ");
        Serial.print(command);
    }
    Serial.println();
    Serial.println("-----------------------");
}

void setup_wifi() {
    delay(10);
    WiFi.disconnect(true);
    delay(100);
    WiFiClass::mode(WIFI_STA);

    WiFi.begin(ssid, pass);
    WiFi.setAutoConnect(true);
    WiFi.setAutoReconnect(true);

    while (WiFiClass::status() != WL_CONNECTED) {
        delay(500);
    }
}

void checkMqttHealth() {
    // Loop until we're reconnected
    while (!client.connected()) {
        Serial.print("Attempting MQTT connection...");
        if (client.connect("esp32Ir", mqtt_username, mqtt_pass)) {
            Serial.println("connected");
            client.setCallback(callback);
            client.subscribe(ir_sending_topic);
        } else {
            Serial.print("failed, rc=");
            Serial.print(client.state());
            Serial.println(" try again in 5 seconds");
            delay(5000);
        }
    }
}

void setup() {
    Serial.begin(9600);
    IrReceiver.begin(RECEIVER_PIN, ENABLE_LED_FEEDBACK);
    IrSender.begin(SENDER_PIN, ENABLE_LED_FEEDBACK);

    esp_log_level_set("*", ESP_LOG_ERROR);        // set all components to ERROR level
    esp_log_level_set("wifi", ESP_LOG_DEBUG);      // enable WARN logs from WiFi stack
    esp_log_level_set("dhcpc", ESP_LOG_INFO);     // enable INFO logs from DHCP client

    setup_wifi();
    client.setServer(mqtt_server, 1883);
    server.on("/", HTTP_GET, [](AsyncWebServerRequest *request) {
        request->send(200, "text/plain", "Hi! I am ESP32 [Universal remote].");
    });

    AsyncElegantOTA.begin(&server);    // Start ElegantOTA
    server.begin();
}

void loop() {
    if (IrReceiver.decode()) {
        IrReceiver.printIRResultShort(&Serial);
        IrReceiver.resume(); // Continue receiving
    }
    if (!client.connected()) {
        checkMqttHealth();
    }
    client.loop();
    delay(10);
}