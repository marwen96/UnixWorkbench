#!/bin/bash
function nombre_ligne
{
local var=$(ls -l  $PWD| grep "^-" | wc -l);
echo $var ;
}
nb_ligne="$(nombre_ligne)";
echo "saisir le nombre de fichier dans le dossier courant";
read guess
while [[ !  $guess -eq $nb_ligne ]]
do
if [[ $guess -gt $nb_ligne ]] 
then
    echo "too heigh"
elif [[ $guess -lt $nb_ligne ]]
then
    echo "too low"
fi
echo "saisir le nombre de fichier dans le dossier courant";
read guess
done
echo "Congratulation the number of files in $PWD is $guess";

