#!/bin/sh
curl "http://orion/v2/op/update" -D - -sS \
-H 'Content-Type: application/json' \
-H 'Fiware-Service: wirecloud' \
-H 'Fiware-ServicePath: /data' \
-d @- <<EOF
{
  "actionType": "append",
  "entities": [
    {
      "id": "point001",
      "type": "point",
      "location": {
        "type": "geo:json",
        "value": {
          "type": "Point",
          "coordinates": [ 139.772900, 35.698225 ]
        }
      }
    },
    {
      "id": "line001",
      "type": "line",
      "location": {
        "type": "geo:json",
        "value": {
          "type": "LineString",
          "coordinates": [ [ 139.702629, 35.671282 ], [ 139.701519, 35.657950 ], [ 139.709852, 35.646562 ] ]
        }
      }
    },
    {
      "id": "polygon001",
      "type": "polygon",
      "location": {
        "type": "geo:json",
        "value": {
          "type": "Polygon",
          "coordinates": [ [ [ 139.692144, 35.689913 ], [ 139.741369, 35.658161 ], [ 139.767168, 35.681489 ], [ 139.692144, 35.689913 ] ] ]
        }
      }
    }
  ]
}
EOF
