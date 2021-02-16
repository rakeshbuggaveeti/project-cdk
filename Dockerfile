FROM thestuhrer/aws-cdk

WORKDIR /proj-cdk/
COPY . .


RUN pip install -r requirements.txt