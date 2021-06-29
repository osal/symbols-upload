#!/bin/bash

aws --version

INTEGRATION_NAME=${GITHUB_REPOSITORY##*/}
FINAL_NAME=${INTEGRATION_NAME}/${FILE}
echo uploading symbols/$FILE to $S3_BUCKET/$ENVIRONMENT/$FINAL_NAME
aws s3 cp "symbols/${FILE}" "${S3_BUCKET}/${ENVIRONMENT}/${FINAL_NAME}" --no-progress
