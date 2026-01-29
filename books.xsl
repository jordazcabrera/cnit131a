<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
   <html><head><title>Books</title></head>
   <body><h1>Books</h1>
   
   The <xsl:value-of select="books/book/name"/> was written by <xsl:value-of select="books/book/author"/>
   
   </body></html>
</xsl:template>
</xsl:stylesheet>