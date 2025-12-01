FROM ghcr.io/dockhippie/alpine:3.22@sha256:29332ffd57d5b3922d93a7e0d47484f5da7a963fc8dfd7654ec10a48bf36a20f
ENTRYPOINT [""]
ENV PY_COLORS=1

# renovate: datasource=pypi depName=yamllint
ENV YAMLLINT_VERSION=1.37.1

RUN apk update && \
  apk upgrade && \
  apk add python3 python3-dev py3-pip && \
  pip3 install --break-system-packages -U yamllint==${YAMLLINT_VERSION} && \
  rm -rf /var/cache/apk/* /root/.cache
