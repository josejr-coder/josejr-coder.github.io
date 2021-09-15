<?xml version = "1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
<xsl:template match="/">

<html>
    <head>
        <title>Clients</title>
    </head>
    <body>
        <h1 align="center">List of Clients</h1>
        <table border="3" align="center">
            <tr>
                <th>Name</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Account Total</th>
            </tr>
            <xsl:for-each select="Accounts/Client">
                <tr>
                    <td><xsl:value-of select="Name"/></td>
                    <td><xsl:value-of select="Phone"/></td>
                    <td><xsl:value-of select="E-mail"/></td>
                    <td align="right"><xsl:value-of select="Account_Total"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>