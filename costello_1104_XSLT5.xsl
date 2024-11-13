<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="#all"
    version="3.0">
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="no" 
        include-content-type="no" indent="yes"/>
    
    <xsl:template match="/" >
        <html>
            <head>
                <title>Shakespearean Sonnets</title>
            </head>
            <body>
                <h1>Shakespearean Sonnets</h1>
                <h2>Contents</h2>
                <ul>
                    <xsl:apply-templates select="//sonnet" mode="toc"/>
                </ul>
                <hr/>
                  <xsl:apply-templates mode="sonnets"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="//sonnet" mode="toc">
        <li>
            <a href="#{@number}"><xsl:value-of select="@number"/></a>
            <xsl:text>. </xsl:text>
            <xsl:value-of select="line[1]"/>
        </li>
    </xsl:template>
    
    <xsl:template match="sonnet" mode="sonnets">
        <h2 id="{@number}">
            <xsl:value-of select="@number"/>
        </h2>
        <p>
            <xsl:for-each select="line">
                <xsl:apply-templates mode="sonnets"/>
                <br>
                <xsl:value-of select="line"/> 
                </br>
            </xsl:for-each>  
        </p>
    </xsl:template>
 
</xsl:stylesheet>