#!/bin/bash
dir=`dirname $0`
config_dir=~/.apps/iterm
config_file='com.googlecode.iterm2.plist'

if [ -d "$config_dir" ]; then
    cp -f $config_dir/$config_file $dir/ && echo "'$dir/$config_file' copied to '$config_dir'"
else
    echo "iTerm2 config dir '$config_dir' does not exists"
    echo "To setup config dir, go to iTerm2->Preferences, \
        check 'Load preferences froma a custom folder or URL' and browse to '$config_dir'"
    exit 2
fi