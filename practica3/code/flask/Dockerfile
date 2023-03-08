FROM python:3.11.2
RUN apt -qq -y update && apt -qq -y upgrade

ENV APP /app
RUN mkdir /app
WORKDIR $APP
COPY requirements.txt .

RUN pip install --upgrade pip -r requirements.txt
RUN pip install uwsgi

COPY . .

CMD [ "uwsgi", "app.ini" ]
