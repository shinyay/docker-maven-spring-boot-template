#!/usr/bin/env fish

docker run --rm -p 8080:8080 -v ./log:/app/log  shinyay/mvn-springboot:latest
