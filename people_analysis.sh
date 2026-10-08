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

## Question 2: display index counter, name,city and country without header and blank lines

count=0

while read name email city birthday_day birthday_month birthday_year country
do
    ## check that this isn't the header so it can be excluded
    if test "${name}" != "name"
    then
        ## heck that the name isn't empty to exclude blank entries
        if test "${name}" != ""
        then
            ## increase the counter
            count=$((count+1))

            ## display index, name, city and country
            echo -e "${count}\t${name}\t${city}\t${country}"
        fi
    fi

done < example_people_data.tsv
