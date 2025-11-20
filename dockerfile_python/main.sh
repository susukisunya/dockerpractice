STR1=`python3 ./volume/main.py < ./volume/input.txt` 
EXIT_CODE=$? 
if [ $EXIT_CODE -ne 0 ]; then 
    echo 'RE' 
else 
    STR2=`cat ./volume/output.txt` 
    if [ $STR1 = $STR2 ]; then 
        echo 'AC' 
    else 
        echo 'WA' 
    fi 
fi