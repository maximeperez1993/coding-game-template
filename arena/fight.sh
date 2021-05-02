#!bin/sh
# fight.sh player1.jar player2.jar nbGames
referee="referee-uttt.jar"
java -jar cg-brutaltester.jar -r "java -jar -Dleague.level=2 $referee" -p1 "java -jar $1" -p2 "java -jar $2" -t 4 -n $3 -l "./logs/"
