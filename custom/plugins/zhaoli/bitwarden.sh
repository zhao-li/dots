#!/bin/sh

# This script and its functions supports bitwarden.

# This function gets a password from Bitwarden
# Example usage:
# get_password alumni.usc google h@4H
get_password() {
  if _bash_it_running; then
    about 'gets password from Bitwarden'
    group 'zhaoli'
  fi

  username=$1
  site=$2
  session_hash=$3

  bw list items \
    --session "$session_hash" \
    --search "$username" \
      | jq "$(_get_expression "$username" "$site")"
}


# This function gets an expression to filter the list of items
# Example usage:
# _get_expression alumni.usc google h@4H
_get_expression() {
  username=$1
  site=$2

  printf "%s"                                         \
    ".[].login"                                       \
    "|"                                               \
    "select("                                         \
      "(.uris[]?.uri | contains(\"$site\"))"          \
      "and"                                           \
      "(.username | contains(\"$username\")))"        \
    "|"                                               \
    "\"\(.password)🔑\(.uris[0].uri)(\(.username))\""
}
