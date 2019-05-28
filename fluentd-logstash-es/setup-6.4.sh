sudo docker run --network=host -d -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:6.4.0
sleep 30
sudo docker run -d --network=host -p 5601:5601 kibana:6.4.0

