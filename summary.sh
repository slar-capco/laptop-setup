#!/bin/bash

source _utils.sh

# ------------------------------------------------------------------------------
e_pending "Creating summary"
# ------------------------------------------------------------------------------

echo ""

e_success "Default commands"
test_command "brew"
test_command "git"
test_command "git-flow"
test_command "node"
test_command "n"
test_command "yarn"
test_command "npm"
test_command "serve"
test_command "eslint"
test_command "prettier"
test_command "terraform"
test_command "kubectl"
test_command "docker" "try launching manually: https://stackoverflow.com/a/43365425"
test_command "gcloud"
test_command "gpg"
test_command "az"
test_app "Google Chrome"
test_app "Visual Studio Code"
test_app "IntelliJ IDEA CE"
e_success "Optimization commands"

echo ""

e_settled "Installation complete!"