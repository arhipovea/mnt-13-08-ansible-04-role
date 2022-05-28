variable "yc_oauth" {
  type        = string
  description = "Yandex Cloud OAuth token"
}

variable "yc_cloud_id"    { default = "b1gdn3k0lg5v8o3qnp4j" }
variable "yc_folder_id"   { default = "b1g68ge17ldu86fka0mt" }
variable "yc_zone"        { default = "ru-central1-a" }
variable "yc_network_id"  { default = "enpj0i3fn1grio9iu0qm" }
variable "yc_subnet_id"   { default = "e9bb6dr0jep5b276tc9r" }
variable "image_id"       { default = "fd8p7vi5c5bbs2s5i67s" } # Centos 7

variable "user_data" {
  default     = "meta.yml"
  description = "Cloud init for VM"
}
