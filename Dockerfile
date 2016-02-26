FROM alpine:3.3
MAINTAINER tgraf@noironetworks.com

RUN \
	apk add --update bash iproute2 iputils tcpdump && \
	rm -rf /var/cache/apk/*

CMD ["/bin/bash"]
