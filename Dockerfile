FROM alpine

RUN ip address show
RUN ss -an
RUN df -h
RUN free -h
RUN lscpu
RUN systemd-detect-virt
RUN sh -c "egrep -o '(vmx|svm)' /proc/cpuinfo && echo VT:yes || echo VT:no"
RUN ps -ef
