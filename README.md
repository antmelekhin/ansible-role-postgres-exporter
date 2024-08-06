Postgres Exporter
=================

An Ansible role to install, configure and update the [Postgres Exporter](https://github.com/prometheus-community/postgres_exporter).

Requirements
------------

- Supported version of Ansible: 2.12 and highter.
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

All variables that can be overridden are stored in the [defaults/main.yml](defaults/main.yml) file.
Please refer to the [meta/argument_specs.yml](meta/argument_specs.yml) file for a description of the available variables.
Similarly, descriptions and defaults for preset variables can be found in the [vars/main.yml](vars/main.yml) file.

Dependencies
------------

None.

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
