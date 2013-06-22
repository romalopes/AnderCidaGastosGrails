<%@ page import="br.com.romalopes.andercidagastos.Operation" %>



<div class="fieldcontain ${hasErrors(bean: operationInstance, field: 'value', 'error')} required">
	<label for="value">
		<g:message code="operation.value.label" default="Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="value" value="${fieldValue(bean: operationInstance, field: 'value')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: operationInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="operation.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="80" required="" value="${operationInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: operationInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="operation.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${operationInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: operationInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="operation.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${br.com.romalopes.andercidagastos.SpecificCategory.list()}" optionKey="id" required="" value="${operationInstance?.category?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: operationInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="operation.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${br.com.romalopes.andercidagastos.User.list()}" optionKey="id" required="" value="${operationInstance?.user?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: operationInstance, field: 'account', 'error')} required">
	<label for="account">
		<g:message code="operation.account.label" default="Account" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="account" name="account.id" from="${br.com.romalopes.andercidagastos.Account.list()}" optionKey="id" required="" value="${operationInstance?.account?.id}" class="many-to-one"/>
</div>

