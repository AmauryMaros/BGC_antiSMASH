# while read directory_ID; do
#     scp "amaros@ravellab.igs.umaryland.edu:/local/scratch/amaros/antismash/results_antismash/${directory_ID}/${directory_ID}_*.gbk" "/Users/amaros/IGS Dropbox/Amaury Maros/Antismash/03_results/Crispatus_results"
# done < crispatus_mags.txt


#!/bin/bash

# Check for correct usage
if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <input_file> <output_directory>"
    exit 1
fi

# Assign arguments to variables
input_file=$1
output_directory=$2

# Ensure the output directory exists
mkdir -p "$output_directory"

# Loop through the input file and perform scp for each directory ID
while read -r directory_ID; do
    scp "amaros@ravellab.igs.umaryland.edu:/local/scratch/amaros/antismash/results_antismash/${directory_ID}/${directory_ID}_*.gbk" "/Users/amaros/IGS Dropbox/Amaury Maros/Antismash/03_results/${output_directory}/"
done < "$input_file"
