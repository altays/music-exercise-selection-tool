#! /bin/bash

# variable examples
source=""
sc=data/books/stick-control-gls.json
ps=data/books/progressive-steps-to-syncopation-tr.json
# mr=data/books/math-rock-primer.json

selection=$(( ( RANDOM % 2 )  + 1 ))
NOW=${EPOCHSECONDS}

count=10
counter=0

if [ $selection = "1" ] 
then
    source=$sc
elif [ $selection = "2" ] 
then
    source=$ps
# elif [ $selection = "3" ] 
# then
#     source=$mr
else
    echo "Please indicate a valid source."
fi



if [ "$1" = "sc" ] 
then

    echo "=============== " >> ./data/output/idea-output-$NOW.md
   
    while [ $counter -lt $count ]
    do 

        echo "$LS" >> ./data/output/idea-output-$NOW.md
        node index.js a data/books/stick-control-gls.json > ./data/output/idea-output-$NOW.md
        echo "$LS" >> ./data/output/idea-output-$NOW.md
        echo "==================" >> ./data/output/idea-output-$NOW.md
        counter=`expr $counter + 1`
    done

elif [ "$1" = "ps" ]
then

    echo "==================" >> ./data/output/idea-output-$NOW.md

    while [ $counter -lt $count ]
    do 
        echo "$LS" >> ./data/output/idea-output-$NOW.md
        node index.js a data/books/progressive-steps-to-syncopation-tr.json > ./data/output/idea-output-$NOW.md
        echo "$LS" >> ./data/output/idea-output-$NOW.md
        echo "==================" >> ./data/output/idea-output-$NOW.md
        counter=`expr $counter + 1`
    done

elif [ "$1" = "mr" ]
then

    echo "==================" >> ./data/output/output-$NOW.md

    while [ $counter -lt $count ]
    do 
        echo "$LS" >> ./data/output/idea-output-$NOW.md
        node index.js a data/books/math-rock-primer.json > ./data/output/idea-output-$NOW.md
        echo "$LS" >> ./data/output/idea-output-$NOW.md
        echo "==================" >> ./data/output/idea-output-$NOW.md
        counter=`expr $counter + 1`
    done

elif [ "$1" = "random" ]
then

    echo "==================" >> ./data/output/idea-output-$NOW.md

    while [ $counter -lt $count ]
    do 
        echo "$LS" >> ./data/output/idea-output-$NOW.md
        echo $source >> ./data/output/idea-output-$NOW.md
        node index.js a $source >> ./data/output/idea-output-$NOW.md
        echo "$LS" >> ./data/output/idea-output-$NOW.md
        echo "==================" >> ./data/output/idea-output-$NOW.md
        counter=`expr $counter + 1`
    done

else
    echo "Please indicate a valid route."
fi

