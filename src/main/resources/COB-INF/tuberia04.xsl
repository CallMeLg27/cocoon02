<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
    <style>
    .container {
      width: 800px;
      text-align: center;
      background: #fafafa;
      margin: auto auto;
    }

    table.facture-to {
      text-align: left;
      margin: 20px;
    }

    table.facture-detail {
      text-align: left;
      margin: 10px auto;
    }

    table * {
      margin: 0px;
    }

    table tr td {
      padding: 1px 5px;
    }
    </style>

    <body>
      <div class="container">
        <h2>Factura de venta electrónica</h2>
        <h3>
          <xsl:value-of select="content/company-info/name" />
        </h3>
        <table class="facture-to" border="1">
          <tr bgcolor="lightblue">
            <th>Facturar a</th>
          </tr>
          <tr>
            <td>
              <xsl:value-of select="content/factureto/name" />
            </td>
          </tr>
          <tr>
            <td>
              <xsl:value-of select="content/factureto/company-name" />
            </td>
          </tr>
          <tr>
            <td>
              <xsl:value-of select="content/factureto/address" />
            </td>
          </tr>
          <tr>
            <td>
              <xsl:value-of select="content/factureto/postal-code" />
            </td>
          </tr>
          <tr>
            <td>
              <xsl:value-of select="content/factureto/telephone" />
            </td>
          </tr>
          <tr>
            <td>
              <xsl:value-of select="content/factureto/email" />
            </td>
          </tr>
        </table>
        <table class="facture-detail" border="1">
          <tr bgcolor="#9acd32">
            <th>id</th>
            <th>Producto</th>
            <th>descripcion</th>
            <th>Cantidad</th>
            <th>Precio unitario</th>
            <th>Total</th>
          </tr>
          <xsl:for-each select="content/products/product">
            <tr>
              <td>
                <xsl:value-of select="id" />
              </td>
              <td>
                <xsl:value-of select="name" />
              </td>
              <td>
                <xsl:value-of select="description" />
              </td>
              <td>
                <xsl:value-of select="quantity" />
              </td>
              <td>
                <xsl:value-of select="price" />
              </td>
              <td>
                <script>
                x = parseFloat(<xsl:value-of select="price" />) *
                  parseInt(<xsl:value-of select="quantity" />);
                document.write(x);
                </script>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </div>
    </body>

    </html>
  </xsl:template>
</xsl:stylesheet>