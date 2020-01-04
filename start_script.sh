#! /bin/bash
cp -r /host.ssh/ ~/.ssh
chown -R root:root ~/.ssh
chmod -R 700 ~/.ssh
service ssh restart
tail -f /dev/null
