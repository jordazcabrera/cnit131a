<?xml version="1.0"?>
     <!-- The first line of any XSLT file is exactly the same first line an XML document has -->
     <!-- the line below specifies the namespace for the style sheet and also declares its prefix (xsl right after xmlns:) -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html"/>
     <!-- transformation begins by processing the root template that needs to exist in every XSLT. The root template is defined with <xsl:template match="/"> -->
     <!-- the root template defines the set of rules apply the root node of the XML document. The forward slash (/) matches the root node of the XML document. -->
     <!-- Every XSLT transformation needs the root template to start. If you do not include the root template, a root template built into the XSLT processor 
          will be automatically used and this automatic one generally lists all the data in the XML document in plain text. -->
<xsl:template match="/">

     <html><head><title>Books Styled</title></head>
     <body><h1 style="font-style:italic; color:red;">Books</h1>
          
     <p> <img src="books.jpg" alt="3 red books piled" width="100" height="100"
style="float:left; margin-right: 10px;"/> The <xsl:value-of
select="books/book/name"/> was written by <strong><xsl:value-of
select="books/book/author"/></strong></p>

     </body></html>
  
</xsl:template>
</xsl:stylesheet>
