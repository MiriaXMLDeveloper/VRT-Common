<#setting time_zone="${user.timeZone}">
<html>
<head>
	<center><b>NON-STOCK REQUISITION</b></center>
	<br>
	<div align="right"><b>NO.${document.number}</b></div>
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
	<td align="left"><font size="2 face="Verdana">${document.date}</font>
	</td>
	<td align="left"><font size="2">${document.requesterName}</font>
	</td>
	<td align="left"><font size="2" face="Verdana">${document.tbdString1}</font>
	</td>
	<td align="left"><font size="2" face="Verdana">${document.specialHandlingCode}</font>
	</td>
</tr>
<tr>
	<td><font size="2" face="Verdana"><b>REQUESTING OFFICE</b></font>
	</td>
	<td><font size="2" face="Verdana"><b>CHARGE TO COST CENTER NO.</b></font>
	</td>
	<td align="left"><font size="2" face="Verdana"><b>DATE NEEDED</b></font>
	</td>

</tr>
<tr>
	<td><font size="2" face="Verdana">${document.tbdString2}</font>
	</td>
	<td><font size="2" face="Verdana">${document.companyCode}</font>
	</td>
	<td align="left"><font size="2" face="Verdana">${document.dueDate}</font>
	</td>
</tr>
</table>

<br>
<br>
<table width="100%" bgcolor="#FFFFFF" border="1">
<tr>
	<td bgcolor="#A9E2F3"><font size="2" face="Verdana"><b>Quantity</b></font>
	</td>
	<td bgcolor="#A9E2F3"><font size="2" face="Verdana"><b>UNIT</b></font>
	</td>
	<td align="left"bgcolor="#A9E2F3"><font size="2" face="Verdana" bgcolor="#A9E2F3"><b>Description</b></font>
	</td>
	<td align="left" bgcolor="#A9E2F3"><font size="2" face="Verdana"><b>UNIT PRICE</b></font>
	</td>
	<td align="left" bgcolor="#A9E2F3"><font size="2" face="Verdana"><b>EXTENDED COST</b></font>
	</td>
</tr>
			
<#list doclines as line>
<tr>
	<td><font size="2" face="Verdana">${line.quantity}</font>
	</td>
	<td><font size="2" face="Verdana">${line.partNumber}</font>
	</td>
	<td align="left"><font size="2" face="Verdana">${line.itemDescription}</font>
	</td>
	<td align="left"><font size="2" face="Verdana">${line.unitPrice}</font>
	</td>
	<td align="left"><font size="2" face="Verdana">${line.lineTotal}</font>
	</td>
</tr>
</#list> 
</table> 


<br><br>

<table width="100%">
<tr>
<td>
<table width="100%" bgcolor="#FFFFFF" border="1" >
<tr>
<td colSpan="4" align="center" bgcolor="#3300FF"><font color="white">PURCHASING OFFICE USE ONLY</font>
</td>
</tr>
<tr>
<td align="left"><font size="2" face="Verdana">Estimated Total Cost</td>
<td align="left"><font size="2" face="Verdana">EST. Delivery Date</td>
<td align="left"><font size="2" face="Verdana">Vendor</td>
<td align="left"><font size="2" face="Verdana">Date</td>
</tr>
<tr>
<td><font size="2" face="Verdana">${document.grossAmount}</font>
</td>
<td><font size="2" face="Verdana">${document.tbdDate1}</font>
</td>
<td><font size="2" face="Verdana">${document.vendor.name}</font>
</td>
<td><font size="2" face="Verdana">${document.tbdDate2}</font>
</td>
</tr>
<tr>
<td align="left" colSpan="2"><font size="2" face="Verdana">P.O Issued To</td>
<td align="left" colSpan="2"><font size="2" face="Verdana">P.O Number Issued</td>
</tr>
<tr>
<td colSpan="2"><font size="2" face="Verdana">${document.originatorId}</font>
</td>
<td colSpan="2"><font size="2" face="Verdana">${document.poId}</font>
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
<td align="left"><font size="2" face="Verdana">OFFICE MANAGER</td>
<td align="left"><font size="2" face="Verdana">DATE</td>
</tr>
<tr>
<td><font size="2" face="Verdana">${document.buyerId}</font>
</td>
<td><font size="2" face="Verdana">${document.receiveDate}</font>
</td>
</tr>
<tr>
<td align="left"><font size="2" face="Verdana">Treasurer/CFO</td>
<td align="left"><font size="2" face="Verdana">DATE</td>
</tr>
<tr>
<td><font size="2" face="Verdana">${document.scanSource}</font>
</td>
<td><font size="2" face="Verdana">${document.baselineDate}</font>
</td>
</tr>
</table>
</td>
</tr>
</table>
		
</body>
</html>