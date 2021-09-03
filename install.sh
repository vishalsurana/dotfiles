#!/bin/bash
cd ${HOME}/dotfiles
for f in .*; do
	if [[ -f $f ]]; then ln -s ${HOME}/dotfiles/$f ${HOME}/$f; fi
done
rm -rf ${HOME}/.git

git config --global merge.tool vscode
git config --global mergetool.vscode.cmd 'code --wait $MERGED'
git config --global diff.tool vscode
git config --global difftool.vscode.cmd 'code --wait --diff $LOCAL $REMOTE'
