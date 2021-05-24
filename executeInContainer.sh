#!/bin/sh
OUTPUT=$(java -cp "./lib/junit-4.12.jar:./lib/hamcrest-core-1.3.jar:." DevhausFizzBuzz)
date +"%H:%M:%S"
echo "Task Completed"
echo "See http://127.0.0.1:54321/fizzbuzz"
while true ; do echo -e "HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\n\r\n$OUTPUT" | nc -l -p 54321 ; done;
echo "Server shut down"