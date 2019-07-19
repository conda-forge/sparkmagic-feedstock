#!/bin/sh
cd sparkmagic && python -m pip install . -vv --no-deps

POST_LINK="$PREFIX"/bin/.sparkmagic-post-link.sh
PRE_UNLINK="$PREFIX"/bin/.sparkmagic-pre-unlink.sh

mkdir -p ${PREFIX}/bin

cp ${RECIPE_DIR}/post-link.sh "$POST_LINK"
cp ${RECIPE_DIR}/pre-unlink.sh "$PRE_UNLINK"

chmod +x "$POST_LINK" "$PRE_UNLINK"
