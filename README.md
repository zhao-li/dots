# Environment Customizations

![Code Checks](https://github.com/zhao-li/dots/workflows/Code%20Checks/badge.svg)
[![Test Bootstrap](https://github.com/zhao-li/dots/actions/workflows/test-bootstrap.yml/badge.svg)](https://github.com/zhao-li/dots/actions/workflows/test-bootstrap.yml)

Getting Started
---------------
1. clone repository: `git clone --recursive https://github.com/zhao-li/dots.git`
1. bootstrap environment: `./bootstrap.bash`

The bootstrap script needs to be executed multiple times depending on when applications/accounts are ready.

Linting
-------
To lint shell scripts locally:

    $ lint_project

To lint shell scripts using container:

    $ docker run \
        --rm \
        --interactive \
        --tty \
        --volume $(pwd):/mnt/ \
        --workdir "/mnt/" \
        koalaman/shellcheck-alpine:v0.7.1
    container:/mnt$ source custom/plugins/zhaoli/shellcheck.bash
    container:/mnt$ lint_project

Using Virtual Machines
----------------------
To bootstrap Ubuntu 16.04:

    $ vagrant up ubuntu_16_04

To console in:

    $ vagrant ssh ubuntu_16_04

To clean up all virtual machines:

    $ vagrant destroy

Using asciinema
---------------
To record:

    $ asciinema rec tutorial.cast
    $ exit

Edit `tutorial.cast` and update width to 100 and height to 25.

Upload `tutorial.cast` file to asciinema.org:

    $ asciinema upload tutorial.cast

To convert to gif:

    $ docker run --rm -v $PWD:/data asciinema/asciicast2gif \
      -t solarized-light \
      tutorial.cast \
      hosted.gif
