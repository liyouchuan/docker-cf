#!/usr/bin/env bash

set -x

#
# build behind corporate firewall - http_proxy host needs to be ip address
#[ -z "$http_proxy" ] && proxy="" || proxy="--build-arg http_proxy=$http_proxy --build-arg https_proxy=$http_proxy"

#
docker build $@ --rm $proxy -t dhnt/cf .

##