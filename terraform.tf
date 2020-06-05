terraform {
  backend "gcs" {
    credentials = "~/keys/terraform-sa-keyfile.json"
    bucket      = "terraform-state-bloom-infra-dev"
    prefix      = "terraform/state"
  }
}
