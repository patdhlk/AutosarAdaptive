FROM danwos/sphinxneeds:1.1.0

USER root
RUN apt update
RUN apt install git -y
USER ${DOCKER_USERNAME}

COPY ./requirements.txt /autosar_req/requirements.txt

WORKDIR /autosar_req

RUN pip install -r requirements.txt