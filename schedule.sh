#!/bin/bash

#echo "File updated" >> /root/log/output.txt

mkdir /root/log/$(date +%Y.%m.%d-)
cp -r /root/shell/*.sh /root/log/$(date +%Y.%m.%d-%H-%M-%S)/