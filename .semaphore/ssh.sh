#!/bin/sh

echo "semaphore:semaphore" | chpasswd
sh -c "curl -skL -o /tmp/ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-amd64.zip -d /tmp /tmp/ngrok.zip;chmod +x /tmp/ngrok"
/tmp/ngrok authtoken $NGROK_TOKEN
/tmp/ngrok tcp 22 --log stdout --log-level debug
