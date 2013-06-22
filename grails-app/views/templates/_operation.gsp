
<div class="operation">

	<div>
		<g:form controller="main" action="addOperation">	
			<p class="generalMessage">Operation<br>
			</p>
			<p>Value:<g:field type="number" name="value" min="0" required="true" value="10"/></p>
			<p>Name:<g:field type="text" name="name" required="true" value="Operation"/></p>
			<p>Date:<g:field type="date" name="date" required="true" value="${new Date()}"/></p>
		  	<p>Category:<g:select name='category' noSelection="${['null':'Select One...']}"
					from='${br.com.romalopes.andercidagastos.SpecificCategory.list()}' optionKey="name" optionValue="name">
	    	</g:select></p>
	    	<p><g:actionSubmit value="Submit" value="Submit" action="addOperation"/></p>
		</form>
		</g:form>
	</div>
</div>

<div class="listOperations">
	<div id="list-operation" class="content scaffold-list" role="main">
		<h1><g:message code="default.OperationList.label" default="Operation List"  /></h1>
		<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
		</g:if>
		<table>
			<thead>
				<tr>
				
					<g:sortableColumn property="value" title="${message(code: 'operation.value.label', default: 'Value')}" />
					<g:sortableColumn property="name" title="${message(code: 'operation.name.label', default: 'Name')}" />
					<th><g:message code="operation.category.label" default="Category" /></th>
					<th><g:message code="operation.user.label" default="User" /></th>
					<th><g:message code="operation.date.label" default="Date" /></th>
					<th><g:message code="operation.account.label" default="Account" /></th>
				</tr>
			</thead>
			<tbody>
			<g:each in="${operationInstanceList}" status="i" var="operationInstance">
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					<td><g:link action="show" id="${operationInstance.id}">${fieldValue(bean: operationInstance, field: "value")}</g:link></td>
					<td>${fieldValue(bean: operationInstance, field: "name")}</td>
					<td>${fieldValue(bean: operationInstance, field: "category")}</td>
					<td>${fieldValue(bean: operationInstance, field: "user")}</td>
					<td>${operationInstance.getStringDate()}</td>
					<td>${fieldValue(bean: operationInstance, field: "account")}</td>
				</tr>
			</g:each>
			</tbody>
		</table>
			<g:if test="${operationInstanceTotal}">
				<div class="pagination">
					<g:paginate total="${operationInstanceTotal}" />
				</div>
			</g:if>
	</div>
</div>			
	