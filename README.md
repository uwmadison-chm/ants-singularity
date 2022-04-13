# ants-singularity

Singularity Container for the ANTs tools.

Currently issues with compiling from source.

## Experimenting 

To build a sandbox from the `ants.def` Singularity definition file (work in progress):

		sudo make def

To build a sandbox based on a blank debian:

		sudo make blank

To get a shell where you can experiment and make writable changes to the container:

		sudo make shell
		sudo make readonly-shell

Eventually, we'll make a command to test running actual scripts.

## TODO

