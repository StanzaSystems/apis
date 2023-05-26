#!/usr/bin/env /bin/bash
DIR=openapiv2/
# For testing in localdir, do DIR=.

if [ -x /go/bin/swagger ]
then
	SWAGGER="/go/bin/swagger"
else
	docker pull ghcr.io/go-swagger/go-swagger
	SWAGGER="docker run --rm --user $(id -u):$(id -g) -v $HOME:$HOME -w $PWD ghcr.io/go-swagger/go-swagger"
fi

FILES=`ls $DIR/*.json`	
for F in $FILES; do
	#OUTPUTD=$DIR"/" for testing
	OUTPUTF=${F/.swagger.json/}.md
	#OUTPUT="$OUTPUTD$OUTPUTF" -- for testing
	OUTPUT=$OUTPUTF
	$SWAGGER generate markdown -f $F --output=$OUTPUT
done
