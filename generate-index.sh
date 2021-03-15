#!/usr/bin/env nix-shell
#!nix-shell -p jq findutils -i bash

cd recordings/ && find -name \*.mp3 | jq -nR '[inputs | select(length>0)]' > index.json
