#!/bin/bash

aws --version

echo uploading $FILE to $S3_BUCKET/$ENVIRONMENT/$FILE
aws s3 cp "$FILE" "$S3_BUCKET/$ENVIRONMENT/$FILE" --no-progress
