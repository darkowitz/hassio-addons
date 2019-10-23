ARG BUILD_FROM="resin/armv7hf-python:3.6-slim"
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk add --update -y gcc libc-dev python3-dev libffi-dev libressl-dev
RUN pip3 install xbox-smartglass-rest
EXPOSE 5557/tcp

# Copy data for add-on
COPY run.sh /
COPY xboxone.py /
COPY manifest.json /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
