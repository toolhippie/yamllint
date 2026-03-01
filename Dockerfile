FROM ghcr.io/dockhippie/alpine:3.23@sha256:ecf1af2fb0a1dd8a7c5db631a254ac3b77fcb53c51b18ab7bc8548699afad289
ENTRYPOINT [""]
ENV PY_COLORS=1

# renovate: datasource=pypi depName=yamllint
ENV YAMLLINT_VERSION=1.38.0

RUN apk update && \
  apk upgrade && \
  apk add python3 python3-dev py3-pip && \
  pip3 install --break-system-packages -U yamllint==${YAMLLINT_VERSION} && \
  rm -rf /var/cache/apk/* /root/.cache
