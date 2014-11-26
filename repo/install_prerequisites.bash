#!/bin/bash

apt-get update
apt-get install ruby

gem install puppet --no-rdoc --no-ri
puppet module install rtyler/jenkins
puppet module install puppetlabs-apache
puppet module install puppetlabs-vcsrepo
puppet module install puppetlabs-ntp
