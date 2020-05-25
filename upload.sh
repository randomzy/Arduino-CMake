input="./build/main"
ext=".hex"
hex="${input}${ext}"
echo ${hex}

avr-objcopy -O ihex -R .eeprom $input $hex
avrdude -v -V -c arduino -P /dev/ttyACM0 -p m328p -U flash:w:${hex}
rm ${hex}