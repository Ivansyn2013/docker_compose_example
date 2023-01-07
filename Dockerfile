FROM python:3.9.16-alpine3.16
WORKDIR /app
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY req.txt req.txt
RUN pip install -r req.txt
EXPOSE 5000
COPY app.py app.py

