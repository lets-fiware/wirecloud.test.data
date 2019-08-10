#!/bin/sh
curl "https://orion.e-suda.info/v2/op/update" -D - -sS \
-H 'Content-Type: application/json' \
-H 'Fiware-Service: wirecloud' \
-H 'Fiware-ServicePath: /test' \
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
          "coordinates": [ 139.692144, 35.689913 ]
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
          "coordinates": [ [ 139.692144, 35.689913 ], [ 139.741369, 35.658161 ], [ 139.767168, 35.681489 ] ]
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
