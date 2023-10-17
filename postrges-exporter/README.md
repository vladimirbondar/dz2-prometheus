https://github.com/prometheus-community/postgres_exporter
https://github.com/wrouesnel/postgres_exporter

/usr/bin is for distribution-managed normal user programs.
/usr/local/bin is for normal user programs not managed by the distribution package manager, e.g. locally compiled packages. You should not install them into /usr/bin because future distribution upgrades may modify or delete them without warning.

По умолчанию, postgres_exporter не умеет собирать данные по запросам. Но в PostgreSQL есть очень полезное расширение pg_stat_statements, которое именно этим и занимается.
https://habr.com/ru/articles/345370/  

