Postgres Exporter
=================

An Ansible role to install, configure and update the [Postgres Exporter](https://github.com/prometheus-community/postgres_exporter).

Requirements
------------

- Supported version of Ansible: 2.12 and higher. Systems with Python versions below than 3.7 are not compatible with ansible-core 2.17 (see [ansible/ansible#83357](https://github.com/ansible/ansible/issues/83357#issuecomment-2150254754)).
- `gnu-tar` on Mac as deployer host (`brew install gnu-tar`).
- `pywinrm` is a python library for connection Ansible to Windows hosts via [WinRM](https://docs.ansible.com/ansible/latest/user_guide/windows_winrm.html).
- `passlib` on a deployer host when using the basic authentication feature (`python3 -m pip install passlib[bcrypt]`).
- `cryptography` or `pyOpenSSL` on a deployer host when using the TLS feature.
- Supported platforms:
  - Debian
    - 10
    - 11
    - 12
  - RHEL
    - 7
    - 8
    - 9
  - Ubuntu
    - 18.04
    - 20.04
    - 22.04
  - Windows
    - all

Role Variables
--------------

All variables that can be overridden are stored in the [defaults/main.yml](https://github.com/antmelekhin/ansible-role-postgres-exporter/blob/main/defaults/main.yml) file.
Please refer to the [meta/argument_specs.yml](https://github.com/antmelekhin/ansible-role-postgres-exporter/blob/main/meta/argument_specs.yml) file for a description of the available variables.
Similarly, descriptions and defaults for preset variables can be found in the [vars/main.yml](https://github.com/antmelekhin/ansible-role-postgres-exporter/blob/main/vars/main.yml) file.

Dependencies
------------

When using Ansible core, you will also need to install the following Ansible collections:

```yaml
---
collections:
  - name: community.general
  - name: community.windows
```

Example Playbook
----------------

Install and configure the `Postgres Exporter`:

```yaml
---
- name: 'Setup the Postgres Exporter'
  hosts: all

  roles:
    - role: antmelekhin.postgres_exporter
```

License
-------

MIT

Author Information
------------------

Melekhin Anton.
