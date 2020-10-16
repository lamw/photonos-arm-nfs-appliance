#!/bin/bash -eux

##
## Misc configuration
##

echo '> Disable IPv6'
echo "net.ipv6.conf.all.disable_ipv6 = 1" >> /etc/sysctl.conf

echo '> Applying latest Updates...'
tdnf -y update

echo '> Installing Additional Packages...'
tdnf install -y \
  awk \
  open-vm-tools \
  logrotate \
  wget \
  unzip \
  tar \
  nfs-utils

echo '> Enabling and Starting VMware Tools ...'
systemctl enable vmtoolsd.service
systemctl start vmtoolsd.service

echo '> Done'
