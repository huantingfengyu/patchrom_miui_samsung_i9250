#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 7270400 bbc3de6c28eee9b4abc01e83afca84e40c9a932c 4921344 ad6d20b9932ed83fb9cbe63637156f05466fdc75
fi

if ! applypatch -c EMMC:/dev/block/platform/omap/omap_hsmmc.0/by-name/recovery:7270400:bbc3de6c28eee9b4abc01e83afca84e40c9a932c; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/omap/omap_hsmmc.0/by-name/boot:4921344:ad6d20b9932ed83fb9cbe63637156f05466fdc75 EMMC:/dev/block/platform/omap/omap_hsmmc.0/by-name/recovery bbc3de6c28eee9b4abc01e83afca84e40c9a932c 7270400 ad6d20b9932ed83fb9cbe63637156f05466fdc75:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
