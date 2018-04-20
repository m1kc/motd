#!/bin/bash

export LANG=C  # For consistency across languages; feel free to comment that out

source /etc/os-release
echo ""
echo "Welcome! This is ${PRETTY_NAME} ($(uname -o) $(uname -r) $(uname -m))."
#echo ""

echo "* Home: ${HOME_URL}"
echo "* Support: ${SUPPORT_URL}"
echo ""

echo "$(uptime)"
echo ""

#echo " Filesystem usage:"
df -h -x tmpfs -x devtmpfs -l | sed 's/^/   /g' | sed 's/  Filesystem/Filesystem  /g'
echo ""

echo " IP addresses:"
ip addr | grep 'inet ' | sed 's/^ //g' | grep -v '127.0.0.1' #| grep -v '::1/128'
echo ""

echo " Last logins:"
last -n4 -a -i | head -n4 | sed 's/^/   /g'
