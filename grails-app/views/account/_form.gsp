<%@ page import="br.com.romalopes.andercidagastos.Account" %>



<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="account.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="30" pattern="${accountInstance.constraints.name.matches}" required="" value="${accountInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'accountNumber', 'error')} ">
	<label for="accountNumber">
		<g:message code="account.accountNumber.label" default="Account Number" />
		
	</label>
	<g:textField name="accountNumber" value="${accountInstance?.accountNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'balance', 'error')} required">
	<label for="balance">
		<g:message code="account.balance.label" default="Balance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="balance" value="${fieldValue(bean: accountInstance, field: 'balance')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'typeAccount', 'error')} required">
	<label for="typeAccount">
		<g:message code="account.typeAccount.label" default="Type Account" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="typeAccount" from="${br.com.romalopes.andercidagastos.ACCOUNT_TYPE?.values()}" keys="${br.com.romalopes.andercidagastos.ACCOUNT_TYPE.values()*.name()}" required="" value="${accountInstance?.typeAccount?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'user', 'error')} ">
	<label for="user">
		<g:message code="account.user.label" default="User" />
		
	</label>
	<g:select name="user" from="${br.com.romalopes.andercidagastos.User.list()}" multiple="multiple" optionKey="id" size="5" value="${accountInstance?.user*.id}" class="many-to-many"/>
</div>

