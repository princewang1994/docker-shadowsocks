if [ $mode == "server" ];
then
	/usr/local/bin/ssserver -c /etc/shadowsocks/ssserver.conf
else
	/usr/local/bin/sslocal -c /etc/shadowsocks/sslocal.conf
fi
