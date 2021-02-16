FROM python:3 AS  CDK-IMG

WORKDIR /proj-cdk/
COPY . .

RUN pip install -r requirements.txt
RUN cdk deploy --require-approval=never