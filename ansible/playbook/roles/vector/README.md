Vector role
=========

Разворачивает Vector

Requirements
------------

Поддержка ОС:
- ubuntu
- centos

Role Variables
--------------

`vector_config`: Конфигурация vector

Dependencies
------------



Example Playbook
----------------

```yaml
- name: Install Vector
  hosts: vector
  roles: 
    - vector
```

License
-------

MIT

Author Information
------------------

Arhipov Evgeniy
