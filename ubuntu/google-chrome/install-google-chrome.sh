#!/usr/bin/env bash

if [[ "$RUN_APT_UPDATE_BEFORE" != "no" ]]; then
  apt update
fi

# "ubuntu/curl/install-curl.sh"
apt install -y curl
# "ubuntu/curl/install-curl.sh"

rm /tmp/google-chrome-stable_current_amd64.deb
curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -o /tmp/google-chrome-stable_current_amd64.deb

dpkg -i /tmp/google-chrome-stable_current_amd64.deb
apt install -y -f

rm /tmp/google-chrome-stable_current_amd64.deb
