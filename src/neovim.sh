#!/bin/bash 

function link ()
{
	NVIM=/opt/neovim/bin/nvim
	
	sudo update-alternatives --install /usr/bin/vi vi $NVIM 60
	sudo update-alternatives --config vi
	sudo update-alternatives --install /usr/bin/vim vim $NVIM 60
	sudo update-alternatives --config vim
	sudo update-alternatives --install /usr/bin/editor editor $NVIM 60
	sudo update-alternatives --config editor
}

function deps ()
{
	sudo aptitude update && \
	sudo aptitude install \
		libtool libtool-bin autoconf \
		automake cmake g++ \
		pkg-config unzip
}

function clone ()
{
	if [ ! -d neovim ]; then
		git clone https://github.com/neovim/neovim.git
	else
		cd neovim
		git pull
		cd ..
	fi
}

function make ()
{
	cd neovim
	rm -r build
	make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX:PATH=/opt/neovim"
}

function install ()
{
	make install
}


case "$1" in
	link)
		link
		;;
	deps)
		deps
		;;
	clone)
		clone
		;;
	make)
		make
		;;
	install)
		install
		;;
	*)
		deps
		clone
		make
		install
		link
		;;
esac
