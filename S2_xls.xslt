<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/TR/WD-xsl">
<xsl:template match="/">
<HTML>
   <HEAD>
      <TITLE>全部订单</TITLE>
   </HEAD>
   <BODY>
      <h1>订单内容</h1>
      <xsl:for-each select="全部订单/订单">
         <TABLE border="1">
            <TR>
               <TH>客户名称:</TH>
               <TD><xsl:value-of select="客户/名称"/></TD>
               <TH>电话</TH>
               <TD><xsl:value-of select="客户/电话"/></TD>
               <TH>传真</TH>
               <TD><xsl:value-of select="客户/传真"/></TD>
            </TR>
            <TR>
               <TH>地址</TH>
               <TD colspan="5"><xsl:value-of select="客户/地址"/></TD>
            </TR>
         </TABLE>
         <TABLE border="1" >
            <TR>
               <TH>产品名称:</TH>
               <TD><xsl:value-of select="产品/名称"/></TD>
               <TH>价格</TH>
               <TD><xsl:value-of select="产品/价格"/></TD>
               <TH>规格</TH>
               <TD><xsl:value-of select="产品/规格"/></TD>
            </TR>
            <TR>
               <TH>购买数量</TH>
               <TD colspan="5"><xsl:value-of select="产品/购买数量"/></TD>
            </TR>
         </TABLE>
      </xsl:for-each>
   </BODY>
</HTML>
</xsl:template>
</xsl:stylesheet>
