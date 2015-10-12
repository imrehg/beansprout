FROM resin/vab820-quad-buildpack-deps:latest

RUN apt-get update && apt-get install -y python3 python3-bottle

ADD app /app

EXPOSE 8000

WORKDIR /app

CMD ["python3", "web.py"]
