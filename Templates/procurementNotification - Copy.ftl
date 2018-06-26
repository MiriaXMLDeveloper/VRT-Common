<div id="Page" style="width:700px">
<head>
<center><b>NON-STOCK REQUISITION</b></center>
<br>
<div align="right"><b>NO.${document.poNumber}</b></div>
</head>
<body>
<table width="100%" bgcolor="#FFFFFF" border="1">
<tr>
	<td><font size="2" face="Verdana"><b>REQUEST DATE</b></font>
	</td>
	<td><font size="2" face="Verdana"><b>REQUESTED BY</b></font>
	</td>
	<td align="left"><font size="2" face="Verdana"><b>EXT</b></font>
	</td>
        <td><font size="2" ><b>SHIP TO ADDRESS</b></font>
        </td>	
</tr>
<tr>
	<td><font size="2ce="Verda" face="Verdana">${document.invoiceDate}</font>
	</td>
	<td><font size="2" fana">${document.requestorId}</font>
	</td>
	<td align="center"><font size="2" face="Verdana">${document.tbd_string1)</font>
	</td>
	<td align="right"><font size="2" face="Verdana">${line.specialHandingCode}</font>
	</td>
</tr>
<tr>
	<td><font size="2" face="Verdana"><b>REQUESTING OFFICE</b></font>
	</td>
	<td><font size="2" face="Verdana"><b>CHARGE TO COST CENTER NO.</b></font>
	</td>
	<td align="center"><font size="2" face="Verdana"><b>DATE NEEDED</b></font>
	</td>

</tr>
<tr>
	<td><font size="2" face="Verdana">${document.locationCode}</font>
	</td>
	<td><font size="2" face="Verdana">${document.companyCode}</font>
	</td>
	<td align="center"><font size="2" face="Verdana">${document.dueDate}</font>
	</td>

</tr>

<table width="100%" bgcolor="#FFFFFF" border="1">
<tr>
	<td><font size="2" face="Verdana"><b>Quantity</b></font>
	</td>
	<td><font size="2" face="Verdana"><b>UNIT</b></font>
	</td>
	<td align="center"><font size="2" face="Verdana"><b>Description</b></font>
	</td>
	<td align="right"><font size="2" face="Verdana"><b>UNIT PRICE</b></font>
	</td>
	<td align="right"><font size="2" face="Verdana"><b>EXTENDED COST</b></font>
	</td>
</tr>
			
<#list doclines as line>
<tr>
	<td><font size="2" face="Verdana">${line.quantity}</font>
	</td>
	<td><font size="2" face="Verdana">${line.itemDescription}</font>
	</td>
	<td align="center"><font size="2" face="Verdana">${line.unitPrice}</font>
	</td>
	<td align="right"><font size="2" face="Verdana">${line.unitPrice}</font>
	</td>
	<td align="right"><font size="2" face="Verdana">${line.lineTotal}</font>
	</td>
</tr>
</#list> 
</table> 


<br><br>

<table>
<tr>
<td>
<table width="100%" bgcolor="#FFFFFF" border="1" >
<tr>
<td colSpan="4" align="center" bgcolor="#3300FF"><font color="white">PURCHASING OFFICE USE ONLY</font>
</td>
</tr>
<tr>
<td align="center">Estimated Total Cost</font>
</td>
<td>EST. Delivery Date</td>
<td>Buyer</td>
<td>Date</td>
</tr>
<tr>
<td><font size="2" face="Verdana">${document.buyerId}</font>
</td>
<td><font size="2" face="Verdana">${document.receivedate}</font>
</td>
<td><font size="2" face="Verdana">${document.vendorId}</font>
</td>
<td><font size="2" face="Verdana">${document.tbd_date2}</font>
</td>
</tr>
<td align="center" colSpan="2">P.O Issued To</font>
</td>
<td align="center" colSpan="2">P.O Number Issued</td>
</tr>
<tr>
<td colSpan="2"><font size="2" face="Verdana">${document.buyerId}</font>
</td>
<td colSpan="2"><font size="2" face="Verdana">${document.baselineDate}</font>
</td>
</tr>
</table>
</td>
<td>
<table width="100%" bgcolor="#FFFFFF" border="1" tyle="float: right;">
<tr>
<td align="center" colSpan="2"  bgcolor="#3300FF"><font color="white">APPROVALS</font>
</td>
</tr>
<tr>
<td align="center">OFFICE MANAGER/SUPERVISOR</font>
</td>
<td>DATE</td>
</tr>
<tr>
<td><font size="2" face="Verdana">${document.buyerId}</font>
</td>
<td><font size="2" face="Verdana">${document.receivedate}</font>
</td>
</tr>
<td align="center">Treasurer/CFO</font>
</td>
<td>DATE</td>
</tr>
<tr>
<td><font size="2" face="Verdana">${document.buyerId}</font>
</td>
<td><font size="2" face="Verdana">${document.baselineDate}</font>
</td>
</tr>
</table>
</td>
</tr>
</table>
			




</body>
</div>