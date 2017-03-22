# Docker Rubocop wrapper

I wanted to try a little docker wrapper for running Rubocop on my Rails projects without having to have Rubocop installed locally on my machine.
There are two ways of running the wrapper; using docker directly or the included shell script.

## Running from the docker image

```
$ docker run -t -v $(pwd):/tmp nicklinnell/rubocop
```

## Running from the shell script

Copy the `rubocop` script into an executable place on your local machine, I use `~/.bin` and have that directory included in `$PATH`.
Once there you can navigate to any ruby project and run:
```
$ rubocop
```

## Development and building your own image

If you wish to build your own image use (replace me if your user):
```
$ docker build -t nicklinnell/rubocop .
```

Update the `rubocop` bash script to point to your image.
