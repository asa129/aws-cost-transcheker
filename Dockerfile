FROM python:3

WORKDIR /usr/src/app

# COPY requirements.txt ./
# RUN pip install --no-cache-dir -r requirements.txt\
RUN pip install boto3 "botocore[crt]"

COPY . .

CMD [ "python", "./sample.py" ]

