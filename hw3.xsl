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
          /* Table container with blue border, spacing, and fixed layout */
          table {
            border-collapse: separate;
            border-spacing: 4px;
            border: 2px solid blue;
            width: 90%;
            table-layout: fixed; /* ensures column widths are respected */
          }

          /* Header and data cells */
          th, td {
            border: 2px solid blue;
            padding: 8px;
            white-space: nowrap;       /* prevents text from wrapping */
            overflow: hidden;
            text-overflow: ellipsis;   /* adds ... if content is too long */
          }

          /* Set general column widths */
          table tr th:nth-child(1), table tr td:nth-child(1) { width: 120px; }  /* Name */
          table tr th:nth-child(2), table tr td:nth-child(2) { width: 130px; }  /* Phone */
          table tr th:nth-child(3), table tr td:nth-child(3) { width: 200px; }  /* Email */
          table tr th:nth-child(4), table tr td:nth-child(4) { width: 110px; }  /* Account Total */

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
            <th>Name</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Account Total</th>
          </tr>

          <!-- Loop over each Client element inside Accounts -->
          <xsl:for-each select="Accounts/Client">
            <tr>
              <!-- Full name -->
              <td>
                <xsl:value-of select="Name/First"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="Name/Last"/>
              </td>

              <!-- Phone number -->
              <td><xsl:value-of select="Phone"/></td>

              <!-- Email -->
              <td><xsl:value-of select="E-mail"/></td>

              <!-- Account total with conditional formatting -->
              <td class="right">
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
