ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Copy data for add-on
COPY run.sh /
COPY xboxone.py /
RUN chmod a+x /run.sh

RUN rm /root/.local/share/xbox/tokens.json && mkdir -p /root/.local/share/xbox/ && touch /config/.xbox-token.json && ln -s /config/.xbox-token.json /root/.local/share/xbox/tokens.json

CMD [ "/run.sh" ]
