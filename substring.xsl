<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<head><title>Substring</title></head>
<body>
<h1>Using the substring before and after</h1>
City: <xsl:value-of select="substring-before('San Francisco, CA', ',')"/>
<br/>
State: <xsl:value-of select="substring-after('San Francisco, CA', ', ')"/>
<br />
Area Code: <xsl:value-of select="substring-after(substring-before('(415) 452-7000', ')'), '(')"/>
</body>
</html>
</xsl:template>
</xsl:stylesheet>