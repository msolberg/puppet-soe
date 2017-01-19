#!/bin/sh
# Test shell script to ensure that wget is installed

set -x
# Is wget installed?
rpm -q vim-enhanced
exit $?
