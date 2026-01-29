<?xml version = "1.0" encoding = "UTF-8"?> 
<xsl:stylesheet version = "1.0" 
   xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">   
   <xsl:template match = "/"> 
      <html> 
	     <head><title>Students</title></head>
         <body> 
            <h1 style="text-align:center; color:red;">Students</h1> 
            <xsl:apply-templates select = "class/student" /> 
         </body> 
      </html> 
   </xsl:template>  

   <xsl:template match = "class/student"> 
      <p>
	  <xsl:apply-templates select = "@nbr" /> <br />
      <xsl:apply-templates select = "firstname" /> <br />
      <xsl:apply-templates select = "lastname" /> <br />
      <xsl:apply-templates select = "nickname" /> 
      </p> 
   </xsl:template>  

   <xsl:template match = "@nbr"> 
      <span style = "font-size:1.3em;"> 
         <xsl:value-of select = "." /> 
      </span> 
   </xsl:template>  

   <xsl:template match = "firstname"> 
      First Name:<span style = "color:blue;"> 
         <xsl:value-of select = "." /> 
      </span> 
   </xsl:template>  

   <xsl:template match = "lastname"> 
      Last Name:<span style = "color:blue; font-style:italic;"> 
         <xsl:value-of select = "." /> 
      </span> 
   </xsl:template>  

   <xsl:template match = "nickname"> 
      Nick Name:<span style = "color:red; font-weight:bold;"> 
         <xsl:value-of select = "." /> 
      </span> 
   </xsl:template>  
	
</xsl:stylesheet>