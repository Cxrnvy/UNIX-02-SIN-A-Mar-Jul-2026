#!/bin/bash
top
tpo&
touch test && touch test123
(ls; ps)
ls; ps; whoami
lzl || echo "the lzl command failed"

echo "Hello World" > output1.txt
echo "Bye World" > output1.txt
echo "Chao Chao" >> output1.txt
cat output1.txt

ls -l / &> stdout_and_stderr.txt
ls -l / &>> stdout_and_stderr.txt
cat stdout_and_stderr.txt

ls -l / 1> stdout.txt 2> stderr.txt
cat stdout.txt
cat stderr.txt

lzl 2> error.txt
cat error.txt

cat < output.txt
