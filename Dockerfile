FROM ghcr.io/dockhippie/alpine:3.23@sha256:4e6a8cfc8c6550ca615c09eb1d667b3ee884a827a97965a2e9f5e5142dc9e05a
ENTRYPOINT [""]
ENV PY_COLORS=1

# renovate: datasource=pypi depName=yamllint
ENV YAMLLINT_VERSION=1.37.1

RUN apk update && \
  apk upgrade && \
  apk add python3 python3-dev py3-pip && \
  pip3 install --break-system-packages -U yamllint==${YAMLLINT_VERSION} && \
  rm -rf /var/cache/apk/* /root/.cache
