#!/bin/sh
if [ -z $1 ]; then
	printf "\n%-2s %s\n\n" ">" "Need version number (e.g. $0 3.3.1)"
else
	ZIP=TWRPv$1-perry-$(date +"%m%d%y").zip
	zip -r9 $ZIP * -x .git README.md *placeholder > /dev/null
	printf "\n%-2s %s\n\n" ">" "Zip Complete  -->  $ZIP"
fi
