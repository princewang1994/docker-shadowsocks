export CUR_DIR=$(cd "$(dirname "$0")"; pwd)
docker run \
	--name sslocal \
	--env mode="local" \
	-d --rm \
	-p 1080:1080 \
	-v $CUR_DIR:/etc/shadowsocks \
	prince/shadowsocks:latest
