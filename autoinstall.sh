npm install -g homebridge homebridge-config-ui-x homebridge-miot
hb-service install --user root -U /root/homebridge
echo '#!/bin/sh /etc/rc.common

START=99

start(){
homebridge -U /root/homebridge >> /root/homebridge/last.log
}
' >> /etc/init.d/homebridge
chmod +wrx /etc/init.d/homebridge
ln -s /etc/init.d/homebridge /etc/rc.d/S98homebridge
/etc/rc.d/S98homebridge enable
reboot
