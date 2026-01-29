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
	   <!-- Here are the parameters you see in the xsl:sort: select - as always to select the element/node that the sort will be applied to
	       (in the case here, the sort will be applied to the name node); order the default is the ascending order and in the case shown 
	       the content of the name node will be sorted in a descending order; data-type the default is text. There would be no need to type 
	       data-type="text", but this is another parameter you can use and if you were dealing with numbers you would put data-type="number". -->
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

