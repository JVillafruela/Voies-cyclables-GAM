#!/usr/bin/bash

#jq magic :
#https://stackoverflow.com/questions/26741075/filtering-geojson-with-jq
#https://www.saintcarre.fr/saintcarre/2024/01/Manipuler-des-fichiers-GeoJson-avec-jq.html
#https://www.baeldung.com/linux/jq-passing-bash-variables


for TYPE in "chronovelo" "veloamenage" "velodifficile" "velononamenage" "voieverte"
do
    echo $TYPE
    # passage de var via --arg pour contourner pb de quote par le shell
    jq --arg jq_type "$TYPE" '.features |= [.[] | select(.properties.type == $jq_type)]' pc.json > $TYPE.geojson
done
