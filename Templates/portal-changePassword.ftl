		<table width="100%" bgcolor="#FFFFFF">
		    <tr>
				<td colspan="3">
					<img src="${baseURL}/images/activeOps.jpg" />
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<font size="2" face="Verdana"><br>
					<P>Dear ${user.name},</P>
						<b>You have requested to change your password.</b><br>
						<P>
						If you have not requested a password change, please contact the system administrator by
						replying to this email, otherwise please
						click the following link to change your password.
						</P>

						<P>
                        <a href="${url}?code=${code}&amp;guid=${guid}&amp;command=identity">Change your password</a>
                        </P>
					</font>
					</td>
				</tr>
			</table>