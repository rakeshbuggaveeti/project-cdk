FROM python:3.7.4-alpine3.10

WORKDIR /proj-cdk/
COPY . .

RUN python -m pip install -r requirements.txt

RUN pip install --upgrade pip;\
    pip install --upgrade awscli;



RUN apk add --no-cache nodejs;\
    apk add --no-cache npm;\
    npm c set unsafe-perm true;\
    npm i -g aws-cdk@1.3.0;\;


