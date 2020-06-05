# https://github.com/terraform-google-modules/terraform-google-kubernetes-engine
credentials        = "~/keys/terraform-sa-keyfile.json"
project_id         = "bloom-infra-dev"
region             = "us-west3"
#zones              = ["us-west3-a", "us-west3-b", "us-west3-c"]
zones              = ["us-west3-a", "us-west3-b"]
name               = "dev-wazuh"
machine_type       = "n1-standard-1"
image_type         = "COS"
min_count          = 1
max_count          = 2
disk_size_gb       = 50
initial_node_count = 1
service_account    = ""
#node_pool_default_meta = "gke-tf-alpha-node-pool"
