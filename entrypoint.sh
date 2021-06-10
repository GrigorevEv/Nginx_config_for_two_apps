#!/bin/bash
set -e

sed -i "s|{{NGINX_HOST_1}}|$NGINX_HOST_1|;\
        s|{{NGINX_PROXY_1}}|$NGINX_PROXY_1|;\
        s|{{NGINX_STATIC_1}}|$NGINX_STATIC_1|;\
        s|{{NGINX_HOST_2}}|$NGINX_HOST_2|;\
        s|{{NGINX_PROXY_2}}|$NGINX_PROXY_2|;\
        s|{{NGINX_STATIC_2}}|$NGINX_STATIC_2|" \
	/etc/nginx/conf.d/default.conf
cat /etc/nginx/conf.d/default.conf
exec "$@"
