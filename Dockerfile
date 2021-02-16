FROM node:10.23.3-stretch-slim

WORKDIR /proj-cdk/
COPY . .

RUN npm i -g aws-cdk typescript && npm i


RUN apt-get update || : && apt-get install python -y
RUN apt-get install python3-pip -y
RUN apt-get install python3.6 -y
RUN pip install -r requirements.txt