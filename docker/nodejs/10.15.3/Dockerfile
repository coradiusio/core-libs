FROM node:10.15.3-alpine

#add extra packages here if you need
RUN apk add bash
RUN apk add netcat-openbsd

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh
