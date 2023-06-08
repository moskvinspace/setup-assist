#!/bin/sh
# aws-default.sh

set -e

AWS_ACCESS_KEY_ID="$1"
AWS_SECRET_ACCESS_KEY="$2"
AWS_DEFAULT_REGION="$3"

mkdir ~/.aws

echo "
[default]
aws_access_key_id = $AWS_ACCESS_KEY_ID
aws_secret_access_key = $AWS_SECRET_ACCESS_KEY
" > ~/.aws/credentials
echo "
[default]
region = $AWS_DEFAULT_REGION
" > ~/.aws/config