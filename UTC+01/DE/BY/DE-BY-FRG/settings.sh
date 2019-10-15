#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-BY-FRG"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=administrative][admin_level=6][name='Landkreis Freyung-Grafenau'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Regionalbusnetz Landkreis Freyung-Grafenau"
NETWORK_SHORT="FRG"

ANALYSIS_PAGE="Freyung-Grafenau/Transportation/Analyse"
ANALYSIS_TALK="Talk:Freyung-Grafenau/Transportation/Analyse"
WIKI_ROUTES_PAGE="Freyung-Grafenau/Transportation/Analyse/DE-BY-FRG-Linien"

ANALYSIS_OPTIONS="--language=de --max-error=10 --check-access --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --multiple-ref-type-entries=allow --positive-notes --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --check-bus-stop 
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=
