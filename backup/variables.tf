variable "vmw_cloud_api_token" {
  description = "api token for auth"
  type        = string
}

variable "backup_job_name" {
  description = "Name for Job"
  type        = string
}

variable "management_cluster_name" {
  description = "TKG management cluster name in TMC"
  type        = string
}

variable "provisioner_name" {
  description = "vSphere Namespace"
  type        = string
}

variable "cluster_name" {
  description = "Name of TKG cluster"
  type        = string
}

variable "backup_scope" {
  description = "Cluster level"
  type        = string
}

variable "storage_location" {
  description = "Storage Target in TMC for Backups"
  type        = string
}