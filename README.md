Postgres Exporter
=================

Ansible роль для установки, настройки и обновления [Postgres Exporter](https://github.com/prometheus-community/postgres_exporter).

Требования
----------

- Поддерживаемая версия Ansible: 2.7 и выше.
- `pywinrm` для подключения [Ansible через WinRM](https://docs.ansible.com/ansible/latest/user_guide/windows_winrm.html) (для Windows).
- `gnu-tar` при использовании Mac в качестве управляющего хоста (`brew install gnu-tar`).
- Список поддерживаемых платформ описан в файле метаданных роли.

Используемые переменные
-----------------------

- `postgres_exporter_version` Версия Postgres Exporter для установки (default: `0.11.1`).
- `postgres_exporter_package_name` Имя пакета.
- `postgres_exporter_download_url` Ссылка на скачивание архива с приложением.
- `postgres_exporter_user` Unix имя пользователя (default: `postgres`).
- `postgres_exporter_group` Unix группа пользователя (default: `postgres`).
- `postgres_exporter_install_path` Каталог, в который будет распакован бинарник (default: `/usr/local/bin`).
- `postgres_exporter_data_source_name` Строка подключения к БД (default: `user=postgres host=/var/run/postgresql/ sslmode=disable`).
- `postgres_exporter_extend_query_path` Путь до YAML файла содержащего дополнительные sql-запросы для записи метрик (default: `''`).
- `postgres_exporter_log_level` Уровень логирования экспортера (default: `info`).

Зависимости
-----------

Отсутствуют.

Пример использования
--------------------

- Устанавливаем и настраиваем Postgres Exporter:

  ```yaml
  ---
  - name: 'Setup Postgres Exporter'
    hosts: all

    roles:
      - role: ansible-role-postgres-exporter
  ```

Лицензия
--------

MIT

Информация об авторе
--------------------

Мелехин Антон.
