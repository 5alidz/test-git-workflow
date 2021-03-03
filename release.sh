#!/bin/bash

tag=$(git tag --list | tail -n 1)

changelog -t $tag -f ./.release-notes
gh release create $tag -F ./.release-notes

# clean up
rm -rf ./.release-notes