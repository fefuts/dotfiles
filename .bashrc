[ -n "$PS1" ] && source ~/.bash_profile

growl() { echo -e $'\e]9;'${1}'\007' ; return  ; }
