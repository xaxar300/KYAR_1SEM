<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" />

  <xsl:template match="/">
    <html>
    <head>
      <title>Shop</title>
      <style>
        .td {
          margin: 2px; 
          padding: 5px;
          text-align: center;
          font-size: 20px;
          font-family: Times New Roman;
        }
      </style>
    </head>
    <body>
      <h2>Товары</h2>
      <table border="1">
        <tr>
          <th>Товар</th>
          <th>Категория</th>
          <th>Цена</th>
        </tr>
        <xsl:for-each select="store/product">
          <!-- Устанавливаем сортировку по цене в порядке убывания -->
          <xsl:sort select="price" data-type="number" order="ascending"/>
          <tr>
            <td class="td"><xsl:value-of select="name"/></td>
            <td class="td"><xsl:value-of select="category"/></td>
            <td class="td"><xsl:value-of select="price"/> BYN</td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
