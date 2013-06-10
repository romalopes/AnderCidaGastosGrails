<%@ page import="br.com.romalopes.andercidagastos.UserGroup" %>



<div class="fieldcontain ${hasErrors(bean: userGroupInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="userGroup.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="30" required="" value="${userGroupInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userGroupInstance, field: 'user', 'error')} ">
	<label for="user">
		<g:message code="userGroup.user.label" default="User" />
		
	</label>
	<g:select name="user" from="${br.com.romalopes.andercidagastos.User.list()}" multiple="multiple" optionKey="id" size="5" value="${userGroupInstance?.user*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userGroupInstance, field: 'userOwner', 'error')} required">
	<label for="userOwner">
		<g:message code="userGroup.userOwner.label" default="User Owner" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="userOwner" name="userOwner.id" from="${br.com.romalopes.andercidagastos.User.list()}" optionKey="id" required="" value="${userGroupInstance?.userOwner?.id}" class="many-to-one"/>
</div>

