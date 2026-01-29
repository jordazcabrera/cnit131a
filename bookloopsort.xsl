<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html"/>

<xsl:template match="/">
   <html>
	   <head>
		   <title>Books Styled</title>
		   <style>table, td, th { border: 1px solid red; } td, th { padding: 5px; }</style>
	   </head>
	   
   <body>
	   <h1 style="font-style:italic; color:red;">Books
	   </h1>

   <table>
	   <tr>
		   <th>Title of the Book</th><th>Author</th>
	   </tr>
   
   <xsl:for-each select="books/book">
	   <!-- The nodes are presented in the order they were coded in the XML document. If you want to present them in a different order, 
	        then you will need to use the xsl:sort instruction. Notice that this instruction is a self-closed tag. -->
      <xsl:sort select="name" order="descending" />
         <tr>
			 <td><xsl:value-of select="name"/></td>
		     <td><xsl:value-of select="author"/></td>
		 </tr>
   </xsl:for-each>   
   
   </table>
   
   </body></html>
</xsl:template>

</xsl:stylesheet>
