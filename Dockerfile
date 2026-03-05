FROM ghcr.io/dockhippie/alpine:3.23@sha256:c2218a341d02631f8fe99633a9daef146324b9a0b8a1269c2410446f04034319
ENTRYPOINT [""]
ENV PY_COLORS=1

# renovate: datasource=pypi depName=yamllint
ENV YAMLLINT_VERSION=1.38.0

RUN apk update && \
  apk upgrade && \
  apk add python3 python3-dev py3-pip && \
  pip3 install --break-system-packages -U yamllint==${YAMLLINT_VERSION} && \
  rm -rf /var/cache/apk/* /root/.cache
