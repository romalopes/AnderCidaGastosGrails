
<%@ page import="br.com.romalopes.andercidagastos.SpecificCategory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'specificCategory.label', default: 'SpecificCategory')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-specificCategory" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-specificCategory" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'specificCategory.name.label', default: 'Name')}" />
					
						<th><g:message code="specificCategory.categoryFather.label" default="Category Father" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${specificCategoryInstanceList}" status="i" var="specificCategoryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${specificCategoryInstance.id}">${fieldValue(bean: specificCategoryInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: specificCategoryInstance, field: "categoryFather")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${specificCategoryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
