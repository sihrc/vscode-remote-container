FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y \
        python3-pip \
        openssh-server

RUN systemctl enable ssh

COPY ./requirements.txt /requirements.txt
COPY start_script.sh /start_script.sh

RUN pip3 install -r requirements.txt && \
    service ssh restart

CMD /start_script.sh