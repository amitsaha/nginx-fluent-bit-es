curl -H 'Content-Type: application/json'  -XPUT "http://elasticsearch:9200/nginx_geoip" -d '
{
  "mappings": {
    "properties": {
      "@timestamp": {
        "type": "date"
      },
      "geoip": {
        "properties": {
          "continent_name": {
            "type": "text",
            "fields": {
              "keyword": {
                "type": "keyword",
                "ignore_above": 256
              }
            }
          },
          "country_iso_code": {
            "type": "text",
            "fields": {
              "keyword": {
                "type": "keyword",
                "ignore_above": 256
              }
            }
          },
          "location": {
            "type": "geo_point"
          }
        }
      },
      "real_ip": {
        "type": "text",
        "fields": {
          "keyword": {
            "type": "keyword",
            "ignore_above": 256
          }
        }
      }
  }
}
}
'
