#!/bin/bash
board-flash-q() {
echo " "
echo "----------------------------------------"
echo "What is your board model? Here are some."
echo "----------------------------------------"
sleep .5
echo "Number - Model (Model)"
echo "1 - ESP32-WROOM (ESP32)"
echo "2 - ESP32-S2 (ESP32-S2)"
echo "3 - ESP32-S3 (ESP32-S3)"
echo "4 - ESP32-C3 (ESP32-C3)"
echo "5 - ESP32-C6 (ESP32-C6)"
echo "6 - ESP8266 (ESP8266)"
sleep 5
read -p "Please select your board (1-6)" boardNum
case "$boardNum" in
[1]*)
board-flash-wroom
;;
[2]*)
board-flash-s2
;;
[3]*)
board-flash-s3
;;
[4]*)
board-flash-c3
;;
[5]*)
board-flash-c6
;;
[6]*)
board-flash-esp8266
;;
esac
} 

board-flash-wroom() {
echo "-------------------------------------------"
echo "You have selected: ESP32-WROOM/Generic DKIT"
echo " Do you want a Preview or Release version? "
echo "WARNING! YOU CANNOT RETURN AFTER THIS STEP!"
echo "-------------------------------------------"
read -p "Please select your version (P/R/Q)" mPythonVsn
case "$mPythonVsn" in
[Pp]*)
echo " "
echo "------------------------------------------------"
echo "Getting firmware for ESP32-WROOM/Generic DKIT..."
echo "------------------------------------------------"
wget https://micropython.org/resources/firmware/ESP32_GENERIC-20241216-v1.25.0-preview.117.gee8d8b344.bin
sleep .5
clear
echo "1/2"
esptool.py --chip esp32 --port $boardLocation erase_flash
clear
sleep .5
echo "2/2"
esptool.py --chip esp32 --port $boardLocation --baud 460800 write_flash -z 0x1000 ESP32_GENERIC-20241216-v1.25.0-preview.117.gee8d8b344.bin
;;
[Rr]*)
echo " "
echo "------------------------------------------------"
echo "Getting firmware for ESP32-WROOM/Generic DKIT..."
echo "------------------------------------------------"
echo " "
wget https://micropython.org/resources/firmware/ESP32_GENERIC-20241129-v1.24.1.bin
sleep .5
clear
echo "1/2"
esptool.py --chip esp32 --port $boardLocation erase_flash
clear
sleep .5
echo "2/2"
esptool.py --chip esp32 --port $boardLocation --baud 460800 write_flash -z 0x1000 ESP32_GENERIC-20241129-v1.24.1.bin
;;
*)
echo "Please answer again."
board-flash-wroom
;;
esac
}

board-flash-s2() {
echo "-------------------------------------------"
echo "        You have selected: ESP32-S2"
echo " Do you want a Preview or Release version? "
echo "WARNING! YOU CANNOT RETURN AFTER THIS STEP!"
echo "-------------------------------------------"
echo " "
read -p "Please select your version or quit (P/R/Q)" mPythonVsn
case "$mPythonVsn" in
[Pp]*)
echo " "
echo "--------------------------------"
echo "Getting firmware for ESP32-S2..."
echo "--------------------------------"
echo " "
wget https://micropython.org/resources/firmware/ESP32_GENERIC_S2-20241216-v1.25.0-preview.117.gee8d8b344.bin
sleep .5
clear
echo "1/2"
esptool.py --chip esp32s2 --port $boardLocation erase_flash
clear
sleep .5
echo "2/2"
esptool.py --chip esp32s2 --port $boardLocation --baud 460800 write_flash -z 0x1000 ESP32_GENERIC_S2-20241216-v1.25.0-preview.117.gee8d8b344.bin
;;
[Rr]*)
echo " "
echo "--------------------------------"
echo "Getting firmware for ESP32-S2..."
echo "--------------------------------"
echo " "
wget https://micropython.org/resources/firmware/ESP32_GENERIC_S2-20241129-v1.24.1.bin
sleep .5
clear
echo "1/2"
esptool.py --chip esp32s2 --port $boardLocation erase_flash
clear
sleep .5
echo "2/2"
esptool.py --chip esp32s2 --port $boardLocation --baud 460800 write_flash -z 0x1000 ESP32_GENERIC_S2-20241129-v1.24.1.bin
;;
[Qq]*)
clear
echo " "
echo "---------------------------------------"
echo "Thank you for using ESP32 Flasher Tool."
echo "---------------------------------------"
exit
;;
*)
echo "Please answer again."
board-flash-s2
;;
esac
}

board-flash-s3() {
echo "-------------------------------------------"
echo "        You have selected: ESP32-S3"
echo " Do you want a Preview or Release version? "
echo "WARNING! YOU CANNOT RETURN AFTER THIS STEP!"
echo "-------------------------------------------"
echo " "
read -p "Please select your version or quit (P/R/Q)" mPythonVsn
case "$mPythonVsn" in
[Pp]*)
echo " "
echo "--------------------------------"
echo "Getting firmware for ESP32-S3..."
echo "--------------------------------"
echo " "
wget https://micropython.org/resources/firmware/ESP32_GENERIC_S3-20241216-v1.25.0-preview.117.gee8d8b344.bin
sleep .5
clear
echo "1/2"
esptool.py --chip esp32s3 --port $boardLocation erase_flash
clear
sleep .5
echo "2/2"
esptool.py --chip esp32s3 --port $boardLocation --baud 460800 write_flash -z 0 ESP32_GENERIC_S3-20241216-v1.25.0-preview.117.gee8d8b344.bin
;;
[Rr]*)
echo " "
echo "--------------------------------"
echo "Getting firmware for ESP32-S3..."
echo "--------------------------------"
echo " "
wget https://micropython.org/resources/firmware/ESP32_GENERIC_S3-20241129-v1.24.1.bin
sleep .5
clear
echo "1/2"
esptool.py --chip esp32s3 --port $boardLocation erase_flash
clear
sleep .5
echo "2/2"
esptool.py --chip esp32s3 --port $boardLocation --baud 460800 write_flash -z 0 ESP32_GENERIC_S3-20241129-v1.24.1.bin
;;
[Qq]*)
clear
echo " "
echo "---------------------------------------"
echo "Thank you for using ESP32 Flasher Tool."
echo "---------------------------------------"
echo " "
sleep .8
exit
;;
*)
echo "Please answer again."
board-flash-s3
;;
esac
}

board-flash-c3() {
echo "-------------------------------------------"
echo "        You have selected: ESP32-C3"
echo " Do you want a Preview or Release version? "
echo "WARNING! YOU CANNOT RETURN AFTER THIS STEP!"
echo "-------------------------------------------"
echo " "
read -p "Please select your version or quit (P/R/Q)" mPythonVsn
case "$mPythonVsn" in
[Pp]*)
echo " "
echo "--------------------------------"
echo "Getting firmware for ESP32-C3..."
echo "--------------------------------"
echo " "
wget https://micropython.org/resources/firmware/ESP32_GENERIC_C3-20241216-v1.25.0-preview.117.gee8d8b344.bin
sleep .5
clear
echo "1/2"
esptool.py --chip esp32c3 --port $boardLocation erase_flash
clear
sleep .5
echo "2/2"
esptool.py --chip esp32c3 --port $boardLocation --baud 460800 write_flash -z 0 ESP32_GENERIC_C3-20241216-v1.25.0-preview.117.gee8d8b344.bin
;;
[Rr]*)
echo " "
echo "--------------------------------"
echo "Getting firmware for ESP32-C3..."
echo "--------------------------------"
echo " "
wget https://micropython.org/resources/firmware/ESP32_GENERIC_C3-20241129-v1.24.1.bin
sleep .5
clear
echo "1/2"
esptool.py --chip esp32c3 --port $boardLocation erase_flash
clear
sleep .5
echo "2/2"
esptool.py --chip esp32c3 --port $boardLocation --baud 460800 write_flash -z 0 ESP32_GENERIC_C3-20241129-v1.24.1.bin
;;
[Qq]*)
clear
echo " "
echo "---------------------------------------"
echo "Thank you for using ESP32 Flasher Tool."
echo "---------------------------------------"
echo " "
sleep .8
exit
;;
*)
echo "Please answer again."
board-flash-c3
;;
esac
}

board-flash-c6() {
echo "-------------------------------------------"
echo "        You have selected: ESP32-C6"
echo " Do you want a Preview or Release version? "
echo "WARNING! YOU CANNOT RETURN AFTER THIS STEP!"
echo "-------------------------------------------"
echo " "
read -p "Please select your version or quit (P/R/Q)" mPythonVsn
case "$mPythonVsn" in
[Pp]*)
echo " "
echo "--------------------------------"
echo "Getting firmware for ESP32-C6..."
echo "--------------------------------"
echo " "
wget https://micropython.org/resources/firmware/ESP32_GENERIC_C6-20241216-v1.25.0-preview.117.gee8d8b344.bin
sleep .5
clear
echo "1/2"
esptool.py --chip esp32c6 --port $boardLocation erase_flash
clear
sleep .5
echo "2/2"
esptool.py --chip esp32c6 --port $boardLocation --baud 460800 write_flash -z 0x0 ESP32_GENERIC_C6-20241216-v1.25.0-preview.117.gee8d8b344.bin
;;
[Rr]*)
echo " "
echo "--------------------------------"
echo "Getting firmware for ESP32-C6..."
echo "--------------------------------"
echo " "
wget https://micropython.org/resources/firmware/ESP32_GENERIC_C6-20241129-v1.24.1.bin
sleep .5
clear
echo "1/2"
esptool.py --chip esp32c6 --port $boardLocation erase_flash
clear
sleep .5
echo "2/2"
esptool.py --chip esp32c6 --port $boardLocation --baud 460800 write_flash -z 0x0 ESP32_GENERIC_C6-20241129-v1.24.1.bin
;;
[Qq]*)
clear
echo " "
echo "---------------------------------------"
echo "Thank you for using ESP32 Flasher Tool."
echo "---------------------------------------"
echo " "
sleep .8
exit
;;
*)
echo "Please answer again."
board-flash-c6
;;
esac
}

board-flash-esp8266() {
echo "-------------------------------------------"
echo "    You have selected: ESP8266 No WiFi     "
echo " Do you want a Preview or Release version? "
echo "WARNING! YOU CANNOT RETURN AFTER THIS STEP!"
echo "-------------------------------------------"
echo " "
read -p "Please select your version or quit (P/R/Q)" mPythonVsn
case "$mPythonVsn" in
[Pp]*)
echo " "
echo "-------------------------------"
echo "Getting firmware for ESP8266..."
echo "-------------------------------"
echo " "
wget https://micropython.org/resources/firmware/ESP8266_GENERIC-20241216-v1.25.0-preview.117.gee8d8b344.bin
sleep .5
clear
echo "1/2"
esptool.py --port $boardLocation erase_flash
clear
sleep .5
echo "2/2"
esptool.py --port $boardLocation --baud 460800 write_flash -flash_size=detect 0 ESP8266_GENERIC-20241216-v1.25.0-preview.117.gee8d8b344.bin
;;
[Rr]*)
echo " "
echo "-------------------------------"
echo "Getting firmware for ESP8266..."
echo "-------------------------------"
echo " "
wget https://micropython.org/resources/firmware/ESP8266_GENERIC-20241129-v1.24.1.bin
sleep .5
clear
echo "1/2"
esptool.py --port $boardLocation erase_flash
clear
sleep .5
echo "2/2"
esptool.py --port $boardLocation --baud 460800 write_flash --flash_size=detect 0 ESP8266_GENERIC-20241129-v1.24.1.bin
echo " "
echo "-----------------------"
echo "Finished with flashing!"
exit-q
;;
[Qq]*)
clear
echo " "
echo "---------------------------------------"
echo "Thank you for using ESP32 Flasher Tool."
echo "---------------------------------------"
echo " "
sleep .3
exit
;;
*)
echo "Please answer again."
board-flash-esp8266
;;
esac
}

startingscript() {
clear
echo " "
echo " "
echo " "
echo "----------------------------------------"
echo "  Script 1 MicroPython ESP32 MultiTool  "
echo "----------------------------------------"
echo " "
echo " "
echo " "
sleep .5
echo " "
echo " "
echo "-----------------"
echo "Loading script..."
echo "-----------------"
sleep 2
clear
echo "-----------------------------------------"
echo "Loaded. Listing USB devices. Remember it!"
echo "-----------------------------------------"
}
sleep .5
echo "..."
startingscript

devicepresentqs() {
ls /dev/ttyUSB*
sleep 5
echo " "
echo " "
echo " "
echo "-----------------------------"
read -p "Did you see your device? (Y/N):" deviceIsPresent
echo "-----------------------------"
sleep .5
case "$deviceIsPresent" in
[Yy]*)
echo " "
read -p "Enter it below:" boardLocation
echo "-------------------------------------------------"
echo "Stage 2 - Getting board model and downloading FW."
echo "-------------------------------------------------"
echo " "
board-flash-q
;;
[Nn]*)
echo " "
echo "------------------------------------------------------------------"
echo "Is it plugged in? Hold BOOT button when booting. Resuming in 5s..."
echo "------------------------------------------------------------------"
echo " "
sleep 5
echo "Showing!"
sleep .5
udevadm info
devicepresentqs
;;
*)
echo "Please answer again."
devicepresentqs
;;
esac
}
