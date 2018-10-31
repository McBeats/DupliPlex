#!/bin/bash
#
# GitHub:   https://github.com/Admin9705/PlexGuide.com-The-Awesome-Plex-Server
# Author:   Admin9705 & Deiteq & FlickerRate
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

######################################################## Declare Variables
sname="PG Installer: Cleaner Functions"
pg_cleaner=$( cat /var/plexguide/pg.cleaner )
pg_cleaner_stored=$( cat /var/plexguide/pg.cleaner.stored )
######################################################## START: PG Log
sudo echo "INFO - Start of Script: $sname" > /var/plexguide/pg.log
sudo bash /opt/plexguide/roles/log/log.sh
######################################################## START: Main Script
if [ "$pg_cleaner" == "$pg_cleaner_stored" ]; then
      echo "" 1>/dev/null 2>&1
    else
      echo "Installing PG Cleaner Essentials" > /var/plexguide/message.phase
      bash /opt/plexguide/menu/interface/install/scripts/message.sh
      ansible-playbook /opt/plexguide/pg.yml --tags autodelete &>/dev/null &
      ansible-playbook /opt/plexguide/pg.yml --tags clean &>/dev/null &
      ansible-playbook /opt/plexguide/pg.yml --tags clean-encrypt &>/dev/null &
      cat /var/plexguide/pg.cleaner > /var/plexguide/pg.cleaner.stored
  fi
######################################################## END: Main Script
#
#
######################################################## END: PG Log
sudo echo "INFO - END of Script: $sname" > /var/plexguide/pg.log
sudo bash /opt/plexguide/roles/log/log.sh
