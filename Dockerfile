FROM python:3.8.6-slim

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir \
        PyMySQL==0.9.3         \
        psycopg2-binary==2.8.5 \
        mlflow[extras]==1.12.1

ENTRYPOINT ["mlflow", "server"]
