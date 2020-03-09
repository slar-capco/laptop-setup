#!/bin/bash

source _utils.sh

# ------------------------------------------------------------------------------
e_pending "Checking tools"
# ------------------------------------------------------------------------------

if has_command "brew"; then
  if ! has_command "git"; then
    get_consent "Install git"
    if has_consent; then
      e_pending "Installing git"
      brew install git
      test_command "git"
    fi
  fi
fi

if has_command "brew"; then
  if ! has_command "git-flow"; then
    get_consent "Install git-flow"
    if has_consent; then
      e_pending "Installing git-flow"
      brew install git-flow
      test_command "git-flow"
    fi
  fi
fi

if has_command "brew"; then
  if ! has_command "node"; then
    get_consent "Install node (Node via Homebrew)"
    if has_consent; then
      e_pending "Installing node"
      brew install node
      test_command "node"
    fi
  fi
fi

if has_command "brew"; then
  if ! has_command "n"; then
    get_consent "Install n (Node via n)"
    if has_consent; then
      e_pending "Installing n"
      brew install n
      test_command "n"
    fi
  fi
fi

if has_command "brew"; then
  if ! has_command "yarn"; then
    get_consent "Install yarn"
    if has_consent; then
      if has_command "node"; then
        e_pending "Installing yarn"
        brew install yarn
      fi
      test_command "yarn"
    fi
  fi
fi

if has_command 'npm'; then
  get_consent "Upgrade npm"
  if has_consent; then
    e_pending "Upgrading npm"
    npm i -g npm@latest
    test_command "npm"
  fi
fi

if has_command "npm"; then
  get_consent "Install/Upgrade serve (globally via npm)"
  if has_consent; then
    e_pending "Installing/Upgrading serve"
    npm i -g serve@latest
    test_command "serve"
  fi
fi

if has_command "npm"; then
  get_consent "Install/Upgrade eslint/airbnb/prettier combo (globally via npm)"
  if has_consent; then
    e_pending "Installing/Upgrading eslint/airbnb/prettier combo"
    npx install-peerdeps -g eslint-config-airbnb
    npm i -g prettier@latest eslint-config-prettier@latest eslint-plugin-prettier@latest
    test_command "eslint"
    test_command "prettier"
  fi
fi

if has_command 'terraform'; then
  get_consent "Upgrade terraform"
  if has_consent; then
    e_pending "Upgrading terraform"
    brew install terraform
    test_command "terraform"
  fi
fi

if has_command 'kubectl'; then
  get_consent "Upgrade kubectl"
  if has_consent; then
    e_pending "Upgrading kubectl"
    brew install kubectl
    test_command "kubectl"
  fi
fi

if has_command "brew cask"; then
  if has_command 'docker'; then
    get_consent "Upgrade docker"
    if has_consent; then
        e_pending "Upgrading docker"
        brew cask install docker
        test_command "docker"
    fi
  fi
fi

if has_command "brew cask"; then
  if has_command 'gcloud'; then
    get_consent "Upgrade google-cloud-sdk"
    if has_consent; then
        e_pending "Upgrading google-cloud-sdk"
        brew cask install google-cloud-sdk
        test_command "gcloud"
    fi
  fi
fi

if has_command "brew cask"; then
  if has_command 'gpg'; then
    get_consent "Upgrade gpg-suite"
    if has_consent; then
        e_pending "Upgrading gpg-suite"
        brew cask install gpg-suite
        test_command "gpg"
    fi
  fi
fi

if has_command 'az'; then
  get_consent "Upgrade azure-cli"
  if has_consent; then
    e_pending "Upgrading azure-cli"
    brew install azure-cli
    test_command "az"
  fi
fi


##  TODO:
#  AWS CLI, docker-compose, python, java, spark