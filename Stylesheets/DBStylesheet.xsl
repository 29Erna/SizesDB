<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <h2>SizeDB: List of games</h2>
                <table border="1">
                    <tr bgcolor="ff00ff">
                        <th>Title</th>
                        <th>Platform</th>
                        <th>Size</th>
                    </tr>
                    <xsl:for-each select="database/game">
                        <tr>
                            <td><xsl:value-of select="title"/></td>
                            <td><xsl:value-of select="platform"/></td>
                            <td><xsl:value-of select="size/number"/> <xsl:value-of select="size/measure"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>