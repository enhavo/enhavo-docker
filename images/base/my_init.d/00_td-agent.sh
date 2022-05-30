#!/bin/bash
set -e

host=`echo $FLUENTD_HOST | sed -e 's/^[[:space:]]*//'`

if [ -n "$host" ]; then
  echo "start td-agent"
	FLUENT_CONF=/etc/td-agent/td-agent.conf FLUENT_PLUGIN=/etc/td-agent/plugin FLUENT_SOCKET=/var/run/td-agent/td-agent.sock /opt/td-agent/bin/fluentd --log /var/log/td-agent/td-agent.log --daemon /var/run/td-agent/td-agent.pid
	until [ -S /var/run/td-agent/td-agent.sock ]
  do
       sleep 1
  done
	chmod 777  /var/run/td-agent/td-agent.sock
fi
