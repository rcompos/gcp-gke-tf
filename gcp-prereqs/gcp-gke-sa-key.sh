#!/usr/bin/env sh
set -x

PROJECT=scandalizer
ACCOUNT=tf-gcp

gcloud iam service-accounts keys create ${ACCOUNT}-keyfile.json --iam-account=${ACCOUNT}@${PROJECT}.iam.gserviceaccount.com
