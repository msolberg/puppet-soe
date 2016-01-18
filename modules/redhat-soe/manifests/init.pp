# == Class: soe
#
# This is an example puppet module which can be used as a starting
# point for developing a Standard Operating Environment with Red Hat
# Satellite 6.
#
# === Parameters
#
# Document parameters here.
#
# [*contact*]
#   Specify a contact to be listed for this machine in /etc/motd.
#
# === Examples
#
#  class { soe:
#    contact => 'root@example.com',
#  }
#
# === Authors
#
# Michael Solberg <msolberg@redhat.com>
#
# === Copyright
#
# Copyright 2016 Michael Solberg <msolberg@redhat.com>
#
class soe (
  $contact        = 'root@example.com',
)
{
  # Tell people that we're puppet-managed
  file { "/etc/motd":
    content => template('soe/motd.erb')
  }
  
  # Make sure that the katello agent is installed
  package { 'katello-agent':
    ensure => installed,
  }
  
  # Ensure that goferd is running
  service { 'goferd':
    ensure => running,
    enable => true,
  }

}
