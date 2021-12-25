# كتب الأحاديث

## Information

The `content.xml` and `metadata.xml` files were downloaded from [IslamSource.info](http://islamsource.azurewebsites.net/host.aspx?Page=hadithsource&hadithcollection=7&hadithtranslation=en-aisha_abdarahman_attarjumana_yaqub_johnson&hadithdisplay=Display).

These files are then modified to correct eventual mistakes or change small details.

## Pre-requisites

* [Saxon XSLT Processor](https://www.saxonica.com/welcome/welcome.xml) to process the `content.xml` and `metadata.xml` files

You need to [download](https://sourceforge.net/projects/saxon/files/Saxon-HE/10/Java/SaxonHE10-6J.zip/download) the Saxon jar and copy it in the `res` directory.  
For the rest of this documentation, the jar name is assumed to be `saxon-he-10.6.jar`.

* Java to run Saxon and PlantUML

You need to follow the [instructions](https://www.oracle.com/java/technologies/downloads/) to install Java so that you can run the `java -cp saxon-he-10.6.jar net.sf.saxon.Transform` and the `java -jar ../res/plantuml-1.2021.15.jar` commands

* [Asciidoctor](https://asciidoctor.org/) to convert the `adoc` files to `html`

You need to follow the [instructions](https://docs.asciidoctor.org/asciidoctor/latest/install/) to globally install [Asciidoctor](https://asciidoctor.org/) so that you can run the `asciidoctor` command

## HTML

The HTML files for all the books are generated using the [`run-all`](./res/run-all.sh) script.

### Customization

The [`main.css`](./res/main.css) stylesheet is used to:
- right-align,
- set the text direction to be right to left,
- right-indent the list,
- add some styles.

The [Localization and numbering attributes](https://docs.asciidoctor.org/asciidoc/latest/attributes/document-attributes-ref/#builtin-attributes-i18n) are set to use arabic-indic numbers for footnotes, tables, ... and to set Arabic titles for ToC, ...

