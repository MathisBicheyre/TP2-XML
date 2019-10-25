<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="breakfast_menu">
  <html><body>
    <xsl:apply-templates select="food"/>
  </body></html>
</xsl:template>

<xsl:template match="food">
  <li>
    <h1><b><xsl:value-of select="name"/></b> - <xsl:value-of select="price"/></h1>
  <p>
    <xsl:value-of select="description"/> <i>(<xsl:value-of select="calories"/> calories per serving)</i>
  </p>
  </li>
</xsl:template>
</xsl:stylesheet>
