<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>

<xsl:template match="/">
 <html><head><title>Employees</title></head>
  <body>
   <h1>Monthly Salary of Employees</h1>

   <p>We currently have <xsl:value-of select="count(employees/employee)" /> employees in our start up and here are their names and current monthly salaries:<br /><br />
   <xsl:for-each select="employees/employee">
      <xsl:value-of select="firstname" /><xsl:text> </xsl:text><xsl:value-of select="lastname" /> gets <xsl:value-of select="salary div 12" /> per month.<br />
   </xsl:for-each>
   </p>

  </body>
 </html>
</xsl:template>
</xsl:stylesheet>