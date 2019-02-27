#!/bin/bash
#
# Use this script to process the Excel data provided via OPRA request.
# Requires python/csvkit: https://csvkit.readthedocs.io/
#
# What is OPRA?
# First time filing an Open Public Records Act request?
# Visit: https://nj.gov/opra/
# For Alternative Benefits Program, choose Treasury > Open Records Unit.
#

set -e 

OUTCSV=abp.csv

if [[ -z "$1" ]]; then
    echo "Usage: $0 filename.xls[x]
Process Excel spreadsheet received via OPRA request and return CSV.
"
    exit
fi

in2csv "$1" | \
    csvcut -c NME_LAST,NME_FIRST,NME_MI,DTE_ENROLLMENT,AMT_SALARY,NME_EMPLOYER | \
    csvsort > $OUTCSV
