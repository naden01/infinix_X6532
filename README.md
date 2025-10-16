# Twrp Tree For Infinix Smart 9 (X6532)

# Checks
Blocking checks
- [✔] Correct screen/recovery size
- [✔] Working Touch, screen
- [✔] Backup to internal/microSD
- [✔] Restore from internal/microSD
- [✔] reboot to system
- [✔] ADB

Medium checks
- [✔] update.zip sideload
- [✔] UI colors (red/blue inversions)
- [✔] Screen goes off and on
- [✔] F2FS/EXT4 Support, exFAT/NTFS where supported
- [✔] all important partitions listed in mount/backup lists
- [✔] backup/restore to/from external storage
- [?] backup/restore to/from adb (https://gerrit.omnirom.org/#/c/15943/)
- [✔] decrypt /data
- [✔] Correct date

Minor checks
- [✔] MTP export
- [✔] reboot to bootloader
- [✔] reboot to recovery
- [✔] poweroff
- [✔] battery level
- [✔] temperature
- [✔] encrypted backups
- [X] input devices via USB (USB-OTG) - keyboard and mouse and storage
- [✔] USB mass storage export
- [✔] set brightness
- [X] vibrate
- [✔] screenshot
- [✔] partition SD card
- [✔] Fastbootd
