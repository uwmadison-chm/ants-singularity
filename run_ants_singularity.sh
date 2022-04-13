# Pass in a parameter of subid

# Dopey stuff to make sure working directory is the directory of the script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR

export SINGULARITYENV_PREPEND_PATH="/opt/ants/bin"
export SINGULARITY_BIND="/study/xyz:/study/xyz"

singularity exec ants.sif \
  antsRegistration \
  -d 3 -f ../path-$1/anat/sub-$1_T1w_biascorr_brain.nii.gz \
  -m ../path-$1/func/sub-$1_task-xyz_run1_bold_mod_bet.nii.gz \
  -o antstest

## If that doesn't work, you can try execing a shell script inside the container like this: 
#singularity exec ants.sif \
#  ./some_script.sh <args>

