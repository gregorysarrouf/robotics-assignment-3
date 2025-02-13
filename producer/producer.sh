#!/bin/sh

HOST="consumer"
PORT=5000
id="$RANDOM-$RANDOM-$RANDOM-$RANDOM-$RANDOM"

# Send an id of 5 random integers to consumer
echo "$id" | nc $HOST $PORT
