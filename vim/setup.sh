#!/bin/bash
BASEDIR=$(readlink -f $0 | xargs dirname)
ln -s -r $BASEDIR/vimrc ~/.vimrc
