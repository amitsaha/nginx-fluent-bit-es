curl -H 'Content-Type: application/json' -XPOST 'http://localhost:9200/nginx_geoip/metrics?pipeline=geoip' -d  \
'
{"remote_addr":"127.0.0.1","request":"GET / HTTP/1.1","real_ip":"8.8.8.8","response_status":"200","body_bytes_sent":"12","foo":{"continent_name":"North America","country_iso_code":"US","location":{"lon":-97.822,"lat":37.751}},"time_local":"14/May/2019:23:46:58 +0000","request_method":"GET","http_user_agent":"curl/7.29.0","remote_user":"","@timestamp":"2019-05-14T23:46:58.282Z","request_time":"0.000","http_referrer":""}
'
