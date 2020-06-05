#!/usr/bin/env sh
set -x

PROJECT=bloom-infra-dev
ACCOUNT=terraform-sa

gcloud iam service-accounts keys create ${ACCOUNT}-keyfile.json --iam-account=${ACCOUNT}@${PROJECT}.iam.gserviceaccount.com
