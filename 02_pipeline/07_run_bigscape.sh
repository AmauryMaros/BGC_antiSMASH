#!/bin/bash

conda activate bigscape

input_file=$1
mkdir "/Users/amaros/IGS Dropbox/Amaury Maros/Antismash/big_scape_output/${input_file}"

python "/Users/amaros/IGS Dropbox/Amaury Maros/Antismash/BiG-SCAPE-1.1.9/bigscape.py" -i "/Users/amaros/IGS Dropbox/Amaury Maros/Antismash/03_results/${input_file}" -o "/Users/amaros/IGS Dropbox/Amaury Maros/Antismash/big_scape_output/${input_file}" --mix --hybrids-off --mode auto --pfam_dir "/Users/amaros/IGS Dropbox/Amaury Maros/Antismash/BiG-SCAPE-1.1.9"