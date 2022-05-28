terraform {
  required_providers {
    yandex = {
      source = "terraform-registry.storage.yandexcloud.net/yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  token     = var.yc_oauth
  cloud_id  = var.yc_cloud_id
  folder_id = var.yc_folder_id
  zone      = var.yc_zone
}

#========== Templates ===========================
resource "local_file" "hosts_cfg" {
  content = templatefile("${path.module}/templates/hosts.tpl",
    {
      clickhouse_01_ext_ip = yandex_compute_instance.clickhouse_01.network_interface.0.nat_ip_address      
      vector_01_ext_ip = yandex_compute_instance.vector_01.network_interface.0.nat_ip_address      
      lighthouse_01_ext_ip = yandex_compute_instance.lighthouse_01.network_interface.0.nat_ip_address      
    }
  )
  filename = "../ansible/playbook/inventory/prod.yml"
}

resource "local_file" "ip_cfg" {
  content = templatefile("${path.module}/templates/ip.tpl",
    {
      clickhouse_01_ext_ip = yandex_compute_instance.clickhouse_01.network_interface.0.nat_ip_address      
      clickhouse_01_int_ip = yandex_compute_instance.clickhouse_01.network_interface.0.ip_address      
      vector_01_ext_ip = yandex_compute_instance.vector_01.network_interface.0.nat_ip_address      
      vector_01_int_ip = yandex_compute_instance.vector_01.network_interface.0.ip_address 
      lighthouse_01_ext_ip = yandex_compute_instance.lighthouse_01.network_interface.0.nat_ip_address      
      lighthouse_01_int_ip = yandex_compute_instance.lighthouse_01.network_interface.0.ip_address      
    }
  )
  filename = "../ansible/playbook/group_vars/all.yml"
}