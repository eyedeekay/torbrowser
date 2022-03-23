#! /usr/bin/env sh

find . -name 'tor*' -exec sh -c 'echo - [{}]\({}\) | sed "s|`whoami`|user|g" | sed "s|./||g"' \;
