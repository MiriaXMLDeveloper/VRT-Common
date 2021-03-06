<#setting time_zone="${user.timeZone}">
<html>
  <body>
    <table width="100%" bgcolor="#FFFFFF">
    <tr>
      <td colspan="3"><b><i><font size="4" color="#000099" face="Verdana"><span style='font-size:13.5pt;font-family:Verdana;color:#000099;font-weight:bold;font-style:italic'>
Active</span></font></i></b> <b><i><font size="4" color="#4A6D00" face="Verdana"><span style='font-size:13.5pt;font-family:Verdana;color:#4A6D00;font-weight:bold;font-style:italic'>
Pay</span></font></i></b> <b><i><font size="4" color="#000099" face="Verdana"><span style='font-size:13.5pt; font-family:Verdana;color:#000099;font-weight:bold;font-style:italic'>
&trade;</span></font></i></b>
      </td>
    </tr>
  <tr>
    <td colspan="3"><font size="2" face="Verdana"><br>
    <b>New Task Notification</b><br>
    <br>
    Dear Support:<br>
    <br>
A new task has failed to move out of the conductor queue on its own. Please review and correct the issue.</font>
<font size="2" face="Verdana"><br>
Please log in to Active Pay by clicking <a href="https://veritiv-test.miria-active.com">here</a> and process the document in your inbox.</font><br>
					<table>
						<tr>
							<td><font size="2" face="Verdana">&nbsp;</font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Type:</b></font></td>
							<td><font size="2" face="Verdana"><#if document.type?exists>${document.type}<#else>${""}</#if></font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Prepared By:</b></font></td>
							<td><font size="2" face="Verdana"><#if document.originatorId?exists>${document.originatorId}<#else>${""}</#if></font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Posting Period:</b></font></td>
							<td><font size="2" face="Verdana"><#if document.uploadRef?exists>${document.uploadRef}<#else>${""}</#if></font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Request Date:</b></font></td>
							<td><font size="2" face="Verdana"><#if document.date?exists>${document.date}<#else>${""}</#if></font></td>
						</tr>
						<tr>
							<td><b><font size="2" face="Verdana">Reference Number:</b></font></td>
							<td><font size="2" face="Verdana"><#if document.number?exists>${document.seqId}<#else>${""}</#if></font></td>
						</tr>
						<tr>
							<td><b><font size="2" face="Verdana">Request Amount:</b></font></td>
							<td><font size="2" face="Verdana">${document.grossAmount?string(",##0.00")}</font></td>
						</tr>
						<tr>
							<td><b><font size="2" face="Verdana">Due Date:</b></font></td>
							<td><font size="2" face="Verdana"><#if document.dueDate?exists>${document.dueDate}<#else>${""}</#if></font></td>
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
