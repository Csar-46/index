<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <h3>COLECCIÓN DE RAQUETAS - BABOLAT (PRECIO &gt; 100)</h3>
        <table border="1">
          <tr bgcolor="#CCFFFF">
            <th style="text-align:left">MARCA</th>
            <th style="text-align:left">MODELO</th>
            <th style="text-align:left">AÑO</th>
            <th style="text-align:left">PRECIO</th>
          </tr>
          <xsl:for-each select="TIENDA/RAQUETA[normalize-space(MARCA) = 'BABOLAT']">
            <xsl:if test="PRECIO &gt; 100">
              <tr>
                <td><xsl:value-of select="MARCA"/></td>
                <td><xsl:value-of select="MODELO"/></td>
                <td><xsl:value-of select="ANIO"/></td>
                <td><xsl:value-of select="PRECIO"/></td>
              </tr>
            </xsl:if>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
