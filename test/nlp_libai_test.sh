#!/bin/bash

SUB_DIR_PATH="/workspace/CoModels/nlp/libai"
WORKSPACE="/workspace/temp_model"

if [ $# -ne 1 ]; then
  echo "Usage: $0 {all|random|n}"
  exit 1
fi

option="$1"

subdirs=($(find "$SUB_DIR_PATH" -mindepth 1 -maxdepth 1 -type d))

process_subdir() {
  local dir="$1"

  rm -rf "$WORKSPACE"
  mkdir -p "$WORKSPACE"

  cp -rL "$dir"/* "$WORKSPACE"

  cd "$WORKSPACE"

  if [ -f "./train.sh" ]; then
    bash ./train.sh
  else
    echo "train.sh not found in $WORKSPACE"
  fi
  if [ -f "./infer.sh" ]; then
    bash ./infer.sh
  else
    echo "infer.sh not found in $WORKSPACE"
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
