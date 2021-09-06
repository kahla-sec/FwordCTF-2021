FROM python:alpine3.7
COPY ./task /app
COPY ./task/server.crt /
COPY ./task/server.key /
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
CMD python app.py
