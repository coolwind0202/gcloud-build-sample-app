FROM python:3.7

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY ./form ./

CMD ["flask", "run", "--host=0.0.0.0", "--port=80"]