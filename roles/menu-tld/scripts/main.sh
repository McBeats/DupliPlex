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
docker ps --format '{{.Names}}' > /tmp/backup.list
sed -i -e "/traefik/d" /tmp/backup.list
sed -i -e "/watchtower/d" /tmp/backup.list
sed -i -e "/word*/d" /tmp/backup.list
sed -i -e "/x2go*/d" /tmp/backup.list
sed -i -e "/plexguide/d" /tmp/backup.list
sed -i -e "/cloudplow/d" /tmp/backup.list
sed -i -e "/phlex/d" /tmp/backup.list

rm -rf /tmp/backup.build 1>/dev/null 2>&1
bash /opt/plexguide/roles/tld/scripts/list.sh
#### Commenting Out To Let User See
while read p; do
  echo -n $p >> /tmp/backup.build
  echo -n " " >> /tmp/backup.build
done </tmp/backup.list
