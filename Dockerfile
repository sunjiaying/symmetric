FROM openjdk:8-jdk-slim

LABEL maintainer="sunjiaying"
LABEL version="1.0"
LABEL description="This is symmetric docker image."

RUN apt update
RUN apt install unzip
ADD ./symmetric-server-3.12.11.zip /root/symmetric-server-3.12.11.zip
RUN unzip /root/symmetric-server-3.12.11.zip -d /opt/
RUN mv /opt/symmetric-server-3.12.11 /opt/symmetric
RUN rm -rf /root/symmetric-server-3.12.11.zip

WORKDIR /opt/symmetric

CMD ["./bin/sym"]