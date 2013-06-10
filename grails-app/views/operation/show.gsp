
<%@ page import="br.com.romalopes.andercidagastos.Operation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'operation.label', default: 'Operation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-operation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-operation" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list operation">
			
				<g:if test="${operationInstance?.value}">
				<li class="fieldcontain">
					<span id="value-label" class="property-label"><g:message code="operation.value.label" default="Value" /></span>
					
						<span class="property-value" aria-labelledby="value-label"><g:fieldValue bean="${operationInstance}" field="value"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${operationInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="operation.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${operationInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${operationInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="operation.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:link controller="specificCategory" action="show" id="${operationInstance?.category?.id}">${operationInstance?.category?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${operationInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="operation.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${operationInstance?.user?.id}">${operationInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${operationInstance?.userGroup}">
				<li class="fieldcontain">
					<span id="userGroup-label" class="property-label"><g:message code="operation.userGroup.label" default="User Group" /></span>
					
						<span class="property-value" aria-labelledby="userGroup-label"><g:link controller="userGroup" action="show" id="${operationInstance?.userGroup?.id}">${operationInstance?.userGroup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${operationInstance?.account}">
				<li class="fieldcontain">
					<span id="account-label" class="property-label"><g:message code="operation.account.label" default="Account" /></span>
					
						<span class="property-value" aria-labelledby="account-label"><g:link controller="account" action="show" id="${operationInstance?.account?.id}">${operationInstance?.account?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${operationInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="operation.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${operationInstance?.date}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${operationInstance?.id}" />
					<g:link class="edit" action="edit" id="${operationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
