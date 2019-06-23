FROM arm64v8/docker:dind

RUN apk add --update openjdk8 git openssh openssh-client bash curl

COPY init.sh /tmp/init.sh
