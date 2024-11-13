<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns= "http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs"
    version="3.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="no" 
        include-content-type="no" indent="yes"/>
    
    
       
       
    
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <title>Yellow Fairy</title>
  
            </head>
            <body>
                <xsl:apply-templates select="//metaData"/>
               <h2>table of contents</h2>
                <ul>
                    <xsl:apply-templates select="//story" mode="toc"/>
                </ul>
                <xsl:apply-templates select="//story"/>
            </body>
        </html>
     </xsl:template>
    <xsl:template match="//metaData">
        <h1> <xsl:value-of select="title"/>
        </h1>
    <h2> <xsl:value-of select="author"/>
    </h2>
     <h3> <xsl:value-of select="editor"/>
     </h3>
    </xsl:template>
    <xsl:template match="//story" mode="toc">
        <li>
            <h2>
                <xsl:value-of select="title"/>
            </h2>
        </li>
    </xsl:template>
    <xsl:template match="story">
        <xsl:apply-templates select="title"/>
        <xsl:apply-templates select="origin"/>
        <xsl:apply-templates select="p"/>
    </xsl:template>
    <xsl:template match="title">
        <h2>
            <xsl:value-of select="."/>
        </h2>
    </xsl:template>
    <xsl:template match="origin">
        <h3>
            <xsl:value-of select="."/>
        </h3>
    </xsl:template>
    <xsl:template match="p">
        <p> 
            <xsl:value-of select="."/>
        </p>
    </xsl:template>
</xsl:stylesheet>