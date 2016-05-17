function idevs() {
  for i in `idevice_id -l`
  do
	echo "udid:    ${i}    $(ideviceinfo | grep DeviceName)"
  done
}

function iinst() {
  ideviceinstaller -u $1 -i $2
}

function ilog() {
 idevicesyslog -u $1
}
