FROM resin/vab820-quad-buildpack-deps:latest
#FROM resin/vab820-quad-python:latest

RUN apt-get update && apt-get install -y python3

ADD index.html /app/

WORKDIR /app

CMD ["python3", "-m http.server"]