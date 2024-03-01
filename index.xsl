
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="info">
  <html>
    <head>
       <style>
        td , th{
            padding:10px;
        }
       </style>
    </head>
  <body>
    <h2>My CD Collection</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>NAME</th>
        <th>AGE</th>
        <th>ADDRESS</th>
        <th>IMAGE</th>
        <th>Email</th>
      </tr>
      <xsl:for-each select="studet">
        <!-- <xsl:sort select="name" order="ascending"></xsl:sort> -->
        <tr>
          <td><xsl:value-of select="name"/></td>
          <xsl:choose>
            <xsl:when test="age &lt; 40">
              <td style="background:red;"><xsl:value-of select="age"/></td>
            </xsl:when>
          <xsl:otherwise>
            <td style="background:green;"><xsl:value-of select="age"/></td>
          </xsl:otherwise>
        </xsl:choose>
          <td><xsl:value-of select="address"/></td>
          <td><img src="{image}" height="100px" width="100%"/></td>
          <td><xsl:value-of select="email"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>