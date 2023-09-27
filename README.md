Postgres Exporter
=================

An Ansible role for install, configure and update [Postgres Exporter](https://github.com/prometheus-community/postgres_exporter).

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
    - 2016
    - 2019

Role Variables
--------------

- `postgres_exporter_version` The specific version of Postgres Exporter to download (default: `0.14.0`).
- `postgres_exporter_archive_name` Postgres Exporter archive name.

  Defaults:
  - `postgres_exporter-0.14.0.linux-amd64` (Linux)
  - `postgres_exporter-0.14.0.windows-amd64` (Windows)

- `postgres_exporter_archive_extension` Postgres Exporter archive extension (default: `tar.gz`)
- `postgres_exporter_download_url` URL to download an archive with Postgres Exporter (default: `https://github.com/prometheus-community/postgres_exporter/releases/download/v0.14.0`).
- `postgres_exporter_user` and `postgres_exporter_group` Unix username and group (default: `postgres`).
- `postgres_exporter_install_path` Path to Postgres Exporter installation directory (default: `/usr/local/bin`).
- `postgres_exporter_data_source_name` Accepts URI form and key=value form arguments. The URI may contain the username and password to connect with. (default: `user=postgres host=/var/run/postgresql/ sslmode=disable`).
- `postgres_exporter_web_listen_address` Address to listen on for web interface and telemetry (default: `0.0.0.0`).
- `postgres_exporter_web_listen_port` The port to bind to (default: `9187`).
- `postgres_exporter_web_telemetry_path` The path at which to serve metrics (default: `metrics`).
- `postgres_exporter_collectors` List of collectors to use (default: `[]`).
- `postgres_exporter_tls_server_config` Certificate and key files for server to use to authenticate to client.
- `postgres_exporter_http_server_config` Enable HTTP/2 support. Note that HTTP/2 is only supported with TLS.
- `postgres_exporter_basic_auth_users` Users and password for basic authentication. Passwords are automatically hashed with bcrypt.
- `postgres_exporter_disable_default_metrics` Use only metrics supplied from queries.yaml via `postgres_exporter_extend_query_path` (default: `false`).
- `postgres_exporter_disable_settings_metrics` Use the flag if you don't want to scrape pg_settings (default: `false`).
- `postgres_exporter_extend_query_path` Path to a YAML file containing custom queries to run. (default: `''`).
- `postgres_exporter_log_level` Postgres Exporter logging level.

  Available values:
  - `debug`
  - `info` (default)
  - `warn`
  - `error`

- `postgres_exporter_log_format` Output format of log messages.

  Available values:
  - `logfmt` (default)
  - `json`

Dependencies
------------

None.

Example Playbook
----------------

- Install and configure `Postgres Exporter`:

  ```yaml
  ---
  - name: 'Setup Postgres Exporter'
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
