#!/bin/bash

if [ "$#" -lt 1 ] ; then
	echo "Destination path missing"
	exit 1
fi

DEST=$1

DEST=$(readlink -f $DEST)
MYPWD=$(readlink -f .)
if [ "${DEST##$MYPWD}" != "$DEST" ] ; then
	echo "destination cannot be a sub-directory of the current one"
	exit 1
fi

mkdir -p $DEST

for url in `sed '/^#/ d' sources.list` ; do
	git -C $DEST clone $url
done

