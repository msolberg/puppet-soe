#!/bin/sh
# Test shell script to ensure that /etc/motd is set by
# puppet and that a contact has been specified in the file

set -x
# Did we set the message of the day correctly?
grep -q puppet /etc/motd

# Is a contact set in the motd?
grep -q 'Contact:\s\+\w\+' /etc/motd

