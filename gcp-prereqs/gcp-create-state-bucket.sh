#!/usr/bin/env sh
set -x

PROJECT=bloom-infra-dev
ACCOUNT=terraform-sa
REGION=us-west3
BUCKET_BASE=terraform-state
BUCKET="gs://${BUCKET_BASE}-${PROJECT}/"

gsutil mb -p ${PROJECT} -c regional -l ${REGION} ${BUCKET}
gsutil versioning set on ${BUCKET}
gsutil iam ch serviceAccount:${ACCOUNT}@${PROJECT}.iam.gserviceaccount.com:legacyBucketWriter ${BUCKET}
