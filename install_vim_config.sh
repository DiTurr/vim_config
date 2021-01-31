#!/bin/bash

# check if ~/.vim already exists
if [ -d ~/.vim ]
then
    echo "[INFO] ~/.vim already exist in the system."
else 
    mkdir ~/.vim
    echo "[INFO] ~/.vim folder created correctly."
fi

# check if ~/.vim/ftdetect already existes in the system
# if [ -d ~/.vim/ftdetect ]
# then
#     echo "[INFO] ~/.vim/ftdetect already exist s in the system."
# else
#     mkdir ~/.vim/ftdetect 
#     echo "[INFO] ~/.vim/ftdetect folder created correctly."
# fi

# 
# touch ~/.vim/ftdetect/python.vim
# echo "au BufRead,BufNewFile *.py setfiletype python">>~/.vim/ftdetect/python.vim


# check if ~/.vim/syntax already exists in the sistem  
if [ -d ~/.vim/syntax ]
then
    echo "[INFO] ~/.vim/syntax alerady exists in the system."
else
    mkdir ~/.vim/syntax
    echo "[INFO] ~/.vim/syntax folder created correctly."
fi

cp python.vim ~/.vim/syntax
cp .vimrc ~/

