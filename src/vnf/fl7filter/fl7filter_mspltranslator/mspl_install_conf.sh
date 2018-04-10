#!/bin/bash

# backup previous configuration
sudo mkdir /etc/httpd/conf.d.old/
sudo cp -r /etc/httpd/conf.d/ /etc/httpd/conf.d.old/
sudo mkdir /etc/httpd/modsecurity.d.old/
sudo cp -r /etc/httpd/modsecurity.d/ /etc/httpd/modsecurity.d.old/

# translate MSPL
cd /home/centos/utils/fl7filter_mspltranslator/
sudo ./mspltranslator

# copy new configuration
sudo cd proxy-conf/
sudo cp default-site.conf /etc/httpd/conf.d/