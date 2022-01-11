# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

# compile C with /Users/user/.platformio/packages/toolchain-xtensa32/bin/xtensa-esp32-elf-gcc
# compile CXX with /Users/user/.platformio/packages/toolchain-xtensa32/bin/xtensa-esp32-elf-g++
C_DEFINES = -DARDUINO=10805 -DARDUINO_ARCH_ESP32 -DARDUINO_BOARD="\"Espressif ESP-WROVER-KIT\"" -DARDUINO_ESP32_DEV -DARDUINO_VARIANT=\"esp32\" -DBOARD_HAS_PSRAM -DESP32 -DESP_PLATFORM -DF_CPU=240000000L -DHAVE_CONFIG_H -DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\" -DPLATFORMIO=50204

C_INCLUDES = -I/Users/user/Documents/projects/IoT/Esp32-IR/include -I/Users/user/Documents/projects/IoT/Esp32-IR/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/Wire/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/Update/src -I/Users/user/Documents/projects/IoT/Esp32-IR/.pio/libdeps/esp-wrover-kit/ESPAsyncWebServer-esphome/src -I/Users/user/Documents/projects/IoT/Esp32-IR/.pio/libdeps/esp-wrover-kit/AsyncElegantOTA/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/WiFi/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/FS/src -I/Users/user/Documents/projects/IoT/Esp32-IR/.pio/libdeps/esp-wrover-kit/AsyncTCP-esphome/src -I/Users/user/Documents/projects/IoT/Esp32-IR/.pio/libdeps/esp-wrover-kit/AsyncTCP/src -I/Users/user/Documents/projects/IoT/Esp32-IR/.pio/libdeps/esp-wrover-kit/ArduinoJson/src -I/Users/user/Documents/projects/IoT/Esp32-IR/.pio/libdeps/esp-wrover-kit/PubSubClient/src -I/Users/user/Documents/projects/IoT/Esp32-IR/.pio/libdeps/esp-wrover-kit/IRremote/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/config -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/app_trace -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/app_update -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/asio -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/bootloader_support -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/bt -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/coap -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/console -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/driver -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/efuse -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/esp-tls -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/esp32 -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/esp_adc_cal -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/esp_event -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/esp_http_client -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/esp_http_server -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/esp_https_ota -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/esp_https_server -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/esp_ringbuf -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/esp_websocket_client -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/espcoredump -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/ethernet -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/expat -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/fatfs -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/freemodbus -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/freertos -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/heap -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/idf_test -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/jsmn -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/json -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/libsodium -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/log -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/lwip -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/mbedtls -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/mdns -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/micro-ecc -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/mqtt -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/newlib -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/nghttp -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/nvs_flash -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/openssl -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/protobuf-c -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/protocomm -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/pthread -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/sdmmc -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/smartconfig_ack -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/soc -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/spi_flash -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/spiffs -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/tcp_transport -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/tcpip_adapter -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/ulp -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/unity -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/vfs -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/wear_levelling -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/wifi_provisioning -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/wpa_supplicant -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/xtensa-debug-module -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/esp-face -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/esp32-camera -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/fb_gfx -I/Users/user/.platformio/packages/framework-arduinoespressif32/cores/esp32 -I/Users/user/.platformio/packages/framework-arduinoespressif32/variants/esp32 -I/Users/user/Documents/projects/IoT/Esp32-IR/.pio/libdeps/esp-wrover-kit/AsyncElegantOTA@2.2.5/src -I/Users/user/Documents/projects/IoT/Esp32-IR/.pio/libdeps/esp-wrover-kit/IRremote@2.9.0/src -I/Users/user/Documents/projects/IoT/Esp32-IR/.pio/libdeps/esp-wrover-kit/IRremoteESP8266/src -I/Users/user/Documents/projects/IoT/Esp32-IR/.pio/libdeps/esp-wrover-kit/WiFiManager -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/ArduinoOTA/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/AsyncUDP/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/AzureIoT/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/BLE/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/BluetoothSerial/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/DNSServer/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/EEPROM/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/ESP32/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/ESPmDNS/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/FFat/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/HTTPClient/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/HTTPUpdate/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/HTTPUpdateServer/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/NetBIOS/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/Preferences/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/SD/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/SD_MMC/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/SPI/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/SPIFFS/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/SimpleBLE/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/Ticker/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/WebServer/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/WiFiClientSecure/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/WiFiProv/src -I/Users/user/.platformio/packages/toolchain-xtensa32/xtensa-esp32-elf/include/c++/5.2.0 -I/Users/user/.platformio/packages/toolchain-xtensa32/xtensa-esp32-elf/include/c++/5.2.0/xtensa-esp32-elf -I/Users/user/.platformio/packages/toolchain-xtensa32/lib/gcc/xtensa-esp32-elf/5.2.0/include -I/Users/user/.platformio/packages/toolchain-xtensa32/lib/gcc/xtensa-esp32-elf/5.2.0/include-fixed -I/Users/user/.platformio/packages/toolchain-xtensa32/xtensa-esp32-elf/include -I/Users/user/.platformio/packages/tool-unity

C_FLAGS = -std=gnu99 -Wno-old-style-declaration -mfix-esp32-psram-cache-issue -Os -g3 -Wall -nostdlib -Wpointer-arith -Wno-error=unused-but-set-variable -Wno-error=unused-variable -mlongcalls -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -Wno-error=deprecated-declarations -Wno-error=unused-function -Wno-unused-parameter -Wno-sign-compare -fstack-protector -fexceptions -Werror=reorder -std=gnu99

CXX_DEFINES = -DARDUINO=10805 -DARDUINO_ARCH_ESP32 -DARDUINO_BOARD="\"Espressif ESP-WROVER-KIT\"" -DARDUINO_ESP32_DEV -DARDUINO_VARIANT=\"esp32\" -DBOARD_HAS_PSRAM -DESP32 -DESP_PLATFORM -DF_CPU=240000000L -DHAVE_CONFIG_H -DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\" -DPLATFORMIO=50204

CXX_INCLUDES = -I/Users/user/Documents/projects/IoT/Esp32-IR/include -I/Users/user/Documents/projects/IoT/Esp32-IR/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/Wire/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/Update/src -I/Users/user/Documents/projects/IoT/Esp32-IR/.pio/libdeps/esp-wrover-kit/ESPAsyncWebServer-esphome/src -I/Users/user/Documents/projects/IoT/Esp32-IR/.pio/libdeps/esp-wrover-kit/AsyncElegantOTA/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/WiFi/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/FS/src -I/Users/user/Documents/projects/IoT/Esp32-IR/.pio/libdeps/esp-wrover-kit/AsyncTCP-esphome/src -I/Users/user/Documents/projects/IoT/Esp32-IR/.pio/libdeps/esp-wrover-kit/AsyncTCP/src -I/Users/user/Documents/projects/IoT/Esp32-IR/.pio/libdeps/esp-wrover-kit/ArduinoJson/src -I/Users/user/Documents/projects/IoT/Esp32-IR/.pio/libdeps/esp-wrover-kit/PubSubClient/src -I/Users/user/Documents/projects/IoT/Esp32-IR/.pio/libdeps/esp-wrover-kit/IRremote/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/config -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/app_trace -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/app_update -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/asio -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/bootloader_support -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/bt -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/coap -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/console -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/driver -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/efuse -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/esp-tls -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/esp32 -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/esp_adc_cal -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/esp_event -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/esp_http_client -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/esp_http_server -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/esp_https_ota -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/esp_https_server -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/esp_ringbuf -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/esp_websocket_client -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/espcoredump -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/ethernet -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/expat -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/fatfs -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/freemodbus -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/freertos -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/heap -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/idf_test -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/jsmn -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/json -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/libsodium -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/log -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/lwip -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/mbedtls -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/mdns -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/micro-ecc -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/mqtt -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/newlib -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/nghttp -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/nvs_flash -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/openssl -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/protobuf-c -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/protocomm -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/pthread -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/sdmmc -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/smartconfig_ack -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/soc -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/spi_flash -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/spiffs -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/tcp_transport -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/tcpip_adapter -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/ulp -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/unity -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/vfs -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/wear_levelling -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/wifi_provisioning -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/wpa_supplicant -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/xtensa-debug-module -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/esp-face -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/esp32-camera -I/Users/user/.platformio/packages/framework-arduinoespressif32/tools/sdk/include/fb_gfx -I/Users/user/.platformio/packages/framework-arduinoespressif32/cores/esp32 -I/Users/user/.platformio/packages/framework-arduinoespressif32/variants/esp32 -I/Users/user/Documents/projects/IoT/Esp32-IR/.pio/libdeps/esp-wrover-kit/AsyncElegantOTA@2.2.5/src -I/Users/user/Documents/projects/IoT/Esp32-IR/.pio/libdeps/esp-wrover-kit/IRremote@2.9.0/src -I/Users/user/Documents/projects/IoT/Esp32-IR/.pio/libdeps/esp-wrover-kit/IRremoteESP8266/src -I/Users/user/Documents/projects/IoT/Esp32-IR/.pio/libdeps/esp-wrover-kit/WiFiManager -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/ArduinoOTA/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/AsyncUDP/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/AzureIoT/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/BLE/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/BluetoothSerial/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/DNSServer/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/EEPROM/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/ESP32/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/ESPmDNS/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/FFat/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/HTTPClient/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/HTTPUpdate/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/HTTPUpdateServer/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/NetBIOS/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/Preferences/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/SD/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/SD_MMC/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/SPI/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/SPIFFS/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/SimpleBLE/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/Ticker/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/WebServer/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/WiFiClientSecure/src -I/Users/user/.platformio/packages/framework-arduinoespressif32/libraries/WiFiProv/src -I/Users/user/.platformio/packages/toolchain-xtensa32/xtensa-esp32-elf/include/c++/5.2.0 -I/Users/user/.platformio/packages/toolchain-xtensa32/xtensa-esp32-elf/include/c++/5.2.0/xtensa-esp32-elf -I/Users/user/.platformio/packages/toolchain-xtensa32/lib/gcc/xtensa-esp32-elf/5.2.0/include -I/Users/user/.platformio/packages/toolchain-xtensa32/lib/gcc/xtensa-esp32-elf/5.2.0/include-fixed -I/Users/user/.platformio/packages/toolchain-xtensa32/xtensa-esp32-elf/include -I/Users/user/.platformio/packages/tool-unity

CXX_FLAGS = -fno-rtti -fno-exceptions -std=gnu++11 -mfix-esp32-psram-cache-issue -Os -g3 -Wall -nostdlib -Wpointer-arith -Wno-error=unused-but-set-variable -Wno-error=unused-variable -mlongcalls -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -Wno-error=deprecated-declarations -Wno-error=unused-function -Wno-unused-parameter -Wno-sign-compare -fstack-protector -fexceptions -Werror=reorder -std=gnu++11

