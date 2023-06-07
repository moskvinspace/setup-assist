Docker image - https://hub.docker.com/r/moskvinspace/node-and-aws

## set aws [default]
```sh
echo "
[default]
aws_access_key_id = $AWS_ACCESS_KEY_ID
aws_secret_access_key = $AWS_SECRET_ACCESS_KEY
" > ~/.aws/credentials
```
```sh
echo "
[default]
region = $AWS_DEFAULT_REGION
" > ~/.aws/config
```