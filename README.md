# Rubocop docker wrapper

I wanted to try a little docker wrapper for running Rubocop on my Rails projects without having to have Rubocop installed locally on my machine.
This means that you can skip adding `rubocop` to the `Gemfile` as well.

## Installation
The easiest way to install is to run:
```
$ curl -L https://github.com/nicklinnell/docker-rubocop/archive/master.tar.gz | tar xvz
$ cd docker-rubocop-* && sudo make install
```

This will pull down the latest docker image and add the executable script to `/usr/local/bin`.

## Building your own docker image
Build you own docker image using:
```
$ make build
```

This will alow you to make any chnages you want to the `Dockerfile` to make it suit you.

## Uninstall
Uninstall with:
```
$ sudo make uninstall
```
