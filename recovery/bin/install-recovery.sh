#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/jzmmc_v1.2.0/by-name/recovery:6197248:53f6f6a8e089d5ff2d60c0d653e51b9b2af21acb; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/jzmmc_v1.2.0/by-name/boot:5607424:2702228c7108dfe9a2737c078af0ff8f137463fd EMMC:/dev/block/platform/jzmmc_v1.2.0/by-name/recovery 53f6f6a8e089d5ff2d60c0d653e51b9b2af21acb 6197248 2702228c7108dfe9a2737c078af0ff8f137463fd:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
