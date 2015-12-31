#!/bin/bash

cmd="http -a admin:rootpass http://192.168.1.18:8051/snippets/"
echo "$cmd"
eval $cmd
