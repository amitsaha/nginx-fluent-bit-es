set -e
sudo docker run --rm --network=host -v $(pwd)/fluent-bit.conf:/etc/fluent-bit/fluent-bit.conf -v $(pwd)/parsers.conf:/etc/fluent-bit/parsers.conf -d fluent/fluent-bit:1.2 /fluent-bit/bin/fluent-bit -c /etc/fluent-bit/fluent-bit.conf
