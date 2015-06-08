#!/bin/bash
set -e # exit with nonzero exit code if anything fails

REVISION=`git rev-parse --abbrev-ref HEAD`

if [ "$REVISION" == "master"]; then 
	git push origin gh-pages
fi
