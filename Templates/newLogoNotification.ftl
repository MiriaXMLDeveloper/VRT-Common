<#setting time_zone="${user.timeZone}">
<html>
  <body>
    <table width="100%" bgcolor="#FFFFFF">
    <tr>
      <td colspan="3"><b><i><font size="4" color="#000099" face="Verdana"><span style='font-size:13.5pt;font-family:Verdana;color:#000099;font-weight:bold;font-style:italic'>
Managed</span></font></i></b> <b><i><font size="4" color="#4A6D00" face="Verdana"><span style='font-size:13.5pt;font-family:Verdana;color:#4A6D00;font-weight:bold;font-style:italic'>
Pay</span></font></i></b> <b><i><font size="4" color="#000099" face="Verdana"><span style='font-size:13.5pt; font-family:Verdana;color:#000099;font-weight:bold;font-style:italic'>
&trade;</span></font></i></b>
      </td>
    </tr>
  <tr>
    <td colspan="3"><font size="2" face="Verdana"><br>
    <b>New Task Notification</b><br>
    <br>
    Dear ${user.displayName}:<br>
    <br>
A new Logo has been assigned to you in ActiveOps.</font>
<font size="2" face="Verdana"><br>
Please click <a href="${baseURL}/DisplayInvoiceScreen.jsp?wobNumber=${document.wobNumber}&urlPage=true&ceDocumentId=${document.ceDocumentId?replace("{","%7B")?replace("}","%7D")}">
here</a> to view and process the request.</font><br>
					<table>
						<tr>
							<td><font size="2" face="Verdana">&nbsp;</font></td>
						</tr>
						
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Business Name:</b></font></td>
							<td><font size="2" face="Verdana">${document.scanVendorName}</font></td>
						</tr>
						
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Customer Id:</b></font></td>
							<td><font size="2" face="Verdana">${document.vendorid}</font></td>
						</tr>
						
						<tr>
							<td><b><font size="2" face="Verdana">Logo Id:</b></font></td>
							<td><font size="2" face="Verdana">${document.number}</font></td>
						</tr>
					</table>
		<table>
			<tr>
				<td>	<font size="1" color="#FFFFFF" face="Verdana">DO NOT EDIT/DELETE THE LINES BELOW<br>
						DOCUMENTID:0123456789=${document.seqId?string("############")}<br>
						SENDERSEMAIL:[${user.email}&]</font>
				</td>
			</tr>
		</table>
	</body>
</html>
