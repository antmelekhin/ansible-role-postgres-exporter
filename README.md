Postgres Exporter
=================

An Ansible role for install, configure and update [Postgres Exporter](https://github.com/prometheus-community/postgres_exporter).

Requirements
------------

- Supported version of Ansible: 2.9 and highter.
- `gnu-tar` on Mac as deployer host (`brew install gnu-tar`).
- List of all supported platforms described in role meta.

Role Variables
--------------

- `postgres_exporter_version` The specific version of Postgres Exporter to download (default: `0.11.1`).
- `postgres_exporter_archive_name` Postgres Exporter archive name (default: `postgres_exporter-{{ postgres_exporter_version }}.linux-{{ _postgres_exporter_architecture }}`).
- `postgres_exporter_archive_extension` Postgres Exporter archive extension (default: `tar.gz`)
- `postgres_exporter_download_url` URL to download an archive with Postgres Exporter.
- `postgres_exporter_user` and `postgres_exporter_group` Unix username and group (default: `postgres`).
- `postgres_exporter_install_path` Path to Postgres Exporter installation directory (default: `/usr/local/bin`).
- `postgres_exporter_data_source_name` Accepts URI form and key=value form arguments. The URI may contain the username and password to connect with. (default: `user=postgres host=/var/run/postgresql/ sslmode=disable`).
- `postgres_exporter_extend_query_path` Path to a YAML file containing custom queries to run. (default: `''`).
- `postgres_exporter_log_level` Postgres Exporter logging level.

  Available values:
  - `debug`
  - `info` (default)
  - `warn`
  - `error`

Dependencies
------------

None.

Example Playbook
----------------

- Install and configure Postgres Exporter:

  ```yaml
  ---
  - name: 'Setup Postgres Exporter'
    hosts: all

    roles:
      - role: ansible-role-postgres-exporter
  ```

License
-------

MIT

Author Information
------------------

Melekhin Anton.
