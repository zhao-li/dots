# Environment Customizations

Getting Started
---------------
1. clone repository: `git clone --recursive https://github.com/zhao-li/dots.git`
1. bootstrap environment: `./bootstrap.sh`

Linting
-------
To lint shell scripts:

    $ lint_project

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
