# Pass in a parameter of subid

# Dopey stuff to make sure working directory is the directory of the script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR

export SINGULARITYENV_ANTSPATH="/opt/ants/bin" 
export SINGULARITYENV_PREPEND_PATH="/opt/ants/bin"
export SINGULARITY_BIND="/study/xyz:/study/xyz"

singularity exec ants.sif \
  --pwd $DIR \
  antsRegistration \
  $1 to get passed parameter, and set VARIOUS PARAMETERS HERE

## If that doesn't work, you can try execing a shell script inside the container like this: 
#singularity exec ants.sif \
#  ./some_script.sh <args>

