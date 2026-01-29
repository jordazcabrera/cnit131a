<?xml version="1.0"?>
     <!-- The first line of any XSLT file is exactly the same first line an XML document has -->
     <!-- the line below specifies the namespace for the style sheet and also declares its prefix (xsl right after xmlns:) -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html"/>
     <!-- transformation begins by processing the root template that needs to exist in every XSLT. The root template is defined with <xsl:template match="/"> -->
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
