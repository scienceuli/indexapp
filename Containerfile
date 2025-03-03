FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN indexapp create-db
RUN indexapp populate-db
RUN indexapp add-user -u admin -p admin
EXPOSE 5000
CMD ["indexapp", "run"]
