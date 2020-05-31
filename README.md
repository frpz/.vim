# .vim
Ma configuration pour VIM

Vundle est utilisé pour les packages.

Pour voir la liste des packages, veuillez consulter le fichier "vimrc"

## Install

A noter: il faut avoir GIT installé.

```bash
git clone https://github.com/frpz/.vim.git ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
```

## Mise à jour

Directement depuis VIM:

Pour installer les nouveaux plugins rajoutés dans vimrc:

    :BundleInstall

Pour mettre à jour les packages déja installés:

	 :BundleUpdate

Pour désinstaller les packages qui ont été supprimés du vimrc:

	 :BundleClean

# NeoVim

NeoVim est compatible avec la configuration de VIM.

Pour l'activer, copiez ou linkez le fichier suivant:
```bash
mkdir -p ~/.config/nvim/
cp ~/.vim/init.vim ~/.config/nvim/init.vim
```

