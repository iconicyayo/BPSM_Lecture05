#!/bin/bash

## Question 1: Display an index counter and the country

## initialise the counter at zero
count=0

## read each line and assign the seven columns to variables
while read name email city birthday_day birthday_month birthday_year country
do
    ## increase the counter by 1 for each line
    count=$((count+1))

    ## display the index and country separated by a tab
    echo -e "${count}\t${country}"

## read the data from the input file
done < example_people_data.tsv

## seems like this still displays the birth years in certain cases? not rly sure why, will try to fix
