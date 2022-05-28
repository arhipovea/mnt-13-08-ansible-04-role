---
clickhouse:
  hosts:
    clickhouse-01:
      ansible_host: ${clickhouse_01_ext_ip}
      ansible_user: ansible
      allow_world_readable_tmpfiles: true
vector:
  hosts:
    vector-01:
      ansible_host: ${vector_01_ext_ip}
      ansible_user: ansible
      allow_world_readable_tmpfiles: true
lighthouse:
  hosts:
    lighthouse-01:
      ansible_host: ${lighthouse_01_ext_ip}
      ansible_user: ansible
      allow_world_readable_tmpfiles: true
