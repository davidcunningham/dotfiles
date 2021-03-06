#!/bin/bash

#
# Check if Homebrew is installed
#
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    # https://github.com/mxcl/homebrew/wiki/installation
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update
fi

# Install or update brew packages
#brew tap homebrew/bundle
#brew bundle

# Install node packages
#which -s yo || npm install -g yo
#which -s bower || npm install -g bower
#which -s grunt || npm install -g grunt-cli
#which -s gulp  || npm install -g gulp

# Install XCode command line tools
xcode-select --install
