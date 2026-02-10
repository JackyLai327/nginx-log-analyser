#!/bin/bash

count=$1

if [ -z "$count" ]; then
	echo -e "gurl tell me how much you wanna see . pass the number if wanna see as an argument maam"
	exit 1
fi

curl -s https://gist.githubusercontent.com/kamranahmedse/e66c3b9ea89a1a030d3b739eeeef22d0/raw/77fb3ac837a73c4f0206e78a236d885590b7ae35/nginx-access.log -o log_file.txt
log_file="log_file.txt"


echo -e "\nTop $count IP addresses with the most requests:"
awk '{print $1}' $log_file | sort | uniq -c | sort -r | awk '{$1=$1};1' | awk -F ' ' '{print "IP: ", $2, " | Count: ", $1}' | head -n $count | column -t

echo -e "\nTop $count most requested paths:"
awk '{print}' $log_file | cut -d '[' -f 2 | cut -d ']' -f 2 | cut -d ' ' -f 3 | sort | uniq -c | sort -r | awk '{$1=$1};1' | awk '{print "Endpoint: ", $2, " | Count: ", $1}' | head -n $count | column -t

echo -e "\nTop $count response status codes:"
awk -F '"' '{print $3}' $log_file | awk '{print $1}' | sort | uniq -c | sort -r | awk '{$1=$1};1' | awk '{print "Status code: ", $2, " | Count: ", $1}' | head -n $count | column -t

echo -e "\nTop $count user agents:"
awk -F '"' '{print $6}' $log_file | cut -d ' ' -f 1 | sort | uniq -c | grep -v '-' | grep -v 'Hello' | sort -r | awk '{$1=$1};1' | awk '{print "Agent: ", $2, " | Count: ", $1}' | head -n $count | column -t

rm log_file.txt
