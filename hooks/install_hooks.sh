#!/bin/bash

echo "installing hooks ..."

# get path of current file
script_dir_path="$(dirname "$(realpath $0)")"
hooks_dir_path="$script_dir_path/hooks"
root_dir_path="$(dirname "$script_dir_path")"

# delete hooks directory if exists
rm -rf "$root_dir_path/.git/hooks"

# create hooks directory symbolic link
ln -s "$hooks_dir_path" "$root_dir_path/.git/hooks"

echo "hooks installed !"