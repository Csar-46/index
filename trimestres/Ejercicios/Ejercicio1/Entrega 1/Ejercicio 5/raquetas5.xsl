<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <h3>COLECCIÓN DE RAQUETAS</h3>
        <table border="1">
          <tr bgcolor="#CCFFFF">
            <th style="text-align:left">MARCA</th>
            <th style="text-align:left">MODELO</th>
            <th style="text-align:left">AÑO</th>
          </tr>
          <xsl:for-each select="/TIENDA/RAQUETA[PRECIO &lt; 100]">
            <tr>
              <td><xsl:value-of select="MARCA"/></td>
              <td><xsl:value-of select="MODELO"/></td>
              <td><xsl:value-of select="ANIO"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
