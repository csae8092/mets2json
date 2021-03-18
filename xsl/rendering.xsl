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
    
    <xsl:template name="rendering">
        <xsl:text>"rendering": [</xsl:text>
<!--        <xsl:text>"id": "</xsl:text><xsl:value-of select="//mets:structMap[@TYPE='LOGICAL']/mets:div/@CONTENTIDS"/><xsl:text>",</xsl:text>
        <xsl:text>"type": "Text",</xsl:text>
        <xsl:text>"label": "Download as PDF",</xsl:text>
        <xsl:text>"items": [</xsl:text>-->
        <xsl:for-each select="//mets:div[@TYPE='page']">
            <xsl:variable name="oderlabel" select="concat(substring-after(@ID,'PHYS_'),' (',@ORDERLABEL,')')"/>
            <xsl:text>{</xsl:text>
            <xsl:text>"id": "</xsl:text>
            <xsl:variable name="FILEID" select="./mets:fptr[1]/data(@FILEID)"/>
            <xsl:variable name="file_ID" select="//mets:file[@ID = $FILEID]"/>
            <xsl:value-of select="$file_ID/mets:FLocat/@xlink:href"/><xsl:text>",</xsl:text>
            <xsl:text>"type": "Text",</xsl:text>
            <xsl:text>"format": "</xsl:text><xsl:value-of select="$file_ID/@MIMETYPE"/><xsl:text>",</xsl:text>
            <xsl:text>"label": "</xsl:text><xsl:value-of select="$oderlabel"/><xsl:text>"</xsl:text>
            <xsl:text>}</xsl:text><!-- items -->
            <xsl:if test="position() != last()">
                <xsl:text>,</xsl:text>
            </xsl:if>
        </xsl:for-each>
        <!--<xsl:text>]</xsl:text><!-\- items -\->-->
        <xsl:text>]</xsl:text><!-- rendering -->
    </xsl:template>
    
</xsl:stylesheet>