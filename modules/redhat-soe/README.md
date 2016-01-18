# soe

#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
    * [What soe affects](#what-soe-affects)
    * [Beginning with soe](#beginning-with-soe)
4. [Usage](#usage)
5. [Limitations](#limitations)
6. [Development](#development)

## Overview

This is an example puppet module which can be used as a starting point
for developing a Standard Operating Environment with Red Hat Satellite
6.

## Module Description

This module accomplishes the following tasks:
* Sets /etc/motd.
* Ensures that the Satellite 6 agent is installed and running.

## Setup

### What soe affects

* /etc/motd
* Installs the katello agent and ensures that its running

### Beginning with soe

This module is provided as a example.

## Usage

To include the class:

```
include '::soe'
```

To set the contact for the machine:

```
class { '::soe':
  contact => 'root@example.com',
}
```

## Limitations

This module has been tested on RHEL 7.

## Development

Feel free to fork this module as a starting point for your own SOE module.

