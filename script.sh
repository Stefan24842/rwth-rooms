#for i in {0001..9999}; do wget https://online.rwth-aachen.de/RWTHonline/pl/ui/$ctx/wbKalender.wbRessource?pResNr=$i; done
#!/bin/bash
echo '| Room | Number |'
echo '| :--- | :----- |'
for i in {0001..1999}
do
#    text=$(cat 'wbKalender.wbRessource?pResNr='$i)
#    numer=$(echo $text | grep Terminkalender\ von | cut -d = -f 2 | cut -d : -f 1)
    room=$(grep Terminkalender\ von wbKalender.wbRessource?pResNr=$i | cut -d : -f 2 | cut -d \" -f 1 | sed 's/|/\\|/g')
    echo \| $room \| $i \| [Link]\(https://online.rwth-aachen.de/RWTHonline/pl/ui/\$ctx/wbKalender.wbRessource?pResNr=$i\) \| | grep -v \|\ \| 
done
