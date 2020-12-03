#!/bin/bash
rm /etc/bosminer.toml
cat >/etc/bosminer.toml <<EOL
[format]
version = '1.1+'
model = 'Antminer S9'
generator = 'BOSminer+ 0.2.0-ea64aec8e'
timestamp = 1594916448

[temp_control]
target_temp = 89.0
hot_temp = 110.0
dangerous_temp = 120.0

[[group]]
name = 'group'
quota = 1

[[group.pool]]
url = 'stratum+tcp://stratum.slushpool.com:3333'
user = 'UpstreamDataInc.test'
password = '123'

[autotuning]
enabled = true
psu_power_limit = 900
EOL
cat /etc/bosminer.toml