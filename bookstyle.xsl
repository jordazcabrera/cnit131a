<?xml version="1.0"?>
<!-- The first line of any XSLT file is exactly the same first line an XML document has -->
<!-- the line below specifies the namespace for the style sheet and also declares its prefix (xsl right after xmlns:) -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

     <!-- Before you apply the rules below, specify that you want your output in HTML format. -->
<xsl:output method="html"/>
     <!-- transformation begins by processing the root template that needs to exist in every XSLT. The root template defines the set of rules apply 
          to the root node of the XML document. The forward slash (/) matches the root node of the XML document. If you want to have the output in 
          HTML format, you will need to add the head, title, body, and other necessary HTML tags. You can even add CSS and JavaScript!-->
     <!-- Every XSLT transformation needs the root template to start. If you do not include the root template, a root template built into the XSLT processor 
          will be automatically used and this automatic one generally lists all the data in the XML document in plain text. -->
<xsl:template match="/">

     <html>
          <head>
               <title>Books Styled</title>
                <link rel="icon" href="data:," />
          </head>
          
          <body>
               <!-- We are including inline CSS using the style attribute in the <h1> element and in the <img> element.
               We are also including other known HTML tags such as the <strong> to have the data written in bold.
               We NEED to use the forward slash (/) to close the <img> self-closed tag because we are following the XML 
               rules that every tag needs a closing (even when we are writing XSLT files). -->
               <h1 style="font-style:italic; color:red;">
                   Books
               </h1>
          
               <p> 
                    <img src="books.jpg" 
                         alt="3 red books piled" 
                         width="100" 
                         height="100"
                         style="float:left; margin-right: 10px;"
                    /> 
                    The 
                    <xsl:value-of select="books/book/name"/> 
                    was written by 
                    <strong>
                         <xsl:value-of select="books/book/author"/>
                    </strong>
               </p>

          </body>
     </html>
  
</xsl:template>
</xsl:stylesheet>
