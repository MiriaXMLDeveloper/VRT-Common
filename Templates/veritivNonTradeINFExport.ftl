<#list documentsList as document>
	<#list document.documentLines as tempLine>
		<#if tempLine.lineNumber==1>
			<#if tempLine.account?exists>
				<#assign firstLineAccountCode1=tempLine.account.code1 firstLineAccountCode2=tempLine.account.code2>
			</#if>
		</#if>
	</#list>
	<#list document.documentLines as docline>
<#if document.seqId?exists>${document.seqId?c}</#if>|<#if document.vendorId?exists>${document.vendorId}<#else>${""}</#if>|<#if document.number?exists>${document.number}<#else>${""}</#if>|<#if document.date?exists>${document.date?string["MMddyyyy"]}<#else>${""}</#if>|<#if document.grossAmount?exists>${document.grossAmount?c}<#else>${""}</#if>|<#if document.taxAmount1?exists>${document.taxAmount1?c}<#else>${""}</#if>|<#if document.freightAmount2?exists>${document.freightAmount2?c}<#else>${""}</#if>|<#if document.dueDate?exists>${document.dueDate?string["MMddyyyy"]}<#else>${""}</#if>|<#if document.discountAmount?exists>${document.discountAmount?c}<#else>${""}</#if>|<#if document.discountDueDate?exists>${document.discountDueDate?string["MMddyyyy"]}<#else>${""}</#if>|<#if document.poId?exists>${document.poId}<#else>${""}</#if>|<#if document.buyerName?exists>${document.buyerName}<#else>${""}</#if>|<#if document.voucherComments?exists>${document.voucherComments}<#else>${""}</#if>|<#if document.checkStubMessage?exists>${document.checkStubMessage}<#else>${""}</#if>|<#if document.tbdString4?exists>${document.tbdString4}<#else>${""}</#if>|<#if firstLineAccountCode1?exists>${firstLineAccountCode1}<#else>${""}</#if><#if firstLineAccountCode2?exists>${firstLineAccountCode2}<#else>${""}</#if>|<#if docline.accountCode?exists>${docline.accountCode}<#else>${""}</#if>|<#if docline.lineTotal?exists>${docline.lineTotal?c}<#else>${""}</#if>
	</#list>
</#list>