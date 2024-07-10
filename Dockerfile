#FROM python:3.10.8-slim-buster
FROM artemisfowl004/vid-compress

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /EvaMaria
WORKDIR /EvaMaria
COPY start.sh
CMD ["start.sh"]
