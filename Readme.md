- `raspi-config`
  - turn off ssh over serial
  - enable uart on serial
  - on rpi3b disable bt
    - `dtoverlay=disable-bt` in /boot/config.txt
- enable pps-gpio
  - `dtoverlay=pps-gpio,gpiopin=18` in /boot/config.txt


