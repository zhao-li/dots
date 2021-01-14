# Environment Customizations

![Code Checks](https://github.com/zhao-li/dots/workflows/Checks/badge.svg)
![MacOS 10.15](https://github.com/zhao-li/dots/workflows/MacOS%2010.15/badge.svg)
![MacOS 11.0](https://github.com/zhao-li/dots/workflows/MacOS%2011.0/badge.svg)
![Ubuntu 16.04](https://github.com/zhao-li/dots/workflows/Ubuntu%2016.04/badge.svg)

Getting Started
---------------
1. clone repository: `git clone --recursive https://github.com/zhao-li/dots.git`
1. bootstrap environment: `./bootstrap.sh`

Linting
-------
To lint shell scripts locally:

    $ lint_project

To lint shell scripts using container:

    $ docker run --rm -it -v $(pwd):/mnt koalaman/shellcheck-alpine:v0.7.1
    container$ cd /mnt/
    container:/mnt$ source custom/plugins/zhaoli/shellcheck.sh
    container:/mnt$ lint_project

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
