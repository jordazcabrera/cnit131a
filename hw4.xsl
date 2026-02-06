<?xml version="1.0" encoding="UTF-8"?>

<!-- 
  XSL stylesheet for Homework 4
  This file transforms hw4.xml into an informational web page
  for ABC Financial Startup using XPath expressions.
-->

<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Root template: Matches the root of the XML document and generates the full HTML page.-->
  <!-- XPath USED BELOW:match="/" is an XPath expression that selects the root of the XML document-->
  <xsl:template match="/">
    <html>
      <head>
        <title>ABC Financial Startup</title>

        <!-- Basic styling for readability -->
        <style>
          body {
            font-family: Times New Roman, serif;
            margin: 40px;
          }
          h1 {
            font-size: 36px;
          }
          p {
            font-size: 18px;
          }
          .image {
            text-align: center;
            margin: 20px 0;
          }
        </style>
      </head>

      <body>

        <!-- Main heading -->
        <h1>ABC Financial Startup</h1>

        <!-- Company image. Self-closing img tag (required for XML). Image is centered using a div -->
        <div class="image">
          <img src="financialstartup.jpg"
               alt="ABC Financial Startup" />
        </div>

        <!-- Introductory paragraph describing the company -->
        <p>
          We are a very young financial manager company and we are proud of our clients.
        </p>

        <!-- Client count paragraph. XPath count() function counts all Client elements -->
        <p>
          We have started with 1 client a little bit more than 10 years ago and now we have
          <xsl:value-of select="count(Accounts/Client)" />
          clients!
        </p>

        <!-- XPath used: Accounts/Client selects all Client nodes
             xsl:for-each iterates through them.
        <!-- Uses position() and last() to format commas and ", and" correctly -->
        <p>
          These are our clients:
          <xsl:for-each select="Accounts/Client">

            <!-- First client: print name without a comma -->
            <xsl:choose>

              <!-- XPath used: position() and last() are XPath functions
                   Used to detect the last client in the list ", and" -->
              <xsl:when test="position() = last()">
                <xsl:text>, and </xsl:text>

                <!-- XPath used to access First and Last name elements -->
                <xsl:value-of select="Name/First" />
                <xsl:text> </xsl:text>
                <xsl:value-of select="Name/Last" />
              </xsl:when>

              <!-- XPath used: position() = 1 checks if this is the first client -->
              <xsl:when test="position() = 1">
                <xsl:value-of select="Name/First" />
                <xsl:text> </xsl:text>
                <xsl:value-of select="Name/Last" />
              </xsl:when>

              <!-- Middle clients: prepend a comma -->
              <xsl:otherwise>
                <xsl:text>, </xsl:text>
                <xsl:value-of select="Name/First" />
                <xsl:text> </xsl:text>
                <xsl:value-of select="Name/Last" />
              </xsl:otherwise>

            </xsl:choose>
          </xsl:for-each>.
        </p>

        <!-- Long-term clients paragraph XPath predicate filters clients with more than 7 years
          count() returns how many match the condition -->
        <p>
          <xsl:value-of select="count(Accounts/Client[Years &gt; 7])" />
          of our clients are with us for more than 7 years!
        </p>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
