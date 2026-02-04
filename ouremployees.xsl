<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>

<xsl:template match="/">
 <html><head><title>Employees</title></head>
  <body>
   <h1>Current Employees</h1>

   <p>Our employees are:
   <xsl:for-each select="employees/employee">
      <xsl:value-of select="firstname" /><xsl:text> </xsl:text><xsl:value-of select="lastname" />
	  <xsl:choose>
	     <xsl:when test="position()=last()">.</xsl:when>
		 <xsl:when test="position()=last() - 1">, and </xsl:when>
		 <xsl:otherwise>, </xsl:otherwise>
	  </xsl:choose>
   </xsl:for-each>
   </p>

  </body>
 </html>
</xsl:template>
</xsl:stylesheet>