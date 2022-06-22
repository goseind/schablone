resource "rancher2_cloud_credential" "foo-aks" {
  name = "foo-aks"
  azure_credential_config {
    client_id = "<CLIENT_ID>"
    client_secret = "<CLIENT_SECRET>"
    subscription_id = "<SUBSCRIPTION_ID>"
  }
}

resource "rancher2_cluster" "foo" {
  name = "foo"
  description = "Terraform AKS cluster"
  aks_config_v2 {
    cloud_credential_id = rancher2_cloud_credential.foo-aks.id
    resource_group = "<RESOURCE_GROUP>"
    resource_location = "<RESOURCE_LOCATION>"
    dns_prefix = "<DNS_PREFIX>"
    kubernetes_version = "1.21.2"
    network_plugin = "<NETWORK_PLUGIN>"
    node_pools {
      availability_zones = ["1", "2", "3"]
      name = "<NODEPOOL_NAME>"
      count = 1
      orchestrator_version = "1.21.2"
      os_disk_size_gb = 128
      vm_size = "Standard_DS2_v2"
    }
  }
}