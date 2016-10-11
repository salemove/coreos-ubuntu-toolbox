FROM ubuntu:16.04
MAINTAINER SaleMove Techmovers <techmovers@salemove.com>

RUN apt-get update \
 && apt-get install --no-install-recommends -y \
    htop sysstat bwm-ng netcat-traditional tcpdump net-tools dnsutils iotop \
    atop psmisc iftop vim-tiny lsof strace curl conntrack iputils-ping less \
 && apt-get clean all \
 && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
