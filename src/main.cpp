#include <Arduino.h>
#include "IRremote.h"
#include "wifi_info.h"
#include "WiFi.h" // ESP32 WiFi include
#include <PubSubClient.h>
#include <Wire.h>
#include "esp_log.h"
#include <ArduinoJson.h>

#define RECEIVER_PIN 26
#define SENDER_PIN 4

WiFiClient espClient;
PubSubClient client(espClient);

#define mqtt_server "192.168.1.77"
#define mqtt_username "admin"
#define mqtt_pass "274733"
#define ir_sending_topic "ir_sending_topic"

const char *type_rc6 = "rc6";
const char *type_nec = "nec";

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

    const char *type = doc["type"];

    uint8_t address = doc["address"];
    uint8_t command = doc["command"];
    uint_fast8_t repeats = doc["repeats"];
    bool automaticToggle = doc["automaticToggle"];

    Serial.println();
    Serial.print("Json parsed");

    if (strcmp(type, type_rc6) == 0) {
        Serial.print("Send RC6");
        IrSender.sendRC6(address, command, repeats, automaticToggle);
    } else if (strcmp(type, type_nec) == 0) {
        Serial.print("Send NEC");
        IrSender.sendNEC(address, command, repeats, automaticToggle);
    } else {
        Serial.print("Unknown type: ");
        Serial.print(type);
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

void reconnect() {
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
}

void loop() {
    if (IrReceiver.decode()) {
        IrReceiver.printIRResultShort(&Serial);
        IrReceiver.resume(); // Continue receiving
    }
    if (!client.connected()) {
        reconnect();
    }
    client.loop();
    delay(10);
}