#!/bin/bash

# This script and its functions supports bitwarden.

# Example usage:
# get_password alumni.usc google h@4H
function get_password {
  username=$1
  site=$2
  session_hash=$3
  bw list items --session "$session_hash" --search "$username" | jq ".[].login | select(.uris[].uri | contains(\"$site\")) | .password"
}
