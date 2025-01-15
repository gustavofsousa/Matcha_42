#!/usr/bin/env bash

openssl req -x509 -newkey rsa:4096 -days 365 \
  -keyout ./nginx/localhost.key \
  -out ./nginx/localhost.crt \
  -nodes -subj "/CN=localhost"
