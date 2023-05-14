FROM python:3.10.11-alpine3.18

WORKDIR /app
COPY . /app

RUN apk update && apk --no-cache add openjdk11-jre-headless && rm -rf /var/cache/apk/*
RUN pip install -r requirements.txt

CMD ["python", "index.py"]