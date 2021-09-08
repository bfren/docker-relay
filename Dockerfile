FROM bfren/alpine-s6:alpine3.14-2.2.8

EXPOSE 25 587 5000

ENV \
    # primary relay domain
    RELAY_PRIMARY_DOMAIN=\
    # relay server host name
    RELAY_HOSTNAME=\
    # maximum message size (default: 25MB)
    RELAY_MESSAGE_SIZE_LIMIT=26214400

COPY ./overlay /
COPY ./POSTFIX_BUILD /tmp/POSTFIX_VERSION

RUN bf-install
