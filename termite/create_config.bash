#!/bin/bash
# create_config for -- <<PROGNAME>>

prgname="TERMITE"

echo -e "\e[1;36mInstalling ... ${prgname} ... configuration files ...\e[0m"
sleep 1

source INSTALL_ALL/config.bash

main()
{
    if [[ ! ( -d ~/.config/termite ) ]] ; then
        mkdir --mode=700 -p ~/.config/termite
    fi
    ln -fsv ${repoPath}/termite/config ~/.config/termite/config
}

main
exit 0
