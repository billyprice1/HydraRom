#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/155a0000.ufs/by-name/RECOVERY:39997440:004c815c3854ab17c4a24bb30e03d1dee77edd85; then
  applypatch EMMC:/dev/block/platform/155a0000.ufs/by-name/BOOT:37691392:8dc05fe15b10b074bd0a023ec3e5d1e9a2321eda EMMC:/dev/block/platform/155a0000.ufs/by-name/RECOVERY 004c815c3854ab17c4a24bb30e03d1dee77edd85 39997440 8dc05fe15b10b074bd0a023ec3e5d1e9a2321eda:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
