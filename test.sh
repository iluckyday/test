#!/bin/sh
set -ex

whoami
sudo -l
ip address show
ss -an
df -h
free -h
lscpu
systemd-detect-virt
sh -c "egrep -o '(vmx|svm)' /proc/cpuinfo && echo VT:yes || echo VT:no"
ps -ef
