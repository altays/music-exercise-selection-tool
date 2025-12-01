#! /bin/bash

# variable examples
rawHTML="poemaday.html"
scrapedText="AsKar.txt"
url="https://poets.org/poem-a-day"

if [ "$1" = "a" ] 
then
    echo "route a"
    node index.js a data/books/stick-control-gls.json
elif [ "$1" = "ct" ]
then
    echo "route b"
    node index.js b
else
    echo "Please indicate a valid route."
fi
