
<%@ page import="br.com.romalopes.andercidagastos.UserGroup" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userGroup.label', default: 'UserGroup')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-userGroup" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-userGroup" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list userGroup">
			
				<g:if test="${userGroupInstance?.groupName}">
				<li class="fieldcontain">
					<span id="groupName-label" class="property-label"><g:message code="userGroup.groupName.label" default="Group Name" /></span>
					
						<span class="property-value" aria-labelledby="groupName-label"><g:fieldValue bean="${userGroupInstance}" field="groupName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userGroupInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="userGroup.user.label" default="User" /></span>
					
						<g:each in="${userGroupInstance.user}" var="u">
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userGroupInstance?.userOwner}">
				<li class="fieldcontain">
					<span id="userOwner-label" class="property-label"><g:message code="userGroup.userOwner.label" default="User Owner" /></span>
					
						<span class="property-value" aria-labelledby="userOwner-label"><g:link controller="user" action="show" id="${userGroupInstance?.userOwner?.id}">${userGroupInstance?.userOwner?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${userGroupInstance?.id}" />
					<g:link class="edit" action="edit" id="${userGroupInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
