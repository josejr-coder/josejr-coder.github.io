<?xml version = "1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
<xsl:template match="/">

<html>
    <head>
        <title>Clients</title>
        <style>

        </style>
    </head>
    <body>
        <h1 align="center">List of Clients</h1>
        <table border="3" style= "text-align:center;">
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
                    <xsl:choose>
                        <xsl:when test="Account_Total &lt;= 80000">
                            <td style="text-align:right; color:red;">
                                <xsl:value-of select="Account_Total"/>
                            </td>
                        </xsl:when>
                        <xsl:otherwise>
                            <td style="text-align:right;"><xsl:value-of select="Account_Total"/></td>
                        </xsl:otherwise>
                    </xsl:choose>
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>