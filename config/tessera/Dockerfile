FROM quorumengineering/tessera:latest

#FROM alpine:latest


USER root


# develop uses a debain container, all releases use an alpine container - this allows both to be used for the quickstart
# set the version in ../../.env
RUN if [ -e /sbin/apk ] ; then apk add gettext --no-cache ; else apt-get update && apt-get install -y gettext && rm -rf /var/lib/apt/lists/* ; fi

ENV JAVA_OPTS="-Dlogback.configurationFile=/data/logback.xml"

COPY docker-entrypoint.sh /usr/bin/docker-entrypoint.sh
COPY data data

RUN chmod 777 -R data

RUN chmod +x /usr/bin/docker-entrypoint.sh

ENTRYPOINT ["sh","/usr/bin/docker-entrypoint.sh"]