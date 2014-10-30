#!/bin/bash

. ./setup.sh

# Check if node is installed
if [ -f $HOME/local/bin/node ]; then
    ln -s $HOME/local/bin/node /usr/bin/node
    ln -s $HOME/local/lib/node /usr/lib/node
    ln -s $HOME/local/bin/npm /usr/bin/npm
    ln -s $HOME/local/bin/node-waf /usr/bin/node-waf

    echo "${green}>>>" 
    echo ">>> Finished linking node to /usr/bin." 
    echo ">>>"
else
    echo "${red}>>> Node is not installed. Can't link."
fi
echo "${reset}"
