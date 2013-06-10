<%@ page import="br.com.romalopes.andercidagastos.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userName', 'error')} required">
	<label for="userName">
		<g:message code="user.userName.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userName" maxlength="30" pattern="${userInstance.constraints.userName.matches}" required="" value="${userInstance?.userName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		
	</label>
	<g:field type="password" name="password" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accounts', 'error')} ">
	<label for="accounts">
		<g:message code="user.accounts.label" default="Accounts" />
		
	</label>
	<g:select name="accounts" from="${br.com.romalopes.andercidagastos.Account.list()}" multiple="multiple" optionKey="id" size="5" value="${userInstance?.accounts*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="user.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${userInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="user.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${userInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'operation', 'error')} ">
	<label for="operation">
		<g:message code="user.operation.label" default="Operation" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.operation?}" var="o">
    <li><g:link controller="operation" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="operation" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'operation.label', default: 'Operation')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userGroup', 'error')} ">
	<label for="userGroup">
		<g:message code="user.userGroup.label" default="User Group" />
		
	</label>
	<g:select name="userGroup" from="${br.com.romalopes.andercidagastos.UserGroup.list()}" multiple="multiple" optionKey="id" size="5" value="${userInstance?.userGroup*.id}" class="many-to-many"/>
</div>

