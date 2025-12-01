#! /bin/bash

# variable examples
rawHTML="poemaday.html"
scrapedText="AsKar.txt"
url="https://poets.org/poem-a-day"

if [ "$1" = "sc" ] 
then
    echo "route a"
    node index.js a data/books/stick-control-gls.json
elif [ "$1" = "ps" ]
then
    echo "route b"
    node index.js a data/books/progressive-steps-to-syncopation-tr.json
else
    echo "Please indicate a valid route."
fi
