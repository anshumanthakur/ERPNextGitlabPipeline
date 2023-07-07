#!/usr/bin/expect -f

spawn mysql_secure_installation

expect "Enter current password for root (enter for none):"
send "\r"

expect "Switch to unix_socket authentication \[Y/n\]"
send "y\r"

expect "Set root password? \[Y/n\]"
send "y\r"

expect "New password:"
send "erpnext\r"

expect "Re-enter new password:"
send "erpnext\r"

expect "Remove anonymous users? \[Y/n\]"
send "y\r"

expect "Disallow root login remotely? \[Y/n\]"
send "y\r"

expect "Remove test database and access to it? \[Y/n\]"
send "y\r"

expect "Reload privilege tables now? \[Y/n\]"
send "y\r"

expect eof
