#!/bin/bash

# Agency Payroll
# https://data.nj.gov/api/views/iqwc-r2w7/rows.csv?accessType=DOWNLOAD

# Authority Payroll
# https://data.nj.gov/api/views/kiki-imre/rows.csv?accessType=DOWNLOAD

# Retired Pension
# https://data.nj.gov/api/views/nma7-ti96/rows.csv?accessType=DOWNLOAD

# Active Pension
# https://data.nj.gov/api/views/44xg-bswk/rows.csv?accessType=DOWNLOAD

urlpre=https://data.nj.gov/api/views/
urlsuf=/rows.csv?accessType=DOWNLOAD

declare -A srcs
srcs[agency]=iqwc-r2w7
srcs[authority]=kiki-imre
srcs[retired]=nma7-ti96
srcs[active]=44xg-bswk

for k in "${!srcs[@]}"; do
    echo downloading $k data...
    wget -O "${k}.csv" $urlpre${srcs[$k]}$urlsuf
done
