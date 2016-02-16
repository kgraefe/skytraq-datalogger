You can also connect the data logger via bluetooth. However, I have not been able to configure the data logger or download tracks via bluetooth.

  1. Determine the device's MAC address: hcitool scan
  1. rfcomm connect 0 MAC-address
  1. Now you can talk to the data logger via /dev/rfcomm0, for example get the NMEA data stream: cat /dev/rfcomm0

## output of hcitool info ##
```
BD Address:  00:0B:0D:00:01:CD
Device Name: DATALOGG
LMP Version: 2.0 (0x3) LMP Subversion: 0xbb8
Manufacturer: Silicon Wave (11)
Features: 0xff 0xff 0x05 0x38 0x18 0x18 0x00 0x00
  <3-slot packets> <5-slot packets>
```