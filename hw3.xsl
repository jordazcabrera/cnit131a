<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>List of Clients</title>
        <style>
          table {
            border-collapse: collapse;
            width: 80%;
          }
          th, td {
            border: 1px solid black;
            padding: 8px;
          }
          th {
            background-color: #f2f2f2;
          }
          .right {
            text-align: right;
          }
          .low {
            color: red;
            font-weight: bold;
          }
        </style>
      </head>

      <body>
        <!-- Page Heading -->
        <h1>List of Clients</h1>

        <!-- Client Table -->
        <table>
          <tr>
            <th>name</th>
            <th>phone</th>
            <th>email</th>
            <th>account_total</th>
          </tr>

          <xsl:for-each select="clients/client">
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="phone"/></td>
              <td><xsl:value-of select="email"/></td>

              <!-- Account Total Formatting -->
              <td class="right">
                <xsl:choose>
                  <xsl:when test="account_total &lt;= 80000">
                    <span class="low">
                      $<xsl:value-of select="account_total"/>
                    </span>
                  </xsl:when>
                  <xsl:otherwise>
                    $<xsl:value-of select="account_total"/>
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
