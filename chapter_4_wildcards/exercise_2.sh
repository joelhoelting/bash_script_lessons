#!/bin/bash

if [ $# -ne 0 ]; then   
  echo "Please don't supply any arguments" && exit 1
fi

collect_user_inputs() {
  read -p "Enter file extension: " extension 

  read -p "prefix to files with ${extension} [blank will be YYYY-MM-DD]: " prefix
  [[ -z "${prefix// }" ]] && echo "Using default prefix..." && prefix=$(date +%Y-%m-%d)
    
  read -p "Enter a directory: " directory

  echo "Give all files in directory: $directory with extension: $extension, a prefix: $prefix"
}

collect_user_inputs

echo $directory
cd $directory && ls -l 

for file in *$extension; do
  echo "Copying and Replacing $file"
  new_filename="${prefix}-${file}"
  cp $file $new_filename
  echo $new_filename
done
