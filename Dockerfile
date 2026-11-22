FROM python:3.13-slim AS compile-image
MAINTAINER Julian-Samuel Gebühr


RUN apt-get update && apt-get install -y --no-install-recommends build-essential gcc

RUN python -m venv /opt/venv

WORKDIR /app
COPY requirements.txt ./
RUN /opt/venv/bin/pip install -r requirements.txt
COPY . .
RUN /opt/venv/bin/pip install .

FROM python:3.13-slim

COPY --from=compile-image /opt/venv /opt/venv

VOLUME ["/data"]
WORKDIR /data

CMD ["/opt/venv/bin/matrix-registration-bot"]
