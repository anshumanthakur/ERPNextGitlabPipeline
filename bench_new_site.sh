#!/usr/bin/expect -f

set timeout 60

spawn bench new-site ibrahim.com

expect "MySQL root password:"
send "erpnext\r"

expect "Set Administrator password:"
send "admin\r"

expect "Re-enter Administrator password:"
send "admin\r"

expect eof