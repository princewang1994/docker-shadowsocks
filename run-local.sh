export CUR_DIR=$(cd "$(dirname "$0")"; pwd)
set -e

local_conf=$1

if [ $local_conf ]; then
	cp -v $local_conf $CUR_DIR/sslocal.conf
fi

docker run \
	--name sslocal \
	--env mode="local" \
	-d --rm \
	-p 1080:1080 \
	-v $CUR_DIR:/etc/shadowsocks \
	prince/shadowsocks:latest
