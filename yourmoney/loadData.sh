#!/bin/bash

set -e

if [[ -z "$PGHOST" ]]; then
    echo PGHOST not set.
    exit 2
fi

if [[ -z "$PGUSER" ]]; then
    echo PGUSER not set.
    exit 2
fi

if [[ -z "$PGDATABASE" ]]; then
    echo PGDATABASE not set.
    exit 2
fi

for f in active retired agency authority ; do
    if [[ -f ${f}.csv ]]; then
        COPYSTMT="\\copy ${f} from ./${f}.csv WITH CSV HEADER QUOTE '\"' "
        echo $COPYSTMT
        psql -c "$COPYSTMT"
    fi
done
