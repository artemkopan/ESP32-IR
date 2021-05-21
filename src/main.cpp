#include <Arduino.h>
#include "IRremote.h"
#include "wifi_info.h"
#include "WiFi.h" // ESP32 WiFi include
#include <PubSubClient.h>
#include <Wire.h>

#include "esp_log.h"

#define RECEIVER_PIN 5
#define SENDER_PIN 4

WiFiClient espClient;
PubSubClient client(espClient);

#define mqtt_server "broker.emqx.io"
#define ir_sending_topic "artem_k_ir_sending_topic"

void callback(char *topic, byte *payload, unsigned int length) {
    Serial.print("Message arrived in topic: ");
    Serial.println(topic);

    Serial.print("Message:");
    for (int i = 0; i < length; i++) {
        Serial.print((char) payload[i]);
    }

    Serial.println();
    Serial.println("-----------------------");
}

void setup_wifi() {
    delay(10);
    WiFi.disconnect(true);
    delay(100);
    WiFiClass::mode(WIFI_STA);

    // Set your Static IP address
    IPAddress local_IP(192, 168, 1, 184);
// Set your Gateway IP address
    IPAddress gateway(192, 168, 1, 1);
    IPAddress subnet(255, 255, 0, 0);

    // Configures static IP address
    if (!WiFi.config(local_IP, gateway, subnet)) {
        Serial.println("STA Failed to configure");
    }

    WiFi.begin(ssid, pass);
    WiFi.setAutoConnect(true);
    WiFi.setAutoReconnect(true);

    while (WiFiClass::status() != WL_CONNECTED) {
        delay(500);
//        Serial.print("Wifi status: ");
//        Serial.print(WiFiClass::status());
    }
    Serial.println("Wifi status:");
    Serial.print(WiFiClass::status());
}

void reconnect() {
    // Loop until we're reconnected
    while (!client.connected()) {
        Serial.print("Attempting MQTT connection...");
        if (client.connect("esp32Ir")) {
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

//    serialBT.begin("ESP32"); // Может придумать своё имя

    setup_wifi();

//    client.setServer(mqtt_server, 1883);
}

void loop() {
//    if (IrReceiver.decode()) {
//        IrReceiver.printIRResultShort(&Serial);
//        IrReceiver.resume(); // Continue receiving
//    }
//    IrSender.sendNEC(0xE78,)

//    if (serialBT.available()) {
//        char incomingChar = serialBT.read();
//        Serial.write(incomingChar);
//
//        // При символе "1" включаем светодиод
//        if (incomingChar == '1')
//        {
//            Serial.println("On");
//        }
//        // При символе "0" выключаем светодиод
//        if ( incomingChar == '0')
//        {
//            Serial.println("Off");
//        }
//    }

//    if (!client.connected()) {
//        reconnect();
//    }
//    client.loop();

    delay(1000);
}