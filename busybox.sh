#!/bin/sh
set -x

whoami
ip addr
netstat -an
df -h
free
ps -ef
cat /proc/cpuinfo
cat /proc/meminfo
