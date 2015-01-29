#!/bin/sh

# Add backports to get access to newer version of Munin
sudo bash -c "echo \"deb http://http.debian.net/debian wheezy-backports main\" > /etc/apt/sources.list.d/backports.list"
sudo apt-get update

sudo apt-get -y -t wheezy-backports install munin-node munin


#
# -- Configure and start Munin-node ---
#

# Lazy auto-conf
# Will cause a number of harmless warnings, but get us up and going
# From: http://munin.readthedocs.org/en/latest/installation/configuration.html
sudo bash -c "munin-node-configure --shell --families=contrib,auto | sh -x"

sudo /etc/init.d/munin-node start


#
# -- Configure and munin-master ---
#

# Add hosts to /etc/munin/munin.conf here, if more than one server.
# localhost present per default, so not needed for now.

# Add munin graphs to HTTP server
# See templates:
# http://munin.readthedocs.org/en/latest/example/webserver/nginx.html



