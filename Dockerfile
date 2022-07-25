FROM python:latest

WORKDIR /proj

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY src/ .

RUN /tmp/test

CMD [ "python", "./hello-world.py" ]