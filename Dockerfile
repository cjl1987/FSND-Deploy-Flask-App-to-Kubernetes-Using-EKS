FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
#RUN python main.py


#ENTRYPOINT ["gunicorn", "-b", ":8080","main:APP"]
#ENTRYPOINT ["gunicorn", "-b", ":8080", "__init__.py"]
#ENTRYPOINT ["gunicorn", "-b", ":8080", "main.py"]
ENTRYPOINT ["python", "main.py"]

#ENTRYPOINT ["echo", "hello world"]

