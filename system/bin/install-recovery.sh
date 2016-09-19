#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/155a0000.ufs/by-name/RECOVERY:39997440:debeb9de613597ab8c5a02d11725abaa4ddaa2fb; then
  applypatch EMMC:/dev/block/platform/155a0000.ufs/by-name/BOOT:37691392:10fb5f8a69c9bc2635f61b2bf45d6330fd648e77 EMMC:/dev/block/platform/155a0000.ufs/by-name/RECOVERY debeb9de613597ab8c5a02d11725abaa4ddaa2fb 39997440 10fb5f8a69c9bc2635f61b2bf45d6330fd648e77:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
