#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Usage: $0 <src tarball path>"
	exit 1
fi

unzip $1
mv v3.2.0rc1 tpcds-kit
