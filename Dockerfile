#FROM python:3.10.8-slim-buster
#FROM artemisfowl004/vid-compress

#RUN apt update && apt upgrade -y
#RUN apt install git -y
#COPY requirements.txt /requirements.txt
#RUN pip3 install -U pip && pip3 install -U -r requirements.txt
#RUN mkdir /EvaMaria
#WORKDIR /EvaMaria
#COPY start.sh
CMD ["start.sh"]
FROM artemisfowl004/vid-compress
WORKDIR /app
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
CMD ["bash","start.sh"]
