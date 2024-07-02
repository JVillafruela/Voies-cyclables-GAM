# Voies cyclables Grenoble Alpes Métropole

Fichier opendata

https://data.metropolegrenoble.fr/visualisation/information/?id=pcm


Lister les types de voies cyclable dans le fichier geojson :

```bash
$ jq '.features[].properties.type' pc.json  | sort -u
"chronovelo"
"veloamenage"
"velodifficile"
"velononamenage"
"voieverte"
```

Extaction des données geojson pour un type de voie :

```bash
jq '.features |= [.[] | select(.properties.type == "chronovelo")]'  pc.json  > chronovelo.geojson
```

Carte umap

https://umap.openstreetmap.fr/fr/map/voie-cyclables-grenoble-alpes-metropole_1089661



