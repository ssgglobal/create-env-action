#!/bin/sh -l

TEMPLATE=$1
OUTPUT=${2:-./.env}
TIMESTAMP=$(date +'%s')
TEMP="/tmp/expand-$TIMESTAMP.sh"

echo "cat > ${OUTPUT} <<EOL" > $TEMP
cat "$TEMPLATE" >> $TEMP
echo 'EOL' >> $TEMP

sh $TEMP

if [ -f "${OUTPUT}" ]; then
    STATUS="Created: ${OUTPUT}."
else
    STATUS="Failed Creating: ${OUTPUT}"
    exit 1
fi

cat $OUTPUT

echo "::set-output name=status::$STATUS"