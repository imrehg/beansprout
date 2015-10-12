FROM resin/vab820-quad-buildpack-deps:latest

RUN apt-get update && apt-get install -y python

ADD app /app

EXPOSE 8000

WORKDIR /app

CMD ["python", "app.py"]
