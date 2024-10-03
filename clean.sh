#!/bin/bash

# Define the directory to clean
TARGET_DIR="booteth/data"

# Define the files and directories to exclude
EXCLUDE=("genesis.json" "key" "booteth" "nodeth1" "nodeth2" "nodeth3")

# Convert the EXCLUDE array to a find expression
EXCLUDE_EXPR=$(printf "! -name %s " "${EXCLUDE[@]}")

# Find and remove all files and directories except the excluded ones
find "$TARGET_DIR" -mindepth 1 -maxdepth 1 $EXCLUDE_EXPR -exec rm -rf {} +

echo "Cleaned $TARGET_DIR, excluding ${EXCLUDE[*]}"



# Define the directory to clean
TARGET_DIR="nodeth1/data"

# Define the files and directories to exclude
EXCLUDE=("genesis.json" "key" "booteth" "nodeth1" "nodeth2" "nodeth3")

# Convert the EXCLUDE array to a find expression
EXCLUDE_EXPR=$(printf "! -name %s " "${EXCLUDE[@]}")

# Find and remove all files and directories except the excluded ones
find "$TARGET_DIR" -mindepth 1 -maxdepth 1 $EXCLUDE_EXPR -exec rm -rf {} +

echo "Cleaned $TARGET_DIR, excluding ${EXCLUDE[*]}"


# Define the directory to clean
TARGET_DIR="nodeth2/data"

# Define the files and directories to exclude
EXCLUDE=("genesis.json" "key" "booteth" "nodeth1" "nodeth2" "nodeth3")

# Convert the EXCLUDE array to a find expression
EXCLUDE_EXPR=$(printf "! -name %s " "${EXCLUDE[@]}")

# Find and remove all files and directories except the excluded ones
find "$TARGET_DIR" -mindepth 1 -maxdepth 1 $EXCLUDE_EXPR -exec rm -rf {} +

echo "Cleaned $TARGET_DIR, excluding ${EXCLUDE[*]}"


# Define the directory to clean
TARGET_DIR="nodeth3/data"

# Define the files and directories to exclude
EXCLUDE=("genesis.json" "key" "booteth" "nodeth1" "nodeth2" "nodeth3")

# Convert the EXCLUDE array to a find expression
EXCLUDE_EXPR=$(printf "! -name %s " "${EXCLUDE[@]}")

# Find and remove all files and directories except the excluded ones
find "$TARGET_DIR" -mindepth 1 -maxdepth 1 $EXCLUDE_EXPR -exec rm -rf {} +

echo "Cleaned $TARGET_DIR, excluding ${EXCLUDE[*]}"