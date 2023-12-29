#!/usr/bin/env bash

set -x

if [ $# -eq 0 ]; then
  echo "You must provide an argument for host you wish to set up."
  echo "Example:./setup_host.sh devops-project.top"
  exit 1
fi

script_dir=$(dirname "$(readlink -f "$0")")

scp ${script_dir}/check_mk_agent $1:/usr/bin/check_mk_agent
scp ${script_dir}/check_mk_agent@.service ${script_dir}/check_mk_agent.socket $1:/etc/systemd/system/
ssh $1 "systemctl daemon-reload"

ssh $1 "systemctl start check_mk_agent.socket && systemctl enable check_mk_agent.socket"

ssh $1 "mkdir -p /root/services/checkmk/agent/"
scp ${script_dir}/add_host.sh ${script_dir}/.env $1:/root/services/checkmk/agent/
ssh $1 "/root/services/checkmk/agent/add_host.sh"
