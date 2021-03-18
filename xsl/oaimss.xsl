<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:mets="http://www.loc.gov/METS/"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:dv="http://dfg-viewer.de"
    xmlns:oai_mets="http://www.openarchives.org/OAI/2.0/"
    xmlns:mods="http://www.loc.gov/mods/v3"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:import href="metadata_manifest.xsl"/>
    <xsl:import href="metadata_project.xsl"/>
    <xsl:import href="thumbnail.xsl"/>
    <xsl:import href="technicals.xsl"/>
    <xsl:import href="licence.xsl"/>
    <xsl:import href="provider.xsl"/>
    <xsl:import href="homepage.xsl"/>
    <xsl:import href="service.xsl"/>
    <xsl:import href="rendering.xsl"/>
    <xsl:import href="start.xsl"/>
    <xsl:import href="services.xsl"/>
    <xsl:import href="canvases.xsl"/>
    <xsl:import href="structures.xsl"/>
    <xsl:import href="annotations.xsl"/>
    <xsl:param name="baseURI">
        <xsl:value-of select="replace(//dv:presentation,'/start.htm','')"/>
    </xsl:param>
    
    <xsl:template match="/">
        <xsl:text>{</xsl:text>
        
        <!--  ####### Manifest metadata ####### -->
        <xsl:call-template name="metadata_manifest">
            <xsl:with-param name="baseURI" select="$baseURI"/>
        </xsl:call-template>
        <xsl:text>,</xsl:text>
        
        <!--  ####### Project metadata ####### -->
        <xsl:call-template name="metadata_project"/>
        <xsl:text>,</xsl:text>
        
        <!--  ####### thumbnail ####### -->
        <xsl:call-template name="thumbnail">
            <xsl:with-param name="baseURI" select="$baseURI"/>
        </xsl:call-template>
        <xsl:text>,</xsl:text>
        
        <!--  ####### technicals ####### -->
        <xsl:call-template name="technicals"/>
        <xsl:text>,</xsl:text>
        
        <!--  ####### licence ####### -->
        <xsl:call-template name="licence"/>
        <xsl:text>,</xsl:text>
        
        <!--  ####### provider ####### -->
        <xsl:call-template name="provider">
            <xsl:with-param name="baseURI" select="$baseURI"/>
        </xsl:call-template>
        <xsl:text>,</xsl:text>
        
        <!--  ####### homepage ####### -->
        <xsl:call-template name="homepage"/>
        <xsl:text>,</xsl:text>
        <!--  ####### service ####### -->
        <xsl:call-template name="service">
            <xsl:with-param name="baseURI" select="$baseURI"/>
        </xsl:call-template>
        <xsl:text>,</xsl:text>
        
        <!--  ####### rendering ####### -->
        <xsl:call-template name="rendering"/>
        <xsl:text>,</xsl:text>
        
        <!--  ####### start ####### -->
        <xsl:call-template name="start">
            <xsl:with-param name="baseURI" select="$baseURI"/>
        </xsl:call-template>
        <xsl:text>,</xsl:text>
        
        <!--  ####### start ####### -->
        <xsl:call-template name="services">
            <xsl:with-param name="baseURI" select="$baseURI"/>
        </xsl:call-template>
        <xsl:text>,</xsl:text>
        
        <!--  ####### canvas items ####### -->
        <xsl:call-template name="canvases">
            <xsl:with-param name="baseURI" select="$baseURI"/>
        </xsl:call-template>
        <xsl:text>,</xsl:text>
        
        <!--  ####### structure ####### -->
        <xsl:call-template name="structures">
            <xsl:with-param name="baseURI" select="$baseURI"/>
        </xsl:call-template>
        <xsl:text>,</xsl:text>
        
        <!--  ####### annotations ####### -->
        <xsl:call-template name="annotations">
            <xsl:with-param name="baseURI" select="$baseURI"/>
        </xsl:call-template>
        
        <xsl:text>}</xsl:text>
    </xsl:template>
    
</xsl:stylesheet>