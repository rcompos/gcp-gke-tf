terraform {
  backend "gcs" {
    credentials = "~/keys/tf-gcp-keyfile.json"
    bucket      = "gcp-gke-tf-scandalizer"
    prefix      = "terraform/state"
  }
}
