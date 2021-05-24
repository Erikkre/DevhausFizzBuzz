#!/bin/sh
OUTPUT=$(java -cp "./lib/junit-4.12.jar:./lib/hamcrest-core-1.3.jar:." DevhausFizzBuzz)

while true ; do echo -e "HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\n\r\n$OUTPUT" | nc -l -p 54321 ; done
date +"%H:%M:%S"
echo "Task Completed"