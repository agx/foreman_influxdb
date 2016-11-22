# ForemanInfluxdb

Adds influxdb support for [Foreman](http://theforeman.org).

This Foreman plugin allows to use influxdb to track performance
metrics of your foreman instances.

You will need to install a influxdb instance to use this plugin.

## Configuration

The influxdb host(s) and options can be changed by adding settings to
`/usr/share/foreman/config/settings.plugins.d/foreman-influxdb.yaml`,
or Foreman's own `settings.yaml`.

Example config file:

```yaml
:influxdb:
  :hosts:
    - localhost
  :port: 8086
```

The InfluxDB server needs to have a database named *theforeman*
already. It can be created via

    influx -execute "CREATE DATABASE theforeman"

[![Build Status](https://travis-ci.org/agx/foreman_influxdb.svg?branch=master)](https://travis-ci.org/agx/foreman_influxdb)

## Copyright
   
Copyright (c) 2016 Guido Günther
Copyright (c) 2014-2015 Ohad Levy
   
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.
   
This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.
   
You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
