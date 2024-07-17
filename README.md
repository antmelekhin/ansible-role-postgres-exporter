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

- `postgres_exporter_version` The version of Postgres Exporter to install (default: `0.15.0`).
- `postgres_exporter_archive_name` The Postgres Exporter archive name without an extension. Defaults:
  - `postgres_exporter-0.15.0.linux-amd64` (Linux)
  - `postgres_exporter-0.15.0.windows-amd64` (Windows)
- `postgres_exporter_download_url` The Postgres Exporter archive download URL (default: `https://github.com/prometheus-community/postgres_exporter/releases/download/v0.15.0`).
- `postgres_exporter_checksum_url` The Postgres Exporter checksum file URL (default: `{{ postgres_exporter_download_url }}/sha256sums.txt`).
- `postgres_exporter_download_path` Local path to download and extract the archive (default: `/tmp`).
- `postgres_exporter_user` and `postgres_exporter_group` System user and group that will be created (default: `postgres_exporter`).
- `postgres_exporter_install_path` The Postgres Exporter installation directory. Defaults:
  - `/usr/local/bin` (Linux)
  - `C:\Program Files\postgres_exporter` (Windows)
- `postgres_exporter_config_path` The Postgres Exporter directory, that contains the PostgreSQL connection settings. Defaults:
  - `/etc/postgres_exporter` (Linux)
  - `C:\Program Files\postgres_exporter` (Windows)
- `postgres_exporter_data_source_name` Accepts URI form and key=value form arguments. The URI may contain the username and password to connect with. (default: `user=postgres host=/var/run/postgresql/ sslmode=disable`).
- `postgres_exporter_data_source_uri` An alternative to `postgres_exporter_data_source_name` which exclusively accepts the hostname without a username and password component. Only for Linux.
- `postgres_exporter_data_source_user` When using `postgres_exporter_data_source_uri`, this variable is used to specify the username. Only for Linux.
- `postgres_exporter_data_source_pass` When using `postgres_exporter_data_source_uri`, this variable is used to specify the password to connect with. Only for Linux.
- `postgres_exporter_web_listen_address` The address to listen for the web interface and telemetry (default: `0.0.0.0`).
- `postgres_exporter_web_listen_port` The port number that Postgres Exporter listens on (default: `9187`).
- `postgres_exporter_web_telemetry_path` The path to expose metrics (default: `metrics`).
- `postgres_exporter_collectors` A list of collectors to use (default: `[]`).
- `postgres_exporter_tls_server_config` Certificate and key files for server to use to authenticate to client (default: `{}`).
- `postgres_exporter_http_server_config` Enable HTTP/2 support (default: `{}`). Note that HTTP/2 is only supported with TLS.
- `postgres_exporter_basic_auth_users` Users and password for basic authentication (default: `{}`). Passwords are automatically hashed with bcrypt.
- `postgres_exporter_disable_default_metrics` Use only metrics supplied from queries.yaml via `postgres_exporter_extend_query_path` (default: `false`).
- `postgres_exporter_disable_settings_metrics` Use the flag if you don't want to scrape pg_settings (default: `false`).
- `postgres_exporter_extend_query_path` Path to a YAML file containing custom queries to run. (default: `''`).
- `postgres_exporter_log_level` The Postgres Exporter logging level. Supported levels are: `debug`, `info`, `warn`, `error` (default: `info`).
- `postgres_exporter_log_format` A log message format. Supported formats are: `logfmt`, `json` (default: `logfmt`).

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
