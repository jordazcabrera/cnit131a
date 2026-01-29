<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html"/>

<xsl:template match="/">
   <html><head><title>Books Styled</title></head>
   <body><h1 style="font-style:italic; color:red;">Books</h1>

   <img src="books.jpg" alt="3 red books piled" width="100" height="100" style="float:left; margin-right: 10px;"/>
   
   <table><tr><th>Title of the Book</th><th>Author</th></tr>
   
   <xsl:for-each select="books/book">
      <xsl:if test="name[@language='English']">
         <tr><td><xsl:value-of select="name"/></td><td><xsl:value-of select="author"/></td></tr>
	  </xsl:if>
   </xsl:for-each>   
   
   </table>
   
   </body></html>
</xsl:template>
</xsl:stylesheet>