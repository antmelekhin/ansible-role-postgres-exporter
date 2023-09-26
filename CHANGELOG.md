# Changelog

## [1.2.3](https://github.com/antmelekhin/ansible-role-postgres-exporter/compare/v1.2.2...v1.2.3) (2023-09-26)


### Fixes

* **version:** postgres_exporter updated to `0.14.0` release ([#14](https://github.com/antmelekhin/ansible-role-postgres-exporter/issues/14)) ([1ffe4bf](https://github.com/antmelekhin/ansible-role-postgres-exporter/commit/1ffe4bf7e4d7a333377f9090805f91886f0f0735))


### Tests

* fix `cache_valide_time` in `tls-and-basic-auth` molecule scenario ([#15](https://github.com/antmelekhin/ansible-role-postgres-exporter/issues/15)) ([e972641](https://github.com/antmelekhin/ansible-role-postgres-exporter/commit/e972641645af9d52894b7453148fe7beab1fdb20))

## [1.2.2](https://github.com/antmelekhin/ansible-role-postgres-exporter/compare/v1.2.1...v1.2.2) (2023-08-25)


### Fixes

* add fqcn for all modules ([5fd7a3b](https://github.com/antmelekhin/ansible-role-postgres-exporter/commit/5fd7a3b3512fb62dd89dcdc4d97577f759376e27))


### Styles

* mv when in block ([19933be](https://github.com/antmelekhin/ansible-role-postgres-exporter/commit/19933befd52ef0206547bedb5ed944c077ca9b70))


### Tests

* add tox ([2fec357](https://github.com/antmelekhin/ansible-role-postgres-exporter/commit/2fec357ffa52d7c187feb7b6f5f5c51457bd12c0))

## [1.2.1](https://github.com/antmelekhin/ansible-role-postgres-exporter/compare/v1.2.0...v1.2.1) (2023-07-28)


### Fixes

* **version:** postgres_exporter updated to `0.13.2` release ([#13](https://github.com/antmelekhin/ansible-role-postgres-exporter/issues/13)) ([53c933a](https://github.com/antmelekhin/ansible-role-postgres-exporter/commit/53c933a1670cb7091dd6fd778799384b2601e36a))

## [1.2.0](https://github.com/antmelekhin/ansible-role-postgres-exporter/compare/v1.1.4...v1.2.0) (2023-07-02)


### Continuous Integration

* update converge.yml ([6f2865b](https://github.com/antmelekhin/ansible-role-postgres-exporter/commit/6f2865b1aaa1967f46bdf3fcb060e6c31d627386))


### Features

* add selinux support ([9123905](https://github.com/antmelekhin/ansible-role-postgres-exporter/commit/9123905132fda4ec3199ec44226251ed30201cc6))


### Fixes

* **windows:** mv scheduled task restart from tasks to handlers ([97a5200](https://github.com/antmelekhin/ansible-role-postgres-exporter/commit/97a5200ff8e2959b80561b6b4f11d588de41d9fc))
* **windows:** scheduled task restart when new version is installed ([1ebb94b](https://github.com/antmelekhin/ansible-role-postgres-exporter/commit/1ebb94bbeee7b46f0ebf8791a959d60b830aeaf0))


### Styles

* add quotes in notify name ([eca7d4a](https://github.com/antmelekhin/ansible-role-postgres-exporter/commit/eca7d4a05b2c1a5a6f42f5d46df8ccf5bf59cd4c))

## [1.1.4](https://github.com/antmelekhin/ansible-role-postgres-exporter/compare/v1.1.3...v1.1.4) (2023-07-01)


### Fixes

* use startup script in windows task ([e915e9e](https://github.com/antmelekhin/ansible-role-postgres-exporter/commit/e915e9e8d77b171e93f54d63372be269ad513acf))

## [1.1.3](https://github.com/antmelekhin/ansible-role-postgres-exporter/compare/v1.1.2...v1.1.3) (2023-07-01)


### Fixes

* **version:** postgres_exporter updated to `0.13.1` release ([#12](https://github.com/antmelekhin/ansible-role-postgres-exporter/issues/12)) ([b34d8f7](https://github.com/antmelekhin/ansible-role-postgres-exporter/commit/b34d8f745aee9a51eeb2c6bda7180df8ab328503))

## [1.1.2](https://github.com/antmelekhin/ansible-role-postgres-exporter/compare/v1.1.1...v1.1.2) (2023-06-28)


### Continuous Integration

* add release type `improv` ([eac00af](https://github.com/antmelekhin/ansible-role-postgres-exporter/commit/eac00af4b7992936a6ee57af0f26ab93ff683e0a))


### Fixes

* windows absolute paths ([8247824](https://github.com/antmelekhin/ansible-role-postgres-exporter/commit/82478245480192a2909a5045bde78c995137aa10))

## [1.1.1](https://github.com/antmelekhin/ansible-role-postgres-exporter/compare/v1.1.0...v1.1.1) (2023-06-20)


### Continuous Integration

* fix `update-version.sh` script ([6ded833](https://github.com/antmelekhin/ansible-role-postgres-exporter/commit/6ded8333b1002ffd65830ea86a9f86f33fd43d19))
* update `commit-analyzer` releaseRules and `release-notes-generator` presetConfig ([3cb96e1](https://github.com/antmelekhin/ansible-role-postgres-exporter/commit/3cb96e1e04440dfc9a9d72436c8695bdc2c0ad9c))


### Fixes

* **version:** postgres_exporter updated to `0.12.1` release ([#10](https://github.com/antmelekhin/ansible-role-postgres-exporter/issues/10)) ([7c4c415](https://github.com/antmelekhin/ansible-role-postgres-exporter/commit/7c4c415eb79c901309ff2cb58cc15dd80974fd22))

## [1.1.0](https://github.com/antmelekhin/ansible-role-postgres-exporter/compare/v1.0.3...v1.1.0) (2023-06-18)

### Features

* add configuration for tls and basic auth ([#8](https://github.com/antmelekhin/ansible-role-postgres-exporter/issues/8)) ([b45ee5](https://github.com/antmelekhin/ansible-role-postgres-exporter/commit/b45ee5ee6f2704c494db106307fa69913d044cbd))

## [1.0.3](https://github.com/antmelekhin/ansible-role-postgres-exporter/compare/v1.0.2...v1.0.3) (2023-06-17)

### Documentation

* update supported os ([3d1f4b2](https://github.com/antmelekhin/ansible-role-postgres-exporter/commit/3d1f4b2d1c0d3e18423d2b0b74df59e2c7526548))

### Fixes

* change module used in windows task ([b1298d0](https://github.com/antmelekhin/ansible-role-postgres-exporter/commit/b1298d0b184756f2ad5ac14542df27893623ba68))
* update `postgres_exporter_web_*` variables ([13a4c4c](https://github.com/antmelekhin/ansible-role-postgres-exporter/commit/13a4c4c9a1341ef847c3687bb3376eba18fb7bb3))

## [1.0.2](https://github.com/antmelekhin/ansible-role-postgres-exporter/compare/v1.0.1...v1.0.2) (2023-06-04)

### Fixes

* update version condition for installation task block ([#5](https://github.com/antmelekhin/ansible-role-postgres-exporter/issues/5)) ([47111e6](https://github.com/antmelekhin/ansible-role-postgres-exporter/commit/47111e6b4162fc174c52e6c38a08d5cddf33827e))

## [1.0.1](https://github.com/antmelekhin/ansible-role-postgres-exporter/compare/v1.0.0...v1.0.1) (2023-05-30)

### Fixes

* linting, syntax, workflow and os-support ([#4](https://github.com/antmelekhin/ansible-role-postgres-exporter/issues/4)) ([7b63943](https://github.com/antmelekhin/ansible-role-postgres-exporter/commit/7b639430421b3906abfec57c5a72ba4fbbaa38d3))
