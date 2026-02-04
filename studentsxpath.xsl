<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
   xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"> 
	
   <xsl:template match = "/" >
      <html>
         <body>  
            <xsl:value-of select = "/students/student/preceding-sibling::comment()"/>
            <br/><br />
            <xsl:text>First Student: </xsl:text>
            <xsl:value-of select = "/students/student/child::firstname" />    
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>