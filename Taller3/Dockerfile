FROM python:3.10.7-slim-buster
WORKDIR /app
COPY app /app
RUN pip install --upgrade pip
RUN pip install Flask==2.2.2
CMD [ "python", "t3.py" ]
