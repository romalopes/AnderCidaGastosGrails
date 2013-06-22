<g:javascript>
function accountUpdated(data) {
	window.location.reload()
	 $('#list-operation').hide();
     $('#list-operation').show();
}

</g:javascript>
<div class="summary">
	<div class="generalMessage"> Summary Account:</div>
		<table>
			<g:if test="${session?.account != null}">	
			
				<tr>
					<td> Balance: </td>
					<td><div id="balanceValue">${session?.account?.balance}</div></td>
				</tr>
			</g:if>
			<tr>
				<td>
					<div class="generalMessage"> Change Bank:</div>
				</td>
				<td>
					<g:form controller="main" action="changeAccount" value="${session?.account?.name}">
						<g:select name='account' noSelection="${['null':'Select One...']}"
									value="${session?.account?.name}" from='${session.user.getAccounts()}' 
									optionKey="name" optionValue="name">
	    				</g:select>
	    				<g:actionSubmit value="Submit" value="Submit" action="changeAccount"/>
					</g:form>
				</td>
			<tr>
		</table>
<!-- end .summary --> </div>

<div class="summary">
	<div class="generalMessage"> Summary Account:</div>
		<table>
			<g:if test="${session?.account != null}">	
			
				<tr>
					<td> Balance: </td>
					<td><div id="balanceValue">${session?.account?.balance}</div></td>
				</tr>
			</g:if>
			<tr>
				<td>
					<div class="generalMessage"> Change Bank:</div>
				</td>
				<td>
					<g:form controller="main" action="changeAccount" value="${session?.account?.name}">
						<g:select name='account' noSelection="${['null':'Select One...']}"
									value="${session?.account?.name}" from='${session.user.getAccounts()}' 
									optionKey="name" optionValue="name"
									onchange="${remoteFunction(
            						controller:'main', 
            						action:'changeAccount', 
			                        params: '\'account=\' + this.value',
								    options: '[asynchronous: false]',
									onSuccess:'accountUpdated(data)')}">
	    				</g:select>
					</g:form>
				</td>
			<tr>
		</table>
<!-- end .summary --> </div>
