FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y libpq-dev 
RUN apt-get install -y python3-dev 
RUN apt-get install -y python3-pip 
RUN apt-get clean

WORKDIR /opt/
ADD hello.py .
CMD [“python3”, “./hello.py”] 
