FROM fedora:23
MAINTAINER tgraf@tgraf.ch

RUN \
	dnf -y install curl iproute iputils tcpdump strace ethtool gcc git && \
	curl -LO ftp://ftp.netperf.org/netperf/netperf-2.7.0.tar.gz && \
	tar -xzf netperf-2.7.0.tar.gz  && \
	cd netperf-2.7.0 && ./configure --prefix=/usr && make && make install && \
	rm -rf netperf-2.7.0 netperf-2.7.0.tar.gz && \
	rm -f /usr/share/info/netperf.info && \
	strip -s /usr/bin/netperf /usr/bin/netserver && \
	dnf clean all

CMD ["/bin/bash"]
