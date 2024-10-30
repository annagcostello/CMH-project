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
    
    
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <title>Skyrim</title>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="skyrim">
        
            <xsl:apply-templates select="* except cast"/>
        
    </xsl:template >
    
 <xsl:template match="paragraph/*" mode="paragraph">
     <span class="{name()}">
         <xsl:apply-templates mode="paragraph"/>
     </span>
 </xsl:template>
    
    <xsl:template match="QuestEvent">
        <strong>
            <span class="Event"><xsl:apply-templates/></span>
        </strong> 
    </xsl:template>
    
    <xsl:template match="QuestItem">
        <strong>
            <span class ="Item"><xsl:apply-templates/></span>
        </strong>
    </xsl:template>
    
    <xsl:template match="character">
            <em>
                <xsl:apply-templates/>
            </em>
    </xsl:template>
    
    <xsl:template match="epithet">
       <i> 
           <xsl:apply-templates/>
       </i>
    </xsl:template>
    
    <xsl:template match="faction | character">
           <span id="{@ref}"> 
               <xsl:apply-templates/>
           </span>
    </xsl:template>
    
    <xsl:template match="location">
        <em>
            <xsl:apply-templates/>
        </em>
    </xsl:template>
   
</xsl:stylesheet>