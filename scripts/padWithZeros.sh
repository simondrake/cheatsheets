#!/bin/bash

########################################################
#
# This bash script looks through files in the format 'Amazing Spider-Man v1 %d.{extension}',
# which have do not have the same amount of digits at %d, and ensures they are all padded
# to ensure they all have three digits.
#
########################################################

extension="cbz"

for i in *.${extension}; do
	new_filename=( $( ls "$i" | awk -v ext="$extension" '{printf "%s-%s-%s-%03d." ext "\n", $1, $2, $3, $4}' ) )

	mv "$i" "$new_filename"
done;
