.PHONY: vim vundle tmux oh-my-zsh zsh

init: vim tmux zsh

oh-my-zsh:
	[ -d ~/.oh-my-zsh/.git ] || \
		git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

zsh: oh-my-zsh
	ln -fs `pwd`/zshrc ~/.zshrc

vundle:
	mkdir -p ~/.vim/bundle
	[ -d ~/.vim/bundle/vundle/.git ] || \
		git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

vim: vundle
	ln -fs `pwd`/vimrc ~/.vimrc
	vim -c 'execute "BundleInstall" | q | q'
	mkdir -p ~/.vim/colors
	ln -fs ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/solarized.vim

tmux:
	mkdir -p ~/.tmux
	ln -fs `pwd`/tmux.conf ~/.tmux.conf
