<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>


<xsl:template match="/">
<html>
  <head>
    <title>
      ABC Financial Startup
    </title>
    <style>
      .imageC{
        display: block;
       margin-left: auto;
       margin-right: auto;
       width: 30%;

      }

      .titulo{
        font-family:verdana;
        text-align:center;
        font-weight:900;
        color:#4285F4;
        margin-top:30px;
      }

      .texto{
        font-family:verdana;
        font-size:18px;
        margin-left:40px;
      } 
    </style>
  </head>
  
  <body>
    <h1 class="titulo" >ABC Financial Startup</h1>
    <img src="financialstartup.jpg" alt="ABC Financial Startup Logo" class="imageC" ></img>
    <p class="texto">
      We are a very young financial manager company and we are proud of our clients. <br/><br/>

    </p>

    <p class="texto">
      <xsl:for-each select="/">
      We have started with <xsl:value-of select ="count(/Accounts/Client[Years&gt;=10])"/> clients a little bit more than 10 years ago and now we have 
      <xsl:value-of select ="count(/Accounts/Client/Name/First)"/> clients!<br/><br/>
    </xsl:for-each>
    </p>
    
    <p class="texto">
    These are our clients:
    <xsl:for-each select="/Accounts/Client/Name" > 
    <!--If we want a space between First and Last, leave a space in xsl text-->
      <xsl:value-of select="First" /> <xsl:text> </xsl:text> <xsl:value-of select="Last"/>
      <xsl:choose>
        <xsl:when test = "position()=last()">.</xsl:when>
        <xsl:when test = "position()=last() -1">, and </xsl:when>
        <xsl:otherwise>, </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each>
    <br/><br/>
    </p>

    <p class="texto">
    <xsl:value-of select ="count(/Accounts/Client[Years&gt;7])"/> of our clients are with us for more than 7 years!  
    </p>

  </body>
</html>
</xsl:template>
</xsl:stylesheet>