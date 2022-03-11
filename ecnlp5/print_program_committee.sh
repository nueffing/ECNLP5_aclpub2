#! /bin/bash

for n in `cat program_committee_accepted.email.txt`; do
    grep $n program_committee_invited.email.name.csv \
	| awk '{printf("  - first_name: %s\n    institution: \n    last_name: %s\n", $2, $3)}'
done
