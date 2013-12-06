#!/bin/bash
dir=`dirname $0`
user_config_dir='~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/'

cp -f $user_config_dir/Package\ Control.sublime-settings $dir/User/
cp -f $user_config_dir/Preferences.sublime-settings $dir/User/
cp -f $user_config_dir/getset.sublime-snippet $dir/User/