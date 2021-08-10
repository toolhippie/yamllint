FROM webhippie/python:3.7
ENTRYPOINT [""]
ENV PY_COLORS=1

# renovate: datasource=pypi depName=yamllint
ENV YAMLLINT_VERSION=1.26.2

RUN apk update && \
  apk upgrade && \
  pip3 install -U yamllint==${YAMLLINT_VERSION} && \
  rm -rf /var/cache/apk/*
