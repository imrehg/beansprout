FROM resin/vab820-quad-buildpack-deps:latest

RUN apt-get update && apt-get install -y python

ADD app /app

WORKDIR /app

CMD ["python", "app.py"]
