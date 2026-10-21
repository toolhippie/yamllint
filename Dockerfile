FROM ghcr.io/dockhippie/alpine:3.23@sha256:b2f0d0b2460a72855e02bbb1c62bd1b6387c70da93984d4c8ea3e85f5dbfd4a8
ENTRYPOINT [""]
ENV PY_COLORS=1

# renovate: datasource=pypi depName=yamllint
ENV YAMLLINT_VERSION=1.38.0

RUN apk update && \
  apk upgrade && \
  apk add python3 python3-dev py3-pip && \
  pip3 install --break-system-packages -U yamllint==${YAMLLINT_VERSION} && \
  rm -rf /var/cache/apk/* /root/.cache
