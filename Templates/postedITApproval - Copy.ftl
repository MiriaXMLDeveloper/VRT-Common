<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Non Trade1 1Update Exception Report</title>

<style type="text/css">

.activeTitleClass{
	font: Verdana;
	font-weight: bold;
	font-style: italic;
	color: #0369A2;
	font-size: 28px;
}
.payTitleClass{
	font: Verdana;
	font-style: italic;
	color: #FA7832; 
	font-size: 28px;
}

.tmTitleClass{
	font: Verdana;
	color: #FA7832; 
	font-size: 18px;
	vertical-align: super;
}

.reportTitle{
	font: Verdana;
	text-decoration: underline;
	color: #000000;
	font-size: 24px;
}

.dataTitle{
	font: Verdana;
	color: #000000;
	font-size: 20x;
}

 .reportHeader{
     background-color: lightgray;
     color: black;
     font-family:verdana;
     font-size:100%;
     
 }
 .banner{
     background-color: white;
     color: blue;
     font-family:verdana;
     font-size:100%;
     font-style:italic;
     
 }
 .dataTable{
 	border: 0px solid black;
 }
 .dataTableHeader{
     background-color: lightgray;
     color: black;
     font-family:verdana;
     font-size:100%;
 }
 th{
  align:left;
 }
</style>
</head>
<body>
<Table width="100%">
	<TR class="banner">
		<TR class="banner"><td align=left>
		<span class="activeTitleClass">Active</span>
		<span class="payTitleClass">Pay</span>
		<span class="tmTitleClass">TM</span>
	</td>
	<!--<td align="right"><img src="cid:image"></td></tr>-->
	
	<TR><td align="center" class="reportTitle" colspan="2">The attached invoice is ready for payment.</td><td align="right" colspan="2">Date: ${date?date}</td></TR>
	
	<!--TR><td align="left" class="dataTitle" colspan="2">Dear ActivePay Admin,</td></TR-->
	<TR><td align="left" class="dataTitle" colspan="2">The coding and approval information is</td></TR>
		

</Table>
<table width="100%" bgcolor="#FFFFFF">
				
			
				<tr><td><font size="2" face="Verdana"><b>Vendor Name : </b></font></td><td><font size="2" face="Verdana"><#if document.vendor.name?exists>${document.vendor.name}<#else>${""}</#if></font></td></tr>
				<tr><td><font size="2" face="Verdana"><b>Invoice Date : </b></font></td><td><font size="2" face="Verdana"><#if document.date?exists>${document.date?string["MMddyy"]}<#else>${""}</#if></font></td></tr>
				<tr><td><font size="2" face="Verdana"><b>Invoice Number : </b></font></td><td><font size="2" face="Verdana"><#if document.number?exists>${document.number}<#else>${""}</#if></font></td></tr>
				<tr><td><font size="2" face="Verdana"><b>Cost Center : </b></font></td><td><font size="2" face="Verdana"><#if document.wobNumber?exists>${document.wobNumber}<#else>${""}</#if></font></td></tr>
				<tr><td><font size="2" face="Verdana"><b>Sub-Type : </b></font></td><td><font size="2" face="Verdana"><#if document.subType?exists>${document.subType}<#else>${""}</#if></font></td></tr>
				<tr><td><font size="2" face="Verdana"><b>Purchase Order : </b></font></td><td><font size="2" face="Verdana"><#if document.poId?exists>${document.poId}<#else>${""}</#if></font></td></tr>
				<tr><td><font size="2" face="Verdana"><b>Gross Amount : </b></font></td><font size="2" face="Verdana"><#if document.grossAmount?exists>${document.grossAmount?c}<#else>${""}</#if></font></td></tr>
				<tr><td><font size="2" face="Verdana"><b>Due Date : </b></font></td><td><font size="2" face="Verdana"><#if document.dueDate?exists>${document.dueDate?string["MMddyy"]}<#else>${""}</#if></font></td></tr>
				<!--tr><td><font size="2" face="Verdana"><b>Accounting Email : </b></font></td><td><font size="2" face="Verdana"><#if document.ceDocumentId?exists>${document.ceDocumentId}<#else>${""}</#if></font></td></tr-->
				<tr><td><font size="2" face="Verdana"><b>Comments : </b></font></td><td><font size="2" face="Verdana"><#if document.voucherComments?exists>${document.voucherComments}<#else>${""}</#if></font></td></tr>
				<TR><td><font size="2" face="Verdana"><b><u>GL Distributions:</u></b></font></td></TR>
				<#list document.documentLines as docline>
				<tr><td><font size="2" face="Verdana"><b>GL Account # : </b></font></td><td><font size="2" face="Verdana"><#if docline.accountCode?exists>${docline.accountCode}<#else>${""}</#if></font></td></tr>
				<tr><td><font size="2" face="Verdana"><b>Amount : </b></font></td><td><font size="2" face="Verdana"><#if docline.lineTotal?exists>${docline.lineTotal?c}<#else>${""}</#if></font></td></tr>
				<tr><td><font size="2" face="Verdana"><b>Explanation : </b></font></td><td><font size="2" face="Verdana"><#if docline.itemDescription?exists>${docline.itemDescription}<#else>${""}</#if></font></td></tr>
				</#list>
				<br>
				<TR><td><font size="2" face="Verdana"><b><u>This invoice was approved by the following people:</u></b></font></td></TR>
				<tr><td><font size="2" face="Verdana"><b>User</b></font></td><td><font size="2" face="Verdana"><b>Approval Date</b></font></td></tr>
				<#list document.documentAuditLog as auditLog>
				<!--tr><td><font size="2" face="Verdana"><b>Task : </b></font></td><td><font size="2" face="Verdana"><#if auditLog.queueName?exists>${auditLog.queueName}<#else>${""}</#if></font></td></tr>
				<tr><td><font size="2" face="Verdana"><b>Comments : </b></font></td><td><font size="2" face="Verdana"><#if auditLog.comment?exists>${auditLog.comment}<#else>${""}</#if></font></td></tr-->
				<tr>
				<td><font size="2" face="Verdana"><#if auditLog.user?exists>${auditLog.user}<#else>${""}</#if></font></td>
				<td><font size="2" face="Verdana"><#if auditLog.completeDate?exists>${auditLog.completeDate?string["MMddyy"]}<#else>${""}</#if></font></td>
				</tr>
				
				</#list>
			
			
		</table>
</body>
</html>