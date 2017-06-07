#!/bin/bash

replace=`cat tabs`
pages=(index.html Research.html Links.html)
for i in pages
do
perl -0777 -i -pe "s/(<!-- Beginning of Tabs -->\\n).*(\\n<!-- End of Tabs -->)/\$1$replace\$2/s" $i
done

