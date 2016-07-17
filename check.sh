#!/bin/bash
paths=( 
	"http://{site_url}:{site_port"
)
success=0

for path in $paths
do
	curl -I $path 2> /dev/null | grep '200 OK' > /dev/null 2>&1
	if [ $? == '0' ]; then
		let success+=1 
	fi
done

if [ ${#paths[@]} == ${success} ]; then
	echo 'success'
else 
	echo 'fail'
fi
