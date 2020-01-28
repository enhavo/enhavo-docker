#!/bin/bash
set -e
if [[ ! -e /etc/service/sshd/down && ! -e /etc/ssh/key/ssh_host_rsa_key ]] || [[ "$1" == "-f" ]]; then
	echo "No SSH host key available. Generating one..."
	export LC_ALL=C
	ssh-keygen -f /etc/ssh/key/ssh_host_key -N '' -t rsa
    ssh-keygen -f /etc/ssh/key/ssh_host_rsa_key -N '' -t rsa
    ssh-keygen -f /etc/ssh/key/ssh_host_dsa_key -N '' -t dsa
fi

if [[ ! -e /etc/service/sshd/down ]] || [[ "$1" == "-f" ]]; then
	service ssh start
fi