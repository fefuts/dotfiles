#!/bin/bash
dir=`dirname $0`
config_dir=~/.apps/iterm
config_file='com.googlecode.iterm2.plist'

if [ -d "$config_dir" ]; then
    number=$(ps aux | grep -v grep| grep iTerm | wc -l)
    if [ $number = 1 ]; then
        cp -f $dir/$config_file $config_dir\
        && echo "'$dir/$config_file' copied to '$config_dir'"\
        || (echo "Error copying '$dir/$config_file' to '$config_dir'" && exit 4)
    else
        echo "iTerm2 is running. Please close it and run again"
        exit 3
    fi
else
    echo "iTerm2 config dir '$config_dir' does not exists"
    echo "To setup config dir, go to iTerm2->Preferences, \
        check 'Load preferences froma a custom folder or URL' and browse to '$config_dir'"
    exit 2
fi