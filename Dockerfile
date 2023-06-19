FROM alpine:3.18

ENV OPENVPN_VERSION=2.6.5 \
	OPENVPN_ALPINE_BUILD=r0

RUN set -ex; \
	apk add --no-cache --no-progress openvpn==${OPENVPN_VERSION}-${OPENVPN_ALPINE_BUILD}; \
	rm -rf /etc/openvpn;

ENTRYPOINT ["openvpn"]
