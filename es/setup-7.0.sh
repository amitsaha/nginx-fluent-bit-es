sudo docker run --network=host -d -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.0.1
sleep 30
sudo docker run -d --network=host -p 5601:5601 kibana:7.0.1

curl  -X PUT "localhost:9200/_ingest/pipeline/geoip" -H 'Content-Type: application/json' -d' 
{
  "description" : "Add geoip info",
  "processors" : [
    {
      "geoip" : {
        "field" : "real_ip",
        "target_field": "foo"
      }
    }
  ]
}
'

