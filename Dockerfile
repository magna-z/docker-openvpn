FROM alpine:3.23

ENV OPENVPN_VERSION=2.6.16 OPENVPN_ALPINE_BUILD=r0

RUN set -ex; \
	apk add --no-cache --no-progress openvpn==${OPENVPN_VERSION}-${OPENVPN_ALPINE_BUILD}; \
	rm -rf /etc/openvpn;

ENTRYPOINT ["openvpn"]
