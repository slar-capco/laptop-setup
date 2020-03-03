#!/bin/bash

source _utils.sh

# ------------------------------------------------------------------------------
e_pending "Checking applications"
# ------------------------------------------------------------------------------


if has_command "brew cask"; then
  if ! has_app "Google Chrome"; then
    get_consent "Install Google Chrome.app"
    if has_consent; then
      e_pending "Installing google-chrome"
      brew cask install google-chrome
      test_app "Google Chrome"
    fi
  fi
fi

if has_command "brew cask"; then
  if ! has_app "Visual Studio Code"; then
    get_consent "Install Visual Studio Code.app"
    if has_consent; then
      e_pending "Installing visual-studio-code"
      brew cask install visual-studio-code
      test_app "Visual Studio Code"
    fi
  fi
fi


if has_command "brew cask"; then
  if ! has_app "IntelliJ IDEA CE"; then
    get_consent "IntelliJ IDEA CE.app"
    if has_consent; then
      e_pending "Installing intellij-idea-ce"
      brew cask install intellij-idea-ce
      test_app "IntelliJ IDEA CE"
    fi
  fi
fi

# TODO
#   Postman?