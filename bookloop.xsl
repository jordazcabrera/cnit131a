<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html"/>

<xsl:template match="/">
   <html><head><title>Books Styled</title></head>
   <body><h1 style="font-style:italic; color:red;">Books</h1>

   <img src="books.jpg" alt="3 red books piled" width="100" height="100" style="float:left; margin-right: 10px;"/>
   
   <xsl:for-each select="books/book">
   <p>The <xsl:value-of select="name"/> was written by <strong><xsl:value-of select="author"/></strong></p>
   </xsl:for-each>   
   
   </body></html>
</xsl:template>
</xsl:stylesheet>