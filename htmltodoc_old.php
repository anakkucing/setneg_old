<?php
include( 'HtmlToDoc.class.php' );
$htmlToDoc = new HtmlToDoc();
// convert html from url
$htmlToDoc->createDocFromURL( "http://google.com", "output", true );
// or from hdd
$htmlToDoc->createDoc( "example.html", "output_location", true );
?>