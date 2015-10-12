FROM armv7/armhf-debian:latest

RUN apt-get update && apt-get install -y python

ADD index.html /app/

WORKDIR /app

CMD ["pyton", "-m http.server"]