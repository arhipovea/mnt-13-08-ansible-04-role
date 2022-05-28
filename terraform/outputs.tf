output "clickhouse_01_int_ip" {
  value = yandex_compute_instance.clickhouse_01.network_interface.0.ip_address
}

output "clickhouse_01_ext_ip" {
  value = yandex_compute_instance.clickhouse_01.network_interface.0.nat_ip_address
}

output "vector_01_int_ip" {
  value = yandex_compute_instance.vector_01.network_interface.0.ip_address
}

output "vector_01_ext_ip" {
  value = yandex_compute_instance.vector_01.network_interface.0.nat_ip_address
}

output "lighthouse_01_int_ip" {
  value = yandex_compute_instance.lighthouse_01.network_interface.0.ip_address
}

output "lighthouse_01_ext_ip" {
  value = yandex_compute_instance.lighthouse_01.network_interface.0.nat_ip_address
}