<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Template matching the root node -->
  <xsl:template match="/">
    <html>
      <head>
        <title>List of Clients</title>

        <!-- CSS styles for table and formatting -->
        <style>
          /* Table container with blue border and spacing */
          table {
            border-collapse: separate;
            border-spacing: 4px;
            border: 2px solid blue;
            width: 90%;
            /* auto-adjust columns based on content */
            table-layout: auto;
          }

          /* Header and data cells */
          th, td {
            border: 2px solid blue;
            padding: 8px;
          }

          /* Column-specific widths using classes. technically i don't need it but i may want Name column to never exceed 120px.
             Also. it is good to use because diff browsers sometimes sizes out auto-layout differently*/
          .col-name { width: 120px; }
          .col-phone { width: 130px; }
          .col-email { width: 200px; }
          .col-account { width: 110px; }

          /* Header row formatting */
          th {
            font-weight: bold;
            text-align: center;
          }

          /* Right-align for account total column */
          .right {
            text-align: right;
          }

          /* Styling for account totals ≤ 80000 */
          .lessthan {
            color: red;
            font-weight: bold;
          }
        </style>
      </head>

      <body>
        <!-- Page Heading -->
        <h1>List of Clients</h1>

        <!-- Clients Table -->
        <table>
          <!-- Table header row -->
          <tr>
            <th class="col-name">Name</th>
            <th class="col-phone">Phone</th>
            <th class="col-email">Email</th>
            <th class="col-account">Account Total</th>
          </tr>

          <!-- Loop over each Client element inside Accounts -->
          <xsl:for-each select="Accounts/Client">
            <tr>
              <!-- Full name -->
              <td class="col-name">
                <xsl:value-of select="Name/First"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="Name/Last"/>
              </td>
              <td class="col-phone"><xsl:value-of select="Phone"/></td>
              <td class="col-email"><xsl:value-of select="E-mail"/></td>

              <!-- Account total with conditional formatting -->
              <td class="col-account right">
                <xsl:choose>
                  <!-- Red and bold if ≤ 80000 -->
                  <xsl:when test="Account_Total &lt;= 80000">
                    <span class="lessthan">
                      $<xsl:value-of select="Account_Total"/>
                    </span>
                  </xsl:when>
                  <!-- Normal formatting otherwise -->
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
