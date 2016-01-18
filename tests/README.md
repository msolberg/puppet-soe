# Test scripts

Tests are written for each piece of functionality that the puppet
module has implemented.  For example, the following puppet code

```
  # Tell people that we're puppet-managed
  file { "/etc/motd":
    content => template('soe/motd.erb')
  }
```

Overwrites the default message of the day file with the template
specified above.  That template is shown below.

```
This system is managed by puppet.
Contact: <%= @contact %>
```

To test to make sure that the puppet module is working, we grep for
the string "puppet" from the file first and then we ensure that a
contact is set by using the following regex:

```
grep -q 'Contact:\s\+\w\+' /etc/motd
```

A similar test is done to ensure that the katello agent is running.
Below is the puppet code:

```
  # Make sure that the katello agent is installed
  package { 'katello-agent':
    ensure => installed,
  }
  
  # Ensure that goferd is running
  service { 'goferd':
    ensure => running,
    enable => true,
  }
```

The shell script "02_katello_agent.sh" runs

```
  systemctl status goferd
```

to ensure that the service is up and running.

These scripts can be run in succession over SSH with the following code:

```
for script in tests/*.sh
  do ssh user@host 'bash -s' < $script
done
```
