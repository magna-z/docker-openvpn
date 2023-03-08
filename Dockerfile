FROM alpine:3.17

ENV OPENVPN_VERSION=2.5.8 \
	OPENVPN_ALPINE_BUILD=r0

RUN set -ex; \
	apk add --no-cache --no-progress openvpn==${OPENVPN_VERSION}-${OPENVPN_ALPINE_BUILD}; \
	rm -rf /etc/openvpn;

ENTRYPOINT ["openvpn"]
