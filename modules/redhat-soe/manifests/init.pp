# == Class: soe
#
# This is an example puppet module which can be used as a starting
# point for developing a Standard Operating Environment with Foreman
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
  
  # Make sure that the puppet agent is installed
  package { 'puppet-agent':
    ensure => installed,
  }
  
  # Ensure that the puppet agent is running
  service { 'puppet':
    ensure => running,
    enable => true,
  }

}
