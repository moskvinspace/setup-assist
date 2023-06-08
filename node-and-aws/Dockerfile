FROM alpine:latest

RUN apk add --no-cache aws-cli
RUN apk add --no-cache nodejs npm

COPY aws-default.sh .

CMD [ "./aws-default.sh", $AWS_ACCESS_KEY_ID, $AWS_SECRET_ACCESS_KEY, $AWS_DEFAULT_REGION ]