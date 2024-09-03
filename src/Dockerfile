FROM  python:3.11.9-bullseye 


WORKDIR /code

COPY requirements.txt /code
RUN pip3 install -r requirements.txt
RUN apt-get install -y curl
COPY . /code

EXPOSE 5000

ENTRYPOINT ["python3"]
CMD ["app.py"]