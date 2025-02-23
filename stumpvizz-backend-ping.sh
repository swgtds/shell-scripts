#!/bin/bash

URL="https://stumpvizz-backend.onrender.com/ping"

# Send a request to keep the service alive
curl -s $URL > /dev/null

