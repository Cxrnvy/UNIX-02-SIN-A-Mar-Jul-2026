#!/bin/bash
grep "35.237.4.214" log.txt
grep "35.237.4.214\|13.66.139.0" log.txt

ps | grep TTY
ps | grep -y tty

grep -v "35.237.4.214" log.txt
grep -o "35.237.4.214" log.txt