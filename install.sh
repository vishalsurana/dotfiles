#!/bin/bash
cd ${HOME}/dotfiles
for f in .*; do
	if [[ -f $f ]]; then ln -s ${HOME}/dotfiles/$f ${HOME}/$f; fi
done
rm -rf ${HOME}/.git
