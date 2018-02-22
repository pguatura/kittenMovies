#!/bin/bash -e

if [ "x$KITTEN_SECRET" == "x" ]; then
	echo "export KITTEN_SECRET to descrypt files";
	exit 1;
fi

openssl enc -aes-256-cbc -salt -in "$1" -out "$1.crypt" -pass "pass:$KITTEN_SECRET"  -md md5;
