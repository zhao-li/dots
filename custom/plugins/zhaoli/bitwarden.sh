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

  jq_expression=".[].login |" # select logins that ->
  jq_expression="$jq_expression select(.uris[]?.uri |" # has uris with an uri that ->
  jq_expression="$jq_expression contains(\"$site\")) |" # contains the $site
                                                        # substring and then ->
  jq_expression="$jq_expression \"\(.password)" # display the password with ->
  jq_expression="$jq_expression 🔑"
  jq_expression="$jq_expression \(.uris[0].uri)" # the uri with ->
  jq_expression="$jq_expression (\(.username))\"" # associated username

  bw list items \
    --session "$session_hash" \
    --search "$username" \
      | jq "$jq_expression"
}
