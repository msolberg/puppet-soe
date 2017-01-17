#!/bin/sh
# Test shell script to ensure that ntp is installed

set -x
# Is ntp installed?
rpm -q ntp
exit $?
