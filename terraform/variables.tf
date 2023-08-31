variable "network_name" {
  default = "pem-network"
}

variable "gke_cluster_name" {
  default = "pem-cluster"
}

variable "node_tag" {
  default = "pem-node"
}

variable "region" {
  default = "asia-south1"
}

variable "location" {
  default = "asia-south1-a"
}

variable "artifact_registry_name" {
    default = "pem-artifact-registry"
}