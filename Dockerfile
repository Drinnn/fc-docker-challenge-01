FROM scratch
WORKDIR /usr/src/app

COPY docker-challenge-01 .

ENTRYPOINT [ "./docker-challenge-01" ]