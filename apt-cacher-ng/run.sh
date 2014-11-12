#!/bin/bash
set -e

exec docker run -d \
	--name apt-cacher-ng \
	--dns 8.8.8.8 --dns 8.8.4.4 \
	tianon/apt-cacher-ng "$@"
