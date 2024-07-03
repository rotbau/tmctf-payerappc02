resource "tanzu-mission-control_backup_schedule" "sample-full" {
  name = var.backup_job_name
  scope {
    cluster {
      management_cluster_name = var.management_cluster_name
      provisioner_name        = var.provisioner_name
      cluster_name            = var.cluster_name
    }
  }

  backup_scope = var.backup_scope

  spec {
    schedule {
      rate = "0 23 * * 1,2,3,4,5"
    }

    template {
      backup_ttl = "2592000s"
      excluded_namespaces= []
      excluded_resources = []

      storage_location = var.storage_location
    }
  }
}