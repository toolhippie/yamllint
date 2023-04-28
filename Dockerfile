FROM ghcr.io/dockhippie/alpine:3.17
ENTRYPOINT [""]
ENV PY_COLORS=1

# renovate: datasource=pypi depName=yamllint
ENV YAMLLINT_VERSION=1.31.0

RUN apk update && \
  apk upgrade && \
  apk add python3 python3-dev py3-pip && \
  pip3 install -U yamllint==${YAMLLINT_VERSION} && \
  rm -rf /var/cache/apk/* /root/.cache
