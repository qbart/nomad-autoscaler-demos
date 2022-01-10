locals {
  data_template_file_user_data = templatefile("${path.module}/templates/user-data.sh.tpl",
    {
      consul_binary = var.consul_binary_url
      nomad_binary  = var.nomad_binary_url
      retry_join    = var.retry_join
      node_class    = var.nomad_node_class
      datacenter    = var.nomad_datacenter
  })
}
