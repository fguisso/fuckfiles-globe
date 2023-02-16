#!/usr/bin/env bash

set -e

# VPN
apt install -y openconnect

# Tsuru
curl -s https://packagecloud.io/install/repositories/tsuru/stable/script.deb.sh | bash
sudo apt-get install tsuru-client
tsuru target-add default --set-current $TSURU_TARGET
