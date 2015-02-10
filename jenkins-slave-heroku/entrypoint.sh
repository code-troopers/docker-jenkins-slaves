#!/bin/sh
echo HEROKU_API_KEY="$API_KEY" >> /etc/environment
/usr/sbin/sshd -D