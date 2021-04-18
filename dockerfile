FROM ubuntu

RUN apt-get update && apt-get install -y netcat
RUN mkdir -p /usr/src/script/
WORKDIR /usr/src/script/
ENV PATH=/usr/src/script:$PATH
ENV PATH=/bin/bash:$PATH

COPY . /usr/src/script/
COPY index.htm /usr/src/script/

CMD web_body.sh
