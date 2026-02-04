<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>

<xsl:template match="/">
 <html><head><title>Monuments</title></head>
  <body>
   <h1>History of some monuments</h1>

   <xsl:apply-templates select="monuments/monument/history">
   </xsl:apply-templates>

  </body>
 </html>
</xsl:template>

<xsl:template match="history">
 The <xsl:value-of select="/monuments/monument/name[@language='English']"/>
 <xsl:apply-templates select="../name[@language!='English']"/>
 was built in <xsl:value-of select="yearbuilt"/><xsl:value-of select="year_built/@era"/><br />
   <xsl:choose>
    <xsl:when test="destroyedby != 0">
     It was destroyed by in <xsl:value-of select="yeardestroy"/><xsl:value-of select="yeardestroy/@era"/> by <xsl:value-of select="destroyedby"/> .
    </xsl:when>
    <xsl:otherwise>
     You can still visit it today.
    </xsl:otherwise>
   </xsl:choose>
 <br /><br />
</xsl:template>

<xsl:template match="name[@language!='English']">
 (<em><xsl:value-of select="."/></em>)
</xsl:template>

</xsl:stylesheet>
