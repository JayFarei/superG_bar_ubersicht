#!/bin/sh

# this script will copy the content of the development folder in the ubersicht folder - overriding existing files

# source folder: $HOME/documents/development/superG_bar_ubersicht/widgets/
# destination folder: $HOME/Library/Application\ Support/Übersicht/widgets/superG_bar

rsync -r /Users/gabrielefarei/Documents/Development/superG_bar_ubersicht/widgets/ $HOME/Library/Application\ Support/Übersicht/widgets/superG_bar


