FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8
RUN apt-get update -y && apt-get install -y wget
RUN pip install \
    sqlalchemy \
    sqlalchemy_utils \
    mutagen \
    psycopg2-binary \
    requests \
    python-box \
    shortuuid \
    pytest \
    boto3 \
    dynaconf

COPY ./server/app /app/app
WORKDIR /app

EXPOSE 80
EXPOSE 443