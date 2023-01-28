FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y libpq-dev 
RUN apt-get install -y python3-dev 
RUN apt-get install -y python3-pip
RUN apt-get install -y git
RUN apt-get clean

WORKDIR /opt/

RUN git clone "https://github.com/sanjay2334/devops-learning.git"
RUN cd devops-learning
EXPOSE 5002
CMD [ "python3“,"./hello.py” ] 
