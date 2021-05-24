#!/bin/bash

###FUNCTIONS

function frequent-ip {
echo "Most active ip:"
echo ""
awk '{ print $1 }' $path | uniq -c | sort -gr | head -n 1 
}

function frequent-page {
echo "Most requested page:"
echo ""
awk '{ print $7 }' $path | uniq -c | sort -gr | head -n 1
}

function how-much-requests {
echo "Number of requests, ip:"
echo ""
awk '{ print $1 }' $path | uniq -c | sort -gr
}

function 404 {
echo "Non-existing page:"
echo ""
awk '{ print $7 }' $path | grep error404 | head -n 1
}

function frequent-time {
echo "Time of most frequent requests:"
echo ""
awk '{ print $4 }' $path | uniq -c | sort -gr | head -n 1 | awk '{ print $2 }'
}

function search-bots {
echo "Search-bots, that accessed the site:"
echo ""
awk '{ print $1 " " $14 }' $path | grep bot -i
}

function help {
echo "Use -i to see information about ip with the most frequent requests to server"
echo "Use -p to see the most requested page"
echo "Use -r to see hown namy requests were from each ip"
echo "Use -4 to see non-existent page"
echo "Use -t  to see what time site get the most requests"
echo "Use -b to see search bots that accessed site"
echo "Use -h for help"
}

###USER'S INPUT
help
echo -n "Enter path to logs:"
read path
echo -n "Enter the key: "
read option
###MAIN

	case $option in
		-i) frequent-ip ;;
		-p) frequent-page ;;
		-r) how-much-requests ;;
		-4) 404 ;;
		-t) frequent-time ;;
		-b) search-bots ;;
		-h) help ;;
	esac
