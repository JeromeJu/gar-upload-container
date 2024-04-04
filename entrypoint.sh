#!/bin/sh -l

source="$1"
target="$2"
as="$3"

if [ -z "$source" ] || [ -z "$target" ]; then
  echo "Error: Required variables (source, target) are not set."
  exit 1
fi

if [ -n "$as" ]; then
  gar-upload --source "$source" --target "$target" --as "$as"
else
  gar-upload --source "$source" --target "$target"
fi