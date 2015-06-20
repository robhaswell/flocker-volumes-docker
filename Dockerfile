FROM python:2.7
MAINTAINER Rob Haswell <me@robhaswell.co.uk>

VOLUME /certs
ENV CONTROL_SERVICE 127.0.0.1

RUN pip install git+https://github.com/clusterhq/unofficial-flocker-tools.git
ENTRYPOINT ["flocker-volumes", "--certs-path", "/certs", "--control-service", $CONTROL_SERVICE]
