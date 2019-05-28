#!/usr/bin/env bash

# Helper functions
function _term() {
  echo 'Caught SIGTERM signal!'
  kill -15 $CHILD_PID
}

trap _term SIGTERM

fluentd -c /fluentd/etc/fluentd.conf &

CHILD_PID=$!

wait $CHILD_PID
