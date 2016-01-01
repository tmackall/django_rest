#!/bin/bash

cmd="http -a admin:rootpass http://192.168.1.18:8051/snippets/"
echo "$cmd"
resp=$(eval $cmd)
echo "$resp"
exit 0

cmd="http -a admin:rootpass PUT http://192.168.1.18:8051/snippets/ code=\"print tmac\""
echo "$cmd"
resp=$(eval $cmd)
if [[ ! ${resp} =~ .*not\ allowed.* ]]; then
    echo "$resp"
    exit 2
fi

cmd="http -a admin:rootpass POST http://192.168.1.18:8051/snippets/ code=\"print tmac\""
echo "$cmd"
eval $cmd
exit 0

cmd="http -a admin:rootpass http://192.168.1.18:8051/snippets/"
echo "$cmd"
eval $cmd

cmd="http -a admin:rootpass http://192.168.1.18:8051/snippets/"
echo "$cmd"
eval $cmd
