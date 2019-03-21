#!/bin/bash

# This script and its functions supports atom.

function install_atom_plugins() {
  # sudo apm install --packages-file atomfile # switch to using sudo if new installation requires it
  apm install --packages-file atomfile
}
