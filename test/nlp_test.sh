#!/bin/bash

EXEC=${2:-train.sh}
SUB_DIR_PATH="/workspace/CoModels/nlp"
WORKSPACE="/workspace/temp_model"

if [ $# -ne 1 ]; then
  echo "Usage: $0 {all|random|n}"
  exit 1
fi

option="$1"

subdirs=("odd_numbers")

process_subdir() {
  local dir="$SUB_DIR_PATH/$1"

  rm -rf "$WORKSPACE"
  mkdir -p "$WORKSPACE"

  cp -rL "$dir"/* "$WORKSPACE"

  cd "$WORKSPACE"

  if [ -f "./$EXEC" ]; then
    bash ./$EXEC
  else
    echo "$EXEC not found in $WORKSPACE"
  fi

  cd - > /dev/null
}

case "$option" in
  "all")
    for dir in "${subdirs[@]}"; do
      process_subdir "$dir"
    done
    ;;
  "random")
    random_index=$((RANDOM % ${#subdirs[@]}))
    process_subdir "${subdirs[$random_index]}"
    ;;
  [0-9]*)
    n="$option"
    for ((i=0; i<n && i<${#subdirs[@]}; i++)); do
      process_subdir "${subdirs[$i]}"
    done
    ;;
  *)
    echo "Invalid option: $option"
    echo "Usage: $0 {all|random|n}"
    exit 1
    ;;
esac

echo "All operations completed."
