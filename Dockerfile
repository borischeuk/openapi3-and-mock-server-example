FROM 'centos:centos7'

WORKDIR /opt

COPY ./web_deploy/openapi.yaml ./

RUN curl -LOk https://github.com/danielgtaylor/apisprout/releases/download/v1.1.1/apisprout-v1.1.1-linux.tar.xz && \
    tar xvf apisprout-v1.1.1-linux.tar.xz

CMD ./apisprout --validate-request openapi.yaml