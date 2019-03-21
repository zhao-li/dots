#!/bin/bash

# This script and its functions supports atom.

function install_atom_plugins() {
  apm install --packages-file atomfile
}
