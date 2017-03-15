FROM alpine

RUN apk add --update --no-cache --virtual curl

ADD run /run.sh
ENV GITHUB_USERS ""
VOLUME /user
CMD ["/run.sh"]
