export CUR_DIR=$(cd "$(dirname "$0")"; pwd)
docker run \
	--name ssserver \
	--env mode=server \
	-d --rm \
	-p 8388:8388 \
	-v $CUR_DIR:/etc/shadowsocks \
	prince/shadowsocks:latest
