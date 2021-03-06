#!/usr/bin/env bash

if [[ "$RUN_APT_UPDATE_BEFORE" != "no" ]]; then
  apt update
fi

# "ubuntu/flatpak/install-flatpak.sh"
add-apt-repository -y ppa:alexlarsson/flatpak

apt update

apt install -y flatpak-builder
# "ubuntu/flatpak/install-flatpak.sh"

flatpak install -y --from https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref
