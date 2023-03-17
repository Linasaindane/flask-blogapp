FROM python:3.8.10

ARG APP_HOME=/app

WORKDIR ${APP_HOME}

COPY ./requirements.txt requirements.txt


RUN pip install -r requirements.txt

COPY . ${APP_HOME}

CMD ["python", "app.py"]
