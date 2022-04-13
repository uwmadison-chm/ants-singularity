all: clean script

clean:
		rm -rf ants/
	
blank: clean
		singularity build --sandbox ants docker://debian

def: clean
		singularity build --sandbox ants ants.def

shell:
		singularity shell --writable ants/

readonly-shell:
		singularity shell ants/
	
