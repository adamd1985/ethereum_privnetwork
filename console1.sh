#!/bin/bash
echo "Opening console for node 1"

geth --identity "testnode1" --netrestrict 127.0.0.1/24  \
 --bootnodesv4 "enode://16b4838fd2ea9de56d016e7c2ead87131793583b8e609d0ca2cffda82a0e492dabbd901929e4fa1110b77a2289a99e5030f7b4e0cb9f1ea5625d3e89a884dc80@127.0.0.1:3031" \
 --port 3032 --datadir ./testnode1/data/ --networkid 81238 --maxpeers 4 --ipcpath ./testnode1/ipc console \
 --preload ./helperScripts/bootminer.js

echo "done."
  