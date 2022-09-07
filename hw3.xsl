<?xml version="1.0" encoding="UTF-8"?> <!--hay algun problema usar el encoding-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
  <head>
    <title>HW3: Template XSL for List of Clients</title>
  </head>
  <body>
    <h1 style ="font-style:bold; padding:10px; margin-left:10px; ">List of Clients</h1>
    <table style = " padding:10px; border: 1px solid blue;">
      <!--Header-->
      <tr>
        <th>Name</th>
        <th>Phone</th>
        <th>Email</th>
        <th>Account Total</th>
      </tr>
      <xsl:for-each select ="Accounts/Client">
      <tr  >
        <td style ="padding:4px;border:2px solid blue;" ><xsl:value-of select="Name"/></td>
        <td style ="padding:4px;border:2px solid blue;"><xsl:value-of select="Phone"/></td>
        <td style ="padding:4px;border:2px solid blue;"><xsl:value-of select="E-mail"/></td>
        <xsl:choose>
          <xsl:when test="Account_Total > '80000'">
            <td style=" padding:4px;border:2px solid blue;text-align:right;">$<xsl:value-of select="Account_Total"/></td>
          </xsl:when>
          <xsl:otherwise>
            <td style="padding:4px;border:2px solid blue;text-align:right; color:red; font-weight:bold;">$<xsl:value-of select="Account_Total"/></td>
          </xsl:otherwise>
        </xsl:choose>
      </tr>
      </xsl:for-each>
    </table>

  </body>
</html>
<xsl:ouput method="html"/>
</xsl:template>
</xsl:stylesheet>