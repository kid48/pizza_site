<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="xs">

    <!-- Define variables -->
    <xsl:variable name="dayNames" select="'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday'"/>
    <xsl:variable name="dayArray" select="tokenize($dayNames, ',')"/>

    <!-- Define templates -->
    <xsl:template match="/">
        <xsl:apply-templates select="restaurant"/>
    </xsl:template>

    <xsl:template match="restaurant">
        <xsl:variable name="restaurantId" select="@id"/>
        <xsl:variable name="restaurantRating" select="@rating"/>
        <xsl:variable name="restaurantCuisine" select="@cuisine"/>
        <xsl:variable name="restaurantLocation" select="@location"/>
        <xsl:variable name="restaurantDelivery" select="@delivery"/>
        <xsl:variable name="restaurantTakeout" select="@takeout"/>
        <xsl:variable name="restaurantDinein" select="@dinein"/>
        <xsl:variable name="restaurantReservations" select="@reservations"/>
        <xsl:variable name="restaurantParking" select="@parking"/>
        <xsl:variable name="restaurantWifi" select="@wifi"/>
        <xsl:variable name="restaurantKidsmenu" select="@kidsmenu"/>
        <xsl:variable name="restaurantHalal" select="@halal"/>
        <xsl:variable name="restaurantVegan" select="@vegan"/>
        <xsl:variable name="restaurantGlutenfree" select="@glutenfree"/>
        <xsl:variable name="restaurantKosher" select="@kosher"/>
        <xsl:variable name="restaurantOutdoorseating" select="@outdoorseating"/>
        <xsl:variable name="restaurantBar" select="@bar"/>
        <xsl:variable name="restaurantHappyhour" select="@happyhour"/>
        <xsl:variable name="restaurantLiveentertainment" select="@liveentertainment"/>
        <xsl:variable name="restaurantGoodforgroups" select="@goodforgroups"/>
        <xsl:variable name="restaurantWheelchairaccessible" select="@wheelchairaccessible"/>
        <xsl:variable name="restaurantAlcohol" select="@alcohol"/>
        <xsl:variable name="restaurantPrice" select="@price"/>
        <xsl:variable name="restaurantAttire" select="@attire"/>

        <xsl:variable name="address" select="address"/>
        <xsl:variable name="phone" select="phone"/>
        <xsl:variable name="email" select="email"/>
        <xsl:variable name="website" select="website"/>
        <xsl:variable name="hours" select="hours"/>
        <xsl:variable name="menu" select="menu"/>


        <xsl:if test="@reservations">
            <xsl:value-of select="'reservations': 'true',"/>
        </xsl:if>
        <xsl:if test="@parking">
            <xsl:value-of select="'parking': 'true',"/>
        </xsl:if>
        <xsl:if test="@wifi">
            <xsl:value-of select="'wifi': 'true',"/>
        </xsl:if>
        <xsl:if test="@kidsmenu">
            <xsl:value-of select="'kidsmenu': 'true',"/>
        </xsl:if>
        <xsl:if test="@halal">
            <xsl:value-of select="'halal': 'true',"/>
        </xsl:if>
        <xsl:if test="@vegan">
            <xsl:value-of select="'vegan': 'true',"/>
        </xsl:if>
        <xsl:if test="@glutenfree">
            <xsl:value-of select="'glutenfree': 'true',"/>
        </xsl:if>
        <xsl:if test="@kosher">
            <xsl:value-of select="'kosher': 'true',"/>
        </xsl:if>

        <xsl:if test="@outdoorseating">
            <xsl:value-of select="'outdoorseating': 'true',"/>
        </xsl:if>
        <xsl:if test="@bar">
            <xsl:value-of select="'bar': 'true',"/>
        </xsl:if>
        <xsl:if test="@happyhour">
            <xsl:value-of select="'happyhour': 'true',"/>
        </xsl:if>
        <xsl:if test="@liveentertainment">
            <xsl:value-of select="'liveentertainment': 'true',"/>
        </xsl:if>
        <xsl:if test="@goodforgroups">
            <xsl:value-of select="'goodforgroups': 'true',"/>
        </xsl:if>
        <xsl:if test="@wheelchairaccessible">
            <xsl:value-of select="'wheelchairaccessible': 'true',"/>
        </xsl:if>
        <xsl:if test="@alcohol">
            <xsl:value-of select="'alcohol': '{@alcohol}',"/>
        </xsl:if>
        <xsl:if test="@price">
            <xsl:value-of select="'price': '{@price}',"/>
        </xsl:if>
        <xsl:if test="@attire">
            <xsl:value-of select='attire: {@attire}'/>
        </xsl:if>
        <xsl:text>},</xsl:text>
    </xsl:template>

    <xsl:template match="/">
        <xsl:text>{</xsl:text>
        <xsl:apply-templates select="restaurant"/>
        <xsl:text>]}</xsl:text>
    </xsl:template>
</xsl:stylesheet>