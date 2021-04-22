#!/bin/bash

if [ "$#" -lt 1 ] ; then
	echo "Destination path missing"
	exit 1
fi

DEST=$1

# TODO: verify that DEST is not a subdir of pwd
mkdir -p $DEST

for url in `sed '/^#/ d' sources.list` ; do
	git -C $DEST clone $url
done

