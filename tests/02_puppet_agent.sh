#!/bin/sh
# Test shell script to ensure that the puppet agent is installed
# and running.

set -x
# Is puppet running?
if $( grep -q '7\.' /etc/redhat-release )
then
  systemctl status puppet 
else
  service puppet status
fi
