#!/bin/bash

groupadd -g 10000 maintgrp
useradd -g maintgrp -u 10000 maint
echo "klic2001!" | passwd --stdin maint

sudo chmod u+w /etc/sudoers.d
sudo echo "maint	ALL=(ALL)	ALL" >> /etc/sudoers.d/maint
sudo chmod u-w /etc/sudoers.d
