#!/usr/bin/env bash
# A desirable attribute of a sub-script is that it does not use global env variables that
# were created by its parents (bash and system env vars are ok). Use function arguments instead to
# pass such variables
# There should be scarce exceptions to this rule (such as a var that contains the script main install dir)

#####################################################################
function install_Helm() {
#####################################################################
    banner "Installing Helm"

    isAlreadyAvailableOnCLI "helm" && return
    brew_install kubernetes-helm || exit 1
}

install_Helm
