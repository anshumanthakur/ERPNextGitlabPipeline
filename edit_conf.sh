#!/bin/bash

# Specify the path to the configuration file
config_file="/etc/mysql/mariadb.conf.d/50-server.cnf"

# Define the configurations with one new line between each key-value pair
server_configs="user=mysql\npid-file=/run/mysqld/mysqld.pid\nsocket=/run/mysqld/mysqld.sock\nbasedir=/usr\ndatadir=/var/lib/mysql\ntmpdir=/tmp\nlc-messages-dir=/usr/share/mysql\nbind-address=127.0.0.1\nquery_cache_size=16M\nlog_error=/var/log/mysql/error.log"

mysqld_configs="innodb-file-format=barracuda\ninnodb-file-per-table=1\ninnodb-large-prefix=1\ncharacter-set-client-handshake=FALSE\ncharacter-set-server=utf8mb4\ncollation-server=utf8mb4_unicode_ci"

mysql_configs="\n[mysql]\ndefault-character-set=utf8mb4"

config_to_comment1="character-set-server  = utf8mb4"
config_to_comment2="collation-server      = utf8mb4_general_ci"


# Search for [server] label and append the configurations under it
sed -i '/\[server\]/a '"$server_configs" "$config_file"

# Search for [mysqld] label and append the configurations under it
sed -i '/\[mysqld\]/a '"$mysqld_configs" "$config_file"

echo -e "$mysql_configs" >> "$config_file"
sed -i "s/^$config_to_comment1/#$config_to_comment1/" "$config_file"
sed -i "s/^$config_to_comment2/#$config_to_comment2/" "$config_file"

