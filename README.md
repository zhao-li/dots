# Environment Customizations

![Code Checks](https://github.com/zhao-li/dots/workflows/Code%20Checks/badge.svg)
![MacOS Latest](https://github.com/zhao-li/dots/workflows/MacOS%20Latest/badge.svg)
![Ubuntu Latest](https://github.com/zhao-li/dots/workflows/Ubuntu%20Latest/badge.svg)
![Windows Latest](https://github.com/zhao-li/dots/workflows/Windows%20Latest/badge.svg)
![MacOS 10.15](https://github.com/zhao-li/dots/workflows/MacOS%2010.15/badge.svg)
![MacOS 11.0](https://github.com/zhao-li/dots/workflows/MacOS%2011.0/badge.svg)
![Ubuntu 16.04](https://github.com/zhao-li/dots/workflows/Ubuntu%2016.04/badge.svg)
![Ubuntu 18.04](https://github.com/zhao-li/dots/workflows/Ubuntu%2018.04/badge.svg)
![Ubuntu 20.04](https://github.com/zhao-li/dots/workflows/Ubuntu%2020.04/badge.svg)
![Windows 2019](https://github.com/zhao-li/dots/workflows/Windows%202019/badge.svg)

Getting Started
---------------
1. clone repository: `git clone --recursive https://github.com/zhao-li/dots.git`
1. bootstrap environment: `./bootstrap.bash`

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
