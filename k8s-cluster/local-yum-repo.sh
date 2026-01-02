#! /bin/bash

# Create a mount point and mount the ISO

sudo mkdir -pv /mnt/disc
sudo mount -o loop /dev/sr0 /mnt/disc

sudo tee /etc/yum.repos.d/rhel9-local.repo << EOF

[local-baseos]
name=RHEL 9.1 BaseOS
baseurl=file:///mnt/disc/BaseOS
enabled=1
gpgcheck=0

[local-appstream]
name=RHEL 9.1 AppStream
baseurl=file:///mnt/disc/AppStream
enabled=1
gpgcheck=0
EOF

