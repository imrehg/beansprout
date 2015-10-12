FROM resin/vab820-quad-python:latest

ADD index.html /app/

WORKDIR /app

CMD ["python3", "-m http.server"]