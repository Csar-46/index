<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <body>
                <h1>GRADO SUPERIOR</h1>
                <ul>
                    <xsl:for-each select="ciclos/ciclo[grado='Superior']">
                        <li>
                            <strong>
                                <xsl:value-of select="@codigo"/>:<xsl:value-of select="nombre"/>
                            </strong>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>


