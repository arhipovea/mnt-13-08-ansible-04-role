# Terraform 

Разворачивает две виртуальные машины в Yandex Cloud. Генерирует на основе шаблона `templates/hosts.tpl` inventory для ansible. 

## Настройка

- `yc_oauth`: OAuth токен для доступа к облаку
- `yc_cloud_id`: ID облака
- `yc_folder_id`: ID каталога
- `yc_zone`: зона
- `yc_network_id`: ID сети
- `yc_subnet_id`: ID подсети
- `image_id`: ID образа

Добавить в файл `meta.yml` public key, для подключения по ssh.

## Запуск

### 1. Добавить OAuth token

```bash
export TF_VAR_yc_oauth=<OAuth_token>
```

### 2. Развернуть инфраструктуру

```bash
terraform apply
```

