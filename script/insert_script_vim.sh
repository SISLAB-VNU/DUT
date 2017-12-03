# -----------------------------------------------------------------------------
# Project name   :
# File name      : insert_script_vim.sh
# Created date   : Nov 22 2017
# Author         : Huy-Hung Ho
# Last modified  : Nov 22 2017 17:50
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/bash

# Install modelsim in Linux, insert vcom, vsim to $PATH
# Install plugin to vimrc
# 	Plugin 'https://github.com/suoto/hdlcc', {'do': 'cd ../ && pip install --user ./hdlcc'}
# 	Plugin 'suoto/vim-hdl'

# chmod u+x insert_script_vim.sh
# ./insert_script_vim.sh

mkdir -p ~/.vim/script
cp hdl.vim ~/.vim/script/
echo "au FileType {vhdl,vhd,verilog,systemverilog} source ${HOME}/.vim/script/hdl.vim" >> ~/.vimrc
