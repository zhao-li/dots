# Environment Customizations

Getting Started
---------------
1. clone repository: `git clone --recursive https://github.com/zhao-li/dots.git`
1. bootstrap environment: `./bootstrap.sh`

Linting
-------
To lint shell scripts:

    $ shellcheck .bashrc .bash_profile *.sh scripts/*.sh scripts/tasks/*.sh

Fetching Password
-----------------
To search and filter passwords:

    $ bw list items --session h@5H --search alumni.usc | jq '.[].login | select(.uris[].uri | contains("google.com")) | .password'
