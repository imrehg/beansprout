FROM resin/vab820-quad-python

ADD app /app

WORKDIR /app

CMD ["python", "app.py"]
