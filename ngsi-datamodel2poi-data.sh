#!/bin/sh
curl "http://orion/v2/op/update?options=keyValues" -D - -sS \
-H 'Content-Type: application/json' \
-H 'Fiware-Service: wirecloud' \
-H 'Fiware-ServicePath: /data' \
-d @- <<EOF
{
  "actionType": "append",
  "entities": [
    {
      "id": "airqualityobserved_1",
      "type": "AirQualityObserved",
      "CO": 365.748071499,
      "CO_Level": "high",
      "NO": 51.465215153,
      "NO2": 67.382005495,
      "NOx": 2.524494603,
      "SO2": 15.619419412,
      "address": {
        "streetAddress": "streetname",
        "addressLocality": "Antwerpen",
        "addressCountry": "BE"
      },
      "airQualityIndex": 9.013966484,
      "airQualityLevel": "good",
      "dateObserved": "2019-08-10T07:45:25.00Z",
      "location": {
        "type": "Point",
        "coordinates": [
          4.432838,
          51.257595
        ]
      },
      "precipitation": 56,
      "refPointOfInterest": "28079004-Pza.deEspanya",
      "relativeHumidity": 0.401051481,
      "reliability": 0.301225884,
      "source": "http://random.data.from.quantumleap",
      "temperature": -11.89573117,
      "windDirection": 162.320200841,
      "windSpeed": 0.154625896
    }
  ]
}
EOF
