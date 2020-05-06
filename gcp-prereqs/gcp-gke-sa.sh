#!/usr/bin/env sh
set -x

PROJECT=scandalizer
ACCOUNT=tf-gcp

gcloud projects add-iam-policy-binding ${PROJECT} --member serviceAccount:${ACCOUNT}@${PROJECT}.iam.gserviceaccount.com --role roles/container.admin
gcloud projects add-iam-policy-binding ${PROJECT} --member serviceAccount:${ACCOUNT}@${PROJECT}.iam.gserviceaccount.com --role roles/compute.admin
gcloud projects add-iam-policy-binding ${PROJECT} --member serviceAccount:${ACCOUNT}@${PROJECT}.iam.gserviceaccount.com --role roles/iam.serviceAccountUser
gcloud projects add-iam-policy-binding ${PROJECT} --member serviceAccount:${ACCOUNT}@${PROJECT}.iam.gserviceaccount.com --role roles/resourcemanager.projectIamAdmin
gcloud projects add-iam-policy-binding ${PROJECT} --member serviceAccount:${ACCOUNT}@${PROJECT}.iam.gserviceaccount.com --role roles/iam.serviceAccountCreator
gcloud projects add-iam-policy-binding ${PROJECT} --member serviceAccount:${ACCOUNT}@${PROJECT}.iam.gserviceaccount.com --role roles/iam.serviceAccountUser
