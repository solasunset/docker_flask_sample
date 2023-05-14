FROM ubuntu:22.04

WORKDIR /app
COPY . /app

RUN apt update && apt install -y python3 python3-pip openjdk-11-jdk && apt clean
RUN pip install -r requirements.txt

CMD ["python3", "index.py"]
