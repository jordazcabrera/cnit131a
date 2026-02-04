<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>

<xsl:template match="/">
 <html><head><title>Monuments</title></head>
  <body>
   <h1>List of Image Files of Monuments</h1>

   <ul>
   <xsl:apply-templates select="//*/@file">
   </xsl:apply-templates>
   </ul>

  </body>
 </html>
</xsl:template>

<xsl:template match="//*/@file">
   <li><xsl:value-of select="." /></li>
</xsl:template>

</xsl:stylesheet>
