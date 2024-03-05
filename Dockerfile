FROM python:3.8-alpine3.17

ENV SRC_DIR /server
COPY ./server.py ${SRC_DIR}/
WORKDIR ${SRC_DIR}
RUN mkdir /app

ENV PYTHONUNBUFFERED=1

EXPOSE 8080

CMD ["python", "server.py"]
