FROM alpine

RUN ip address show
RUN netstat -an
RUN df -h
RUN free -m
RUN cat /proc/cpuinfo || true
RUN sh -c "egrep -o '(vmx|svm)' /proc/cpuinfo && echo VT:yes || echo VT:no"
RUN ps -ef
