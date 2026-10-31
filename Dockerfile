FROM python:latest

WORKDIR /app

COPY . .
RUN pip install -r requirements.txt

EXPOSE 8004
CMD gunicorn --bind 127.0.0.1:8004 app:app
