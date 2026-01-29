<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html"/>

<xsl:template match="/">
   <html><head><title>Books Styled</title><style>table, td, th { border: 1px solid red; } td, th { padding: 5px; }</style></head>
   <body><h1 style="font-style:italic; color:red;">Books</h1>

   <table><tr><th>Title of the Book</th><th>Author</th></tr>
   
   <xsl:for-each select="books/book">
      <xsl:sort select="name" order="descending" data-type="text" />
         <tr><td><xsl:value-of select="name"/></td>
		 <td>
		    <a>
			<xsl:attribute name="href">
			   #<xsl:value-of select="author" />
			</xsl:attribute>
			<xsl:value-of select="author" />
			</a>
		 </td></tr>
   </xsl:for-each>   
   
   </table>
   
   </body></html>
</xsl:template>
</xsl:stylesheet>