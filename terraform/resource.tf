resource "yandex_compute_instance" "clickhouse_01" {
  name = "clickhouse-01"

  resources {
    cores  = 4
    memory = 8
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
    }
  }

  network_interface {
    subnet_id = var.yc_subnet_id
    nat       = true
  }

  metadata = {
    user-data = "${file(var.user_data)}"
  }
}

resource "yandex_compute_instance" "vector_01" {
  name = "vector-01"

  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
    }
  }

  network_interface {
    subnet_id = var.yc_subnet_id
    nat       = true
  }

  metadata = {
    user-data = "${file(var.user_data)}"
  }
}

resource "yandex_compute_instance" "lighthouse_01" {
  name = "lighthouse-01"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
    }
  }

  network_interface {
    subnet_id = var.yc_subnet_id
    nat       = true
  }

  metadata = {
    user-data = "${file(var.user_data)}"
  }
}