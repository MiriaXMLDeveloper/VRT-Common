<#setting time_zone="${user.timeZone}">
		<table width="100%" bgcolor="#FFFFFF">
			<tr>
				<td colspan="3">
					<img src="${baseURL}/images/activeOps.jpg" />
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<font size="2" face="Verdana"><br>
					<P>Dear ${user.firstName} ${user.lastName},</P>
						<b>You have been invited to join the Vendor Portal.</b><br>
						<P>
						The vendor portal allows you to check on the status of invoices for your company.  Please
						click the following link to sign-up.
						</P>

						<P>
                        <a href="${url}?code=${code}&amp;guid=${guid}">Sign up for the Vendor Portal</a>
                        </P>
					</font>
					</td>
				</tr>
			</table>