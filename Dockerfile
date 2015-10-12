FROM armv7/armhf-archlinux:latest

RUN pacman -Sy && pacman -S --noconfirm python

ADD index.html /app/

WORKDIR /app

CMD ["pyton", "-m http.server"]