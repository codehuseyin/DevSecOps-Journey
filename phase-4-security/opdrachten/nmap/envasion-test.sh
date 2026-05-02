#!/bin/bash

TARGET="scanme.nmap.org"

#Run the Nmap scan
nmap -T5 -D 1.1.1.1,8.8.8.8,ME,4.4.4.4 -f -g 53 $TARGET
