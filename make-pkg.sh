#!/bin/bash
./configure  --with-layout=debian --with-kohana_system=/usr/share/php/kohana2/system
chmod a+r * -R

export DEB_HOST_ARCH=amd64
export ARCH=amd64
export DIST=jessie
git-buildpackage --git-pbuilder --git-arch=$ARCH --git-dist=$DIST --git-tag
