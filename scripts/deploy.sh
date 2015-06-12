#!/bin/sh
set -e # exit with nonzero exit code if anything fails

REVISION=`git rev-parse --abbrev-ref HEAD`

if test "$REVISION" = "master"; then 
	# For deployment, send the current paster to the Github Pages
	git push --force origin master:gh-pages
fi
