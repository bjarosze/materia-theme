#!/usr/bin/env bash

THEME_NAME="Materia-adapta"
TARGET_DIR=${TARGET_DIR-$HOME/.themes}
DEST_PATH="$TARGET_DIR/$THEME_NAME"

COLOR_VARIANT=dark
SIZE_VARIANT=standard

THEME_DIR_BASE="$DEST_PATH" ./parse-sass.sh

./install.sh --dest "$TARGET_DIR" --name "$THEME_NAME" --color "$COLOR_VARIANT" --size "$SIZE_VARIANT"

git checkout *.css
