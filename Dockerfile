FROM python:3.10-alpine

WORKDIR /app
COPY . .

RUN apk -U upgrade
RUN pip3 install -r src/requirements.txt

EXPOSE 5000

CMD ["python3", "src/app.py"]
