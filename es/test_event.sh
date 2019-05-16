curl -H 'Content-Type: application/json' -XPOST 'http://localhost:9200/nginx_geoip/metrics?pipeline=geoip' -d  \
'
{"real_ip":"8.8.8.8","@timestamp":"2019-05-14T23:46:58.282Z"}
'
