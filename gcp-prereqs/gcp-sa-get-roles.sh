#!/usr/bin/env sh
set -x

PROJECT=scandalizer
ACCOUNT=tf-gcp

#gcloud projects get-iam-policy <YOUR GCLOUD PROJECT>  \
gcloud projects get-iam-policy ${PROJECT} \
--flatten="bindings[].members" \
--format='table(bindings.role)' \
--filter="bindings.members:${ACCOUNT}@${PROJECT}.iam.gserviceaccount.com"
