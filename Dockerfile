FROM maven:3.5.4-jdk-11-slim
RUN mkdir -p /var/lib/transfer
VOLUME ["/var/lib/transfer"]

COPY . /project

RUN  cd /project && mvn package


