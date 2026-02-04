<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>

<xsl:template match="/">
 <html><head><title>New Employees</title></head>
  <body>
   <h1>List of Employees Hired after 2006</h1>

   <p>
   <xsl:apply-templates select="employees/employee[hired &gt; 2006]">
   </xsl:apply-templates>
   </p>

  </body>
 </html>
</xsl:template>

<xsl:template match="employee">
   <xsl:value-of select="firstname" /><xsl:text> </xsl:text>was hired in <xsl:value-of select="hired" /><br />
</xsl:template>

</xsl:stylesheet>
