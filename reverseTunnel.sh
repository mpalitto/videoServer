#!/bin/bash
while true; do
  ssh -N -R 0.0.0.0:19999:localhost:22 root@89.46.79.101
  sleep 30
done
