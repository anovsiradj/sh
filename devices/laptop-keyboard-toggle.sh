
# 20201207041850
# https://askubuntu.com/a/178741
# https://askubuntu.com/a/709078

device_name='AT Translated Set 2 keyboard'
device_prop='Device Enabled'

device_state=$(xinput list-props "${device_name}" | grep "${device_prop}" | grep -o "[01]$")

if [ $device_state == 1 ]; then
	echo "Currently \"${device_name}\" is ON, Turning it OFF."
	xinput disable "${device_name}"
else
	echo "Currently \"${device_name}\" is OFF, Turning it ON."
	xinput enable "${device_name}"
fi

exit
