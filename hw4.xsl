<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<head>
  <title>ABC Financial Startup</title>
  <style>
    body {
      font-family: Times New Roman, serif;
      margin: 40px;
    }
    h1 {
      font-size: 36px;
      font-weight: bold;
    }
    p {
      font-size: 18px;
    }
  </style>
</head>

<body>

  <h1>ABC Financial Startup</h1>

  <p>
    We are a very young financial manager company and we are proud of our clients
  </p>

  <p>
    We have started with 1 client a little bit more than 10 years ago and now we have
    <xsl:value-of select="count(Accounts/Client)"/> clients!
  </p>

  <p>
    These are our clients:
    <xsl:for-each select="Accounts/Client">
      <xsl:value-of select="Name/First"/>
      <xsl:text> </xsl:text>
      <xsl:value-of select="Name/Last"/>
      <xsl:if test="position() != last()">
        <xsl:text>, </xsl:text>
      </xsl:if>
    </xsl:for-each>.
  </p>

  <p>
    <xsl:value-of select="count(Accounts/Client[Years &gt; 7])"/>
    of our clients are with us for more than 7 years!
  </p>

</body>
</html>
</xsl:template>

</xsl:stylesheet>
