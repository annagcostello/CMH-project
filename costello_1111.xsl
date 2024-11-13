<?xml version="1.0" encoding="UTF-8"?>

    <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xs="http://www.w3.org/2001/XMLSchema"
        xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="#all"
        xmlns="http://www.w3.org/2000/svg" version="3.0">
        <xsl:output method="xml" indent="yes"/>
        
        <!-- ================================================================ -->
        <!-- Stylesheet variables (preset)                                    -->
        <!-- ================================================================ -->
        <!-- number of pixels vertical for the Y axis -->
        <xsl:variable name="max_height" as="xs:double" select="500"/>
        <!-- default spacing variable -->
        <xsl:variable name="spacing" as="xs:double" select="100"/>
        <!-- number of pixels horizontal for X axis -->
        <xsl:variable name="max_width" as="xs:double" select="($spacing) * count(//election)"/>
        <!-- ================================================================ -->
        <!-- Templates                                                        -->
        <!-- ================================================================ -->
        <xsl:template match="/">
            <svg height="{$max_height + 200}" width="{$max_width + 250}"
                viewBox="-50 -{$max_height + 100} {$max_width + 200} {$max_height + 200}">
                
                
                <!-- ==================================================== -->
                <!-- Create per-election bubbles and vertical ruling      -->
                <!-- ==================================================== -->
                <xsl:apply-templates select="//election"/>
                <!-- ==================================================== -->
                <!-- Create horizontal ruling with labels                 -->
                <!-- ==================================================== -->
                <!-- this axis is electoral votes, of which there are 538
                    so we want ruling lines in increments of 100 -->
                
                
             <xsl:for-each select="0 to 5">
                 <xsl:variable name="ruling_height" as="xs:double" select=". div 5 * $max_height"/>
                 <line x1="0" x2="{$max_width}" y1="-{$ruling_height}" y2="-{$ruling_height}" 
                     stroke="black" stroke-width="1"></line>
             </xsl:for-each>
                
                
            </svg>
        </xsl:template>
        
        <xsl:template match="election">
            <!-- ============================================================ -->
            <!-- Template variables                                           -->
            <!-- ============================================================ -->
            
            
           <xsl:variable name="xpos" as="xs:double" select="((position() -1) * $spacing) +($spacing div 2)"/>
            
            <line x1="{$xpos}" x2="{$xpos}" y1="15" y2="-{$max_height}"
            stroke="black" stroke-width="1"/>
            
            <!-- ============================================================ -->
            <!-- Create bubbles                                               -->
            <!-- ============================================================ -->
            <xsl:apply-templates/>
            <!-- ============================================================ -->
            <!-- Create vertical ruling line and label                        -->
            <!-- ============================================================ -->
            
          
            
        </xsl:template>
        <xsl:template match="candidate">
            <!-- ============================================================ -->
            <!-- Process individual candidates                                -->
            <!-- ============================================================ -->
            
            
            <xsl:variable name="xpos" as="xs:double" select="(count(preceding::election)) * $spacing + ($spacing div 2)"/>
            
            <xsl:variable name="ypos" as="xs:double" select="@electoral_votes"/>
            
            <xsl:variable name="radius" as="xs:double" select="@popular_percentage * 130"/>
            
            <xsl:variable name="circlecolor" as="xs:string" select="
                if (@party='Republican') then 'red'
                else if (@party='Democrat') then 'blue'
                else 'green'  
                "/>
            
            <circle cx="{$xpos}" cy="-{$ypos}" r="{math:sqrt($area div math:pi())}" fill="{$circlecolor}"/>
          
          
            
            
        </xsl:template>
    </xsl:stylesheet>
    
    
