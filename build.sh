#!/bin/sh
for f in *.edn
do
    if [ "$f" != "_site.edn" ]; then
        echo "Building $f ..."
        java -Duser.language=de -Duser.country=DE -jar sitegen.jar "$f" || exit 1
    fi
done
