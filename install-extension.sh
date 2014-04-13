#!/usr/bin/env bash

extension_name=workspace-switcher-wrapAround@wrowclif.org
extensions_path=${HOME}/.local/share/gnome-shell/extensions

install -m 600 metadata.json ${extensions_path}/${extension_name}

files=(extension.js stylesheet.css)
for f in ${files[@]}; do
  install -m 644 ${f} ${extensions_path}/${extension_name}
done

gnome-shell --replace &
