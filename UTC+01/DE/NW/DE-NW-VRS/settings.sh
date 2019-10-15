#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-NW-VRS"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=public_transport][name='Verkehrsverbund Rhein-Sieg'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);<<;rel[type='route'](r);)->.routes;(.routes;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Verkehrsverbund Rhein-Sieg|NRW Regionalverkehr"
NETWORK_SHORT="VRS"

EXPECT_NETWORK_SHORT_FOR="Verkehrsverbund Rhein-Sieg"
EXPECT_NETWORK_SHORT_AS="VRS"

ANALYSIS_PAGE="VRS/Analyse"
ANALYSIS_TALK="Talk:VRS/Analyse"
WIKI_ROUTES_PAGE="VRS/Analyse/VRS-Linien"

ANALYSIS_OPTIONS="--language=de --max-error=10 --check-access --check-name-relaxed --check-stop-position --check-sequence --check-osm-separator --check-motorway-link --multiple-ref-type-entries=analyze  --ptv1-compatibility=allow --relaxed-begin-end-for=train,subway,light_rail,monorail,tram --coloured-sketchline --expect-network-long"

# --positive-notes
# --check-bus-stop 
# --expect-network-short
# --expect-network-long-for=
