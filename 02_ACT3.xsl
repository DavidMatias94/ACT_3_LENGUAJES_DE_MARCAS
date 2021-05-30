<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">

        <instituto>

            <informacion>
                <empresa>
                    <xsl:value-of select="ite/empresa"/>
                </empresa>
        
                <telefono>
                        <xsl:value-of select="ite/telefono"/>
                </telefono>
            </informacion>
            
            <profesores>
                <xsl:for-each select="ite/profesores/profesor">
            <profesor>

            <xsl:attribute name="id">
                <xsl:value-of select="id"/>
            </xsl:attribute>
            <nombre>
                <xsl:value-of select="nombre"/>
            </nombre>
          </profesor>
                </xsl:for-each>
            </profesores>

            <jefe_estudios>
                <nombre><xsl:value-of select="ite/jefe_estudios/nombre"/></nombre>
                <despacho><xsl:value-of select="ite/jefe_estudios/despacho"/></despacho>
            </jefe_estudios>

            <director>
                <nombre><xsl:value-of select="ite/director/nombre"/></nombre>
                <despacho><xsl:value-of select="ite/director/despacho"/></despacho>
            </director>

            <ciclos>
                <xsl:for-each select="ite/ciclos/ciclo">
          <ciclo>
            <xsl:attribute name="tipo">
                <xsl:value-of select="grado"/>
            </xsl:attribute>
            <nombre>
                <xsl:value-of select="nombre"/>
            </nombre>
            <abreviacion>
                <xsl:value-of select="@id"/>
            </abreviacion>
            </ciclo>
                </xsl:for-each>
            </ciclos>
        </instituto>

    </xsl:template>
</xsl:stylesheet>