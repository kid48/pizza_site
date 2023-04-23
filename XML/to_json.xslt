<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>

    <xsl:template match="/">
        <xsl:text>{&#xa;</xsl:text>
        <xsl:text>"restaurant": {&#xa;</xsl:text>
        <xsl:text>"name": "</xsl:text>
        <xsl:value-of select="restaurant/name"/>
        <xsl:text>",&#xa;</xsl:text>
        <xsl:text>"address": {&#xa;</xsl:text>
        <xsl:text>"street": "</xsl:text>
        <xsl:value-of select="restaurant/address/street"/>
        <xsl:text>",&#xa;</xsl:text>
        <xsl:text>"city": "</xsl:text>
        <xsl:value-of select="restaurant/address/city"/>
        <xsl:text>",&#xa;</xsl:text>
        <xsl:text>"state": "</xsl:text>
        <xsl:value-of select="restaurant/address/state"/>
        <xsl:text>",&#xa;</xsl:text>
        <xsl:text>"zipcode": "</xsl:text>
        <xsl:value-of select="restaurant/address/zipcode"/>
        <xsl:text>"&#xa;},&#xa;</xsl:text>
        <xsl:text>"phone": "</xsl:text>
        <xsl:value-of select="restaurant/phone"/>
        <xsl:text>",&#xa;</xsl:text>
        <xsl:text>"email": "</xsl:text>
        <xsl:value-of select="restaurant/email"/>
        <xsl:text>",&#xa;</xsl:text>
        <xsl:text>"website": "</xsl:text>
        <xsl:value-of select="restaurant/website"/>
        <xsl:text>",&#xa;</xsl:text>
        <xsl:text>"hours": [&#xa;</xsl:text>
        <xsl:for-each select="restaurant/hours">
            <xsl:text>{&#xa;</xsl:text>
            <xsl:text>"day": "</xsl:text>
            <xsl:value-of select="day"/>
            <xsl:text>",&#xa;</xsl:text>
            <xsl:text>"open": "</xsl:text>
            <xsl:value-of select="open"/>
            <xsl:text>",&#xa;</xsl:text>
            <xsl:text>"close": "</xsl:text>
            <xsl:value-of select="close"/>
            <xsl:text>"&#xa;}</xsl:text>
            <xsl:if test="position() != last()">
                <xsl:text>,</xsl:text>
            </xsl:if>
            <xsl:text>&#xa;</xsl:text>
        </xsl:for-each>
        <xsl:text>],&#xa;</xsl:text>
        <xsl:for-each select="restaurant/@*">
            <xsl:text>"</xsl:text>
            <xsl:value-of select="name()"/>
            <xsl:text>":"</xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>"</xsl:text>

            <xsl:text>,</xsl:text>

            <xsl:text>&#xa;</xsl:text>
        </xsl:for-each>


        <xsl:text>"menu": {&#xa;</xsl:text>
        <xsl:text>"pizzas": [&#xa;</xsl:text>
        <!-- transform each pizza element in the menu -->
        <xsl:for-each select="restaurant/menu/pizza">
            <xsl:sort select="price"/>
            <!-- start a new object for each pizza -->
            <xsl:text>{ "id": "</xsl:text><xsl:value-of select="@id"/><xsl:text>",</xsl:text>
            <xsl:text>"name": "</xsl:text><xsl:value-of select="@name"/><xsl:text>",</xsl:text>
            <xsl:text>"description": "</xsl:text><xsl:value-of select="@description"/><xsl:text>",</xsl:text>
            <xsl:text>"price": "</xsl:text><xsl:value-of select="@price"/><xsl:text>" }</xsl:text>
            <!-- add a comma and new line except for the last pizza -->
            <xsl:if test="position() != last()">
                <xsl:text>,</xsl:text>
                <xsl:text>&#10;</xsl:text>
            </xsl:if>
        </xsl:for-each>
        <xsl:text>],&#xa;</xsl:text>
        <xsl:text>"desserts": [&#xa;</xsl:text>
        <xsl:for-each select="restaurant/menu/dessert">
            <xsl:sort select="price"/>
            <xsl:text>{ "id": "</xsl:text><xsl:value-of select="@id"/><xsl:text>",</xsl:text>
            <xsl:text>"name": "</xsl:text><xsl:value-of select="@name"/><xsl:text>",</xsl:text>
            <xsl:text>"description": "</xsl:text><xsl:value-of select="@description"/><xsl:text>",</xsl:text>
            <xsl:text>"price": "</xsl:text><xsl:value-of select="@price"/><xsl:text>" }</xsl:text>
            <!-- add a comma and new line except for the last pizza -->
            <xsl:if test="position() != last()">
                <xsl:text>,</xsl:text>
                <xsl:text>&#10;</xsl:text>
            </xsl:if>
        </xsl:for-each>
        <xsl:text>&#xa;]&#xa;</xsl:text>


        <xsl:text>}&#xa;}&#xa;}</xsl:text>
    </xsl:template>
</xsl:stylesheet>
