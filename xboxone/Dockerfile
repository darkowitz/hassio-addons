ARG BUILD_FROM="darkowitz/xbox-smartglass-rest-python:0.9.9"
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Copy data for add-on
COPY run.sh /
COPY xboxone.py /
COPY manifest.json /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
