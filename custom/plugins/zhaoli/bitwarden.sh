#!/bin/sh

# This script and its functions supports bitwarden.

# This function gets a password from Bitwarden
# Example usage:
# get_password alumni.usc google h@4H
function get_password {
  about 'gets password from Bitwarden'
  group 'zhaoli'

  username=$1
  site=$2
  session_hash=$3
  bw list items --session "$session_hash" --search "$username" | jq ".[].login | select(.uris[].uri | contains(\"$site\")) | .password"
}
