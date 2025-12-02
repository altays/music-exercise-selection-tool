#! /bin/bash

# variable examples
source=""
sc=data/books/stick-control-gls.json
ps=data/books/progressive-steps-to-syncopation-tr.json
mr=data/books/math-rock-primer.json

selection=$(( ( RANDOM % 3 )  + 1 ))
NOW=${EPOCHSECONDS}

count=10
counter=0

if [ $selection = "1" ] 
then
    source=$sc
elif [ $selection = "2" ] 
then
    source=$ps
elif [ $selection = "3" ] 
then
    source=$mr
else
    echo "Please indicate a valid source."
fi

if [ "$1" = "sc" ] 
then
   
    while [ $counter -lt $count ]
    do 
        node index.js a data/books/stick-control-gls.json > ./data/output/output-$NOW.txt
        echo "==================" >> ./data/output/output-$NOW.txt

        counter=`expr $counter + 1`
    done

elif [ "$1" = "ps" ]
then

    while [ $counter -lt $count ]
    do 
        node index.js a data/books/progressive-steps-to-syncopation-tr.json > ./data/output/output-$NOW.txt
        echo "==================" >> ./data/output/output-$NOW.txt
        counter=`expr $counter + 1`
    done

elif [ "$1" = "mr" ]
then

    while [ $counter -lt $count ]
    do 
        node index.js a data/books/math-rock-primer.json > ./data/output/output-$NOW.txt
        echo "==================" >> ./data/output/output-$NOW.txt
        counter=`expr $counter + 1`
    done

elif [ "$1" = "random" ]
then

    while [ $counter -lt $count ]
    do 
        echo $source >> ./data/output/output-$NOW.txt
        node index.js a $source >> ./data/output/output-$NOW.txt
        echo "==================" >> ./data/output/output-$NOW.txt
        counter=`expr $counter + 1`
    done

else
    echo "Please indicate a valid route."
fi


