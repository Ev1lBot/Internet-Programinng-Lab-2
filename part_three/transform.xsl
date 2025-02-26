<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <h1>Митні декларації</h1>
        <table>
            <tr>
                <th>Ім'я</th>
                <th>Прізвище</th>
                <th>По-батькові</th>
                <th>Пунк призначення</th>
                <th>Фінанси</th>
            </tr>
            <xsl:for-each select="declaration/info">
                <tr>
                    <td>
                        <xsl:value-of select="person/firstname"></xsl:value-of>
                    </td>
                    <td>
                        <xsl:value-of select="person/lastname"></xsl:value-of>
                    </td>
                    <td>
                        <xsl:value-of select="person/middlename"></xsl:value-of>
                    </td>
                    <td>
                        <xsl:value-of select="destination"></xsl:value-of>
                    </td>
                    <td>
                        <xsl:value-of select="financial"></xsl:value-of>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
</xsl:stylesheet>