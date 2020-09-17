# backlight_gadget
A gadget for backlight adjustment when encountered an ACPI BIOS ERROR(bug) on Ubuntu 19.0

## Prerequisites
**You need to have the right of accessing as root!**
This script adjusts backlight by modifying /sys/class/back_

```bash
$ git clone https://github.com/HinWaei/backlight_gadget
$ cd backlight_gadget && chmod +x ./backlight_gadget.sh
$ sudo su
...(Enter your password)
\# ./backlight_gadget.sh
```
