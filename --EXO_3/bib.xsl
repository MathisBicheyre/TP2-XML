<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="bib">
  <html>
    <head><meta content="text/html; charset=UTF-8" http-equiv="Content-Type"></meta></head>
    <body>
      <h1 align="left">Domaines</h1>
      <xsl:for-each select="domain">
        <xsl:variable name="link" select="title"/>
        <h2><a href="#{$link}"><xsl:value-of select="title"/></a></h2>
      </xsl:for-each>
      <xsl:apply-templates select="domain"/>
    </body>
  </html>
</xsl:template>

<xsl:template match="domain">
  <hr/><hr/>
  <table border="1" width="100%">
  <tbody>
  <tr><td bgcolor="#c0c0c0" width="100%">
    <xsl:variable name="name" select="title"/>
  	<h2><a name="{$name}"><xsl:value-of select="title"/></a></h2>
  </td></tr>
  </tbody>
  </table>
  <xsl:apply-templates select="bib_ref"/>
</xsl:template>

<xsl:template match="bib_ref">
  <hr/><h3>Titre : <xsl:value-of select="title"/></h3>
  Auteur(s):<xsl:value-of select="author"/><br/>
  Année : <xsl:value-of select="year"/><br/>
  <xsl:variable name="weblink" select="weblink"/>
  Lien : <a href="{$weblink}"><xsl:value-of select="weblink"/></a><br/>
  Commentaires: <xsl:value-of select="comments"/><br/><br/>
</xsl:template>

</xsl:stylesheet>
