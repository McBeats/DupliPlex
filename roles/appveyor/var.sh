#!/bin/bash
#
# [PlexGuide Menu]
#
# GitHub:   https://github.com/Admin9705/PlexGuide.com-The-Awesome-Plex-Server
# Author:   Admin9705
# URL:      https://plexguide.com
#
# PlexGuide Copyright (C) 2018 PlexGuide.com
# Licensed under GNU General Public License v3.0 GPL-3 (in short)
#
#   You may copy, distribute and modify the software as long as you track
#   changes/dates in source files. Any modifications to our software
#   including (via compiler) GPL-licensed code must also be made available
#   under the GPL along with build & install instructions.
#
#################################################################################
echo "plexguide.com" > /var/plexguide/server.domain
echo "1.1.1.1" > /var/plexguide/server.ip
echo "" > /var/plexguide/server.ports
echo "/mnt" > /var/plexguide/server.hd.path
echo "" > /var/plexguide/server.ht
echo "portainer" > /var/plexguide/tld.program
echo "1" > /var/plexguide/pg.ansible.stored
echo "2" > /var/plexguide/pg.ansible
