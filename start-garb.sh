#!/bin/bash

set -e

# Set working dir
cd /etc/garb

# Run GARB
/usr/bin/garbd --cfg /etc/garb/arbitrator.config
