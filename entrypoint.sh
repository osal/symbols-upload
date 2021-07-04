#!/bin/bash

aws --version
SYMBOL_FILES=$(ls symbols)
INTEGRATION_NAME=${GITHUB_REPOSITORY##*/}
for FILE in $SYMBOL_FILES
do
    FINAL_NAME=${INTEGRATION_NAME}/${FILE}
    echo uploading symbols/$FILE to $S3_BUCKET/$ENVIRONMENT/$FINAL_NAME
    aws s3 cp "symbols/${FILE}" "${S3_BUCKET}/${ENVIRONMENT}/${FINAL_NAME}" --no-progress
done
