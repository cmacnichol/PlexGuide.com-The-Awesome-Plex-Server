#!/bin/bash
# GitHub:   https://github.com/Admin9705/PlexGuide.com-The-Awesome-Plex-Server
# Author:   Admin9705 & Deiteq
# URL:      https://plexguide.com
#
# PlexGuide Copyright (C) 2018 PlexGuide.com
# Licensed under GNU General Public License v3.0 GPL-3 (Read License in File)
#
# Execution: bash /opt/plexguide/roles/folders/scripts/baseline.sh

### STARTING DECLARED VARIABLES #######################################
keyword1="Baseline Install"
keyword2="Folders"

### STARTING LOG ######################################################
echo "INFO - $keyword1: Start Execution of $keyword2 Script" > /var/plexguide/pg.log && bash /opt/plexguide/roles/log/log.sh

### MAIN SCRIPT #######################################################
echo "30" | dialog --gauge "Installing: PlexGuide Folders" 7 50 0
sleep 2
clear
ansible-playbook /opt/plexguide/pg.yml --tags folders
sleep 2

### ENDING: DECLARED VARIABLES 

### ENDING: FINAL LOG ##################################################
echo "INFO - $keyword1: Exiting $keyword2 Script" > /var/plexguide/pg.log && bash /opt/plexguide/roles/log/log.sh