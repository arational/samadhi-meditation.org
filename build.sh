#!/bin/sh
for f in *.edn
do
    if [ "$f" != "_site.edn" ]; then
        echo "Building $f ..."
        LANG=de_DE.UTF-8 java -jar sitegen.jar "$f" || exit 1
    fi
done
