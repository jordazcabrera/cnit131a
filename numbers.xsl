<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<head><title>Using format-number</title></head>
<body>
<h1>Using the format-number function</h1>
<xsl:value-of select="format-number(500100, '#')"/>
<br/>
<xsl:value-of select="format-number(500100, '0')"/>
<br/>
<xsl:value-of select="format-number(500100, '#.00')"/>
<br/>
<xsl:value-of select="format-number(500100, '#.0')"/>
<br/>
<xsl:value-of select="format-number(500100, '###,###.00')"/>
<br/>
<xsl:value-of select="format-number(0.23456, '#%')"/>
<br />
<xsl:value-of select="format-number(-2.34, '0.00;(0.00)')"/>
</body>
</html>
</xsl:template>
</xsl:stylesheet>