variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "australia-southeast1"
}

variable "zone" {
  description = "Zone within the region for the GKE cluster"
  type        = string
  default     = "australia-southeast1-b"
}

variable "cluster_name" {
  description = "Name of the GKE cluster"
  type        = string
  default     = "gke-lab"
}

variable "machine_type" {
  description = "Machine type to use for nodes"
  type        = string
  default     = "e2-medium"
}

variable "node_count" {
  description = "Number of nodes in the default node pool"
  type        = number
  default     = 2
}

