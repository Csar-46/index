<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html lang="es">
    <head>
      <meta charset="UTF-8"/>
      <title>Todos los Videojuegos</title>
      <link rel="stylesheet" href="../estilos/estilo.css"/>
    </head>
    <body>
      <h1>Todos los Videojuegos</h1>
      <table>
        <tr>
          <th>Título</th>
          <th>Género</th>
          <th>Año</th>
          <th>Imagen</th>
          <th>Descripción</th>
          <th>Precio</th>
          <th>Descuento</th>
          <th>Stock</th>
          <th>Vendidos</th>
          <th>Opinión Media</th>
        </tr>
        <xsl:for-each select="videojuegos/videojuego">
          <tr>
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:value-of select="genero"/></td>
            <td><xsl:value-of select="@anyo"/></td>
            <td>
              <img>
                <xsl:attribute name="src">
                  <xsl:value-of select="imagen"/>
                </xsl:attribute>
                <xsl:attribute name="alt">
                  <xsl:value-of select="titulo"/>
                </xsl:attribute>
                <xsl:attribute name="width">120</xsl:attribute>
              </img>
            </td>
            <td><xsl:value-of select="descripcion"/></td>
            <td><xsl:value-of select="precio"/> €</td>
            <td><xsl:value-of select="precio_descuento"/> €</td>
            <td><xsl:value-of select="unidades_stock"/></td>
            <td><xsl:value-of select="unidades_vendidas"/></td>
            <td><xsl:value-of select="valor_opiniones"/></td>
          </tr>
        </xsl:for-each>
      </table>
      <p><a href="../html/index.html">⬅ Volver al índice</a></p>
    </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
