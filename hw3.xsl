<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>List of Clients</title>
        <style>
          table { border-collapse: collapse; width: 80%; }
          th, td { border: 1px solid black; padding: 8px; }
          th { background-color: #f2f2f2; }
          .right { text-align: right; }
          .low { color: red; font-weight: bold; }
        </style>
      </head>

      <body>
        <h1>List of Clients</h1>

        <table>
          <tr>
            <th>name</th>
            <th>phone</th>
            <th>email</th>
            <th>account_total</th>
          </tr>

          <!-- FIXED XPath -->
          <xsl:for-each select="Accounts/Client">
            <tr>
              <td>
                <xsl:value-of select="Name/First"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="Name/Last"/>
              </td>

              <td><xsl:value-of select="Phone"/></td>
              <td><xsl:value-of select="E-mail"/></td>

              <td class="right">
                <xsl:choose>
                  <xsl:when test="Account_Total &lt;= 80000">
                    <span class="low">
                      $<xsl:value-of select="Account_Total"/>
                    </span>
                  </xsl:when>
                  <xsl:otherwise>
                    $<xsl:value-of select="Account_Total"/>
                  </xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
          </xsl:for-each>

        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
