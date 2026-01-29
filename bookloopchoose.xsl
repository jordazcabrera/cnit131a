<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html"/>

<xsl:template match="/">
   <html>
	   <head>
		   <title>Books Styled</title><style>table, td, th { border: 1px solid red; } td, th { padding: 5px; }</style>
	   </head>
	   
   <body>
	   <h1 style="font-style:italic; color:red;">Books
	   </h1>

   <img src="books.jpg" 
	    alt="3 red books piled" 
	   width="100" height="100" 
	   style="float:left; margin-right: 10px;"/>
   
   <table>
	   <tr>
		   <th>Title of the Book</th><th>Author</th>
		   <th>Year</th>
	   </tr>
   
   <xsl:for-each select="books/book">
      <xsl:if test="name[@language='English']">
         <tr><td><xsl:value-of select="name"/></td>
		 <td><xsl:value-of select="author"/></td>
		 <xsl:choose>
			 <!-- When you use xsl:choose, you can add more than one xsl:when condition but once a condition is found to be true, 
			      all the remaining conditions will be ignored only the action of the first true condition will be processed! -->
		    <xsl:when test="year != '-'">
   		       <td><xsl:value-of select="year"/></td>
			</xsl:when>
			<xsl:otherwise>
			   <td>unknown</td>
			</xsl:otherwise>
	     </xsl:choose>
		 <!-- The closing of the table row </tr> had to be put AFTER the xsl:choose rule finished otherwise you would create an error
			  in the parsing of the code as you would have two closing </tr> tags having only one opening <tr> tag opened! -->
		 </tr>
	  </xsl:if>
   </xsl:for-each>   
   
   </table>
   
   </body>
   </html>
	
</xsl:template>

</xsl:stylesheet>

