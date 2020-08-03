#!/bin/bash
#
# Setting up a DigitalOcean Droplet
#
# (c) Parv Patel
#

# IP ADDRESS FROM PARAMETER
MASTER_IP=$1

# GET APPROPRIATE SETUP FILE
SETUP_FILE=$2

# COPYING THE FILES
scp ${SETUP_FILE} root@${MASTER_IP}:

# EXECUTING THE INSTALLATION SCRIPT
ssh root@${MASTER_IP} bash /root/${SETUP_FILE}
