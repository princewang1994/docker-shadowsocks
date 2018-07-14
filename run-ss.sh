docker run \
	--name ss \
	-d --rm \
	-p 8388:8388 \
	-v /home/prince/docker-shadowsocks:/etc/shadowsocks \
	shadowsocks:latest
