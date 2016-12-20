FROM fedora:23
MAINTAINER tgraf@tgraf.ch

RUN \
	dnf -y install curl iproute iputils tcpdump strace && \
	dnf clean all

CMD ["/bin/bash"]
