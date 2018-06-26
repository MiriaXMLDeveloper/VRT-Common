<table width="100%" bgcolor="#FFFFFF">
<center><b>INVOICE</b></center>
<table>
	<tr>
	<td><img src="${baseURL}/images/activeOps.jpg" /></td>
	</tr>

<tr>
	<td><font size="2" face="Verdana">Bass Pro Intellectual Property, LLC</td></font>
	<td width="25%"></td>
	<td><font size="2" face="Verdana">Invoice No   : ${document.seqId?c}<br></td></font>
</tr>
<tr>
	<td><font size="2" face="Verdana">2500 E.Kearney</td></font>
	<td width="25%"></td>
	<td><font size="2" face="Verdana">Invoice Date :${document.date?date}</td></font>
</tr>
<tr>
	<td><font size="2" face="Verdana">Springfield, MO 65898</td></font>
	<td width="25%"></td>
	<td><font size="2" face="Verdana">Customer #: ${document.vendor.code}</td></font>
</tr>
<tr>
	<td><font size="2" face="Verdana">Phone: 417-873-5200</td></font>
	<td width="25%"></td>
	<td><font size="2" face="Verdana">Customer PO:</td></font>
</tr>
<tr>
	<td><font size="2" face="Verdana">Fax: 417-873-4586</td></font>
	<td width="25%"></td>
	<td align="right">Payment Terms: NET30</td></font>
</tr>

</table><br>

<table>
<tr>
	<td><font size="2" face="Verdana">BILL TO:</td></font>
	<td></td>
	<td><font size="2" face="Verdana">SHIP TO:</td></font>
</tr>
<tr>
	<td><font size="2" face="Verdana">${document.vendor.name}</td></font>
	<td width="50%"></td>
	<td><font size="2" face="Verdana">${document.vendor.name2}</td></font>
</tr>
<tr>
	<td><font size="2" face="Verdana">Attn: Kathy Ruppenthal</td></font>
	<td width="50%"></td>
	<td><font size="2" face="Verdana">Attn: Kathy Ruppenthal</td></font>
</tr>
<tr>
	<td><font size="2" face="Verdana">${document.vendor.address1}</td></font>
	<td width="50%"></td>
	<td><font size="2" face="Verdana">${document.vendor.address2}
</tr>
<tr>
	<td><font size="2" face="Verdana">${document.vendor.city} ${document.vendor.state} ${document.vendor.postalcode}</td></font>
	<td width="50%"></td>
	<td><font size="2" face="Verdana">${document.vendor.tbdString1} ${document.vendor.tbdString2} ${document.vendor.tbdString3}</td></font>
</tr>

</table><br><br><br>


<table width="100%" bgcolor="#FFFFFF" border="1">
<tr>
	<td><font size="2" face="Verdana"><b>Quantity</b></font>
	</td>
	<td><font size="2" face="Verdana"><b>Description</b></font>
	</td>
	<td><font size="2" face="Verdana"><b>Unit Price</b></font>
	</td>
	<td><font size="2" face="Verdana"><b>Amount</b></font>
	</td>
</tr>
			
<#list doclines as line>
<tr>
	<td><font size="2" face="Verdana">${line.quantity}</font>
	</td>
	<td><font size="2" face="Verdana">${line.itemDescription}</font>
	</td>
	<td><font size="2" face="Verdana">${line.unitPrice}</font>
	</td>
	<td><font size="2" face="Verdana">${line.lineTotal}</font>
	</td>
</tr>
</#list>  
			
</table></br><br><br><br><br><br><br>
<table>
<tr>
	<td><font size="2" face="Verdana">Question concerting this invoice?</td></font>
	<td width="25%"></td>
	<td align="left">Remit to Bass Pro<br></td></font>
</tr>
<tr>
	<td><font size="2" face="Verdana">Call:</td></font>
	<td width="35%"></td>
	<td></td>
</tr>
<tr>
	<td><font size="2" face="Verdana">Kay Moore</td></font>
	<td width="25%"></td>
	<td align="right">Bass Pro Intellectual Property</td></font>
</tr>
<tr>
	<td><font size="2" face="Verdana">417-873-5575</td></font>
	<td width="25%"></td>
	<td align="right">Attn: Accounts Receivable</td></font>
</tr>
<tr>
	<td></td>
	<td width="25%"></td>
	<td align="right"><font size="2" face="Verdana">2500 East Kearney</td></font>
</tr>
<tr>
	<td></td>
	<td width="25%"></td>
	<td align="right"><font size="2" face="Verdana">Springfield Mo 65898</td></font>
</tr>	
	<td><font size="2" face="Verdana">
	</font></td>

</table><br>

</table>