<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<title>Mi segunda tubería</title>
</head>
<body>
El contenido de la etiqueta content dentro del archivo xml es:
<strong><xsl:value-of select="/content"/></strong>
</body>
</html>
</xsl:template>
</xsl:stylesheet>