<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Template matching the root node -->
  <xsl:template match="/">
    <html>
      <head>
        <title>List of Clients</title>

        <!-- CSS styles to format the table and text -->
        <style>
          /* Table container with blue thick border and spacing */
          table {
            border-collapse: separate;
            border-spacing: 4px;
            border: 2px solid blue;
            width: 90%;
          }

          /* Header cells with blue border, bold text, and centered content */
          th {
            border: 2px solid blue;
            padding: 8px;
            font-weight: bold;
            text-align: center;
          }

          /* Data cells with blue border and padding */
          td {
            border: 2px solid blue;
            padding: 8px;
          }

          /* Class to right-align text (used for account totals) */
          .right {
            text-align: right;
          }

          /* Class for account totals less than or equal to 80000:
             red text and bold font */
          .low {
            color: red;
            font-weight: bold;
          }
        </style>
      </head>

      <body>
        <!-- Main heading -->
        <h1>List of Clients</h1>

        <!-- Clients table -->
        <table>
          <!-- Table header row -->
          <tr>
            <th>name</th>
            <th>phone</th>
            <th>email</th>
            <th>account_total</th>
          </tr>

          <!-- Loop over each Client element inside Accounts -->
          <xsl:for-each select="Accounts/Client">
            <tr>
              <!-- Display full name: First + Last -->
              <td>
                <xsl:value-of select="Name/First"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="Name/Last"/>
              </td>

              <!-- Phone number -->
              <td><xsl:value-of select="Phone"/></td>

              <!-- Email -->
              <td><xsl:value-of select="E-mail"/></td>

              <!-- Account total with special formatting -->
              <td class="right">
                <xsl:choose>
                  <!-- If account total ≤ 80000, display in red and bold -->
                  <xsl:when test="Account_Total &lt;= 80000">
                    <span class="low">
                      $<xsl:value-of select="Account_Total"/>
                    </span>
                  </xsl:when>
                  <!-- Otherwise, display normally with dollar sign -->
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
