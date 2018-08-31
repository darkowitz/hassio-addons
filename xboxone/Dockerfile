ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN ln -s /config/.xbox-token.json /root/.local/share/xbox/tokens.json

# Copy data for add-on
COPY run.sh /
COPY xboxone.py /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
