FROM python:3.7.3-stretch

WORKDIR '/app'

COPY . app.py /app
COPY . locustfile.py /app

RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 8080 80 443 8089

CMD ["python", "app.py"]