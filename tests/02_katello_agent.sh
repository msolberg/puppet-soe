#!/bin/sh
# Test shell script to ensure that the katello agent is installed
# and running.

set -x
# Is goferd running?
if $( grep -q '7\.' /etc/redhat-release )
then
  systemctl status goferd
else
  service goferd status
fi
