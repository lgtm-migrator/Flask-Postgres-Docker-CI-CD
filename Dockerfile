FROM python:3.6.2

RUN apt-get update

RUN mkdir -p /proton

WORKDIR /proton

COPY . /proton

RUN pip install -r requirements.txt

VOLUME ["/proton"]

ENTRYPOINT ["./run_web.sh"]
