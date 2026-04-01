FROM ghcr.io/dockhippie/alpine:3.23@sha256:0d8b80804c02a0f215e5b26f663a643a98e7789c83ec4a6c8220a861642d5b4c
ENTRYPOINT [""]
ENV PY_COLORS=1

# renovate: datasource=pypi depName=yamllint
ENV YAMLLINT_VERSION=1.38.0

RUN apk update && \
  apk upgrade && \
  apk add python3 python3-dev py3-pip && \
  pip3 install --break-system-packages -U yamllint==${YAMLLINT_VERSION} && \
  rm -rf /var/cache/apk/* /root/.cache
