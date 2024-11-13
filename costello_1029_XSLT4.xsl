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
    
    <xsl:variable name="symbol" as="element()+" select="//inherent_rights[@type eq 'equality']"/>
    <xsl:variable name="equality" as="xs:integer" select="count($symbol)"/>
 
 <xsl:template match="/">
  
    <xsl:value-of select="$equality"/>
 </xsl:template>
</xsl:stylesheet>