#!/system/bin/sh

echo 1 > /sys/class/huami/sensor_hub/force_upgrade
sleep 5
echo 1 > /sys/class/huami/sensor_hub/gps_upgrade_fw
cat  /sys/class/huami/sensor_hub/gps_upgrade_fw
