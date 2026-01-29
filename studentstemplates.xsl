<?xml version = "1.0" encoding = "UTF-8"?> 
<xsl:stylesheet version = "1.0" 
   xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">   

	<!-- We know that the root template -xsl:template is the first thing processed in any XSLT style sheet document. 
	     The template is the set of rules that will be applied to the root node of the XML document. 
	     XSTL allows you to create more templates you do not need to have only the root template. This feature allows you
	     to create different sets of processing rules that can be applied to different parts of the XML document.
         One of the main benefits of using templates is that you can reuse a template for other nodes meaning that you can 
	     create a template and simply apply it whenever necessary. -->
	<!-- from line 12-20 is what we have been using so far (defining the start of an HTML document, etc.) -->
   <xsl:template match = "/"> 
      <html> 
	     <head><title>Students</title></head>
         <body> 
            <h1 style="text-align:center; color:red;">Students</h1> 
            <xsl:apply-templates select = "class/student" /> 
         </body> 
      </html> 
   </xsl:template>  
	
	<!-- This is different from what we have been using instead of using <xsl:value-of select=.../> to get the value 
	     of a certain node, we are using apply-templates. -->
   <xsl:template match = "class/student"> 
      <p>
	  <!-- Notice that the <xsl:template match = "class/student"> is formed by other templates - it has 4 xsl:apply-templates instructions. 
		   The first one, you can select an attribute just need to use the @ symbol in front of the name of the attribute!!!.
		   The second one will be firstname, lastname and nickname. Each one of those refer to their respective templates that you see below.-->
		<!--Each template is defining how the content of the specific node will be displayed and whenever necessary, within that code, 
		    you can reuse the template(s) created. -->
	  <!-- <xsl:apply-templates select = "@nbr" /> <br /> -->
	  <xsl:apply-templates select = "@nbr" /> (<xsl::apply-templates select = "nickname"/>) <br />
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



