#!/bin/bash

release_notes_path=./.release-notes
if [ -f release_notes_path] ; then
  rm -rf release_notes_path
fi

tag=$(git tag --list | tail -n 1)

changelog -t $tag -f release_notes_path
gh release create $tag -F release_notes_path

# clean up
rm -rf release_notes_path