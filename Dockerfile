FROM python:3.7.4-alpine3.10

WORKDIR /proj-cdk/
COPY . .



RUN pip install --upgrade pip;\
    pip install --upgrade awscli;


RUN set -e;\
    apk add --no-cache nodejs git=2.22.4-r0 openssh=8.1_p1-r0;\
    apk add --no-cache npm;\
    npm c set unsafe-perm true;\
    npm i -g aws-cdk@1.3.0;

RUN python -m pip install -r requirements.txt


