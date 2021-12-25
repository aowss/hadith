#!/bin/bash

cd ..

cd "$1"

echo Generate the .adoc files in the أحاديث folder

java -cp ../res/saxon-he-10.6.jar net.sf.saxon.Transform -t -s:content.xml -xsl:../res/hadith.xslt book="$1"

echo Generate $1.adoc

java -cp ../res/saxon-he-10.6.jar net.sf.saxon.Transform -t -s:metadata.xml -xsl:../res/toc.xslt -o:"$1.adoc"

echo Generate the $1.html

asciidoctor -a stylesheet=../res/main.css "$1.adoc"