<%@ page import="br.com.romalopes.andercidagastos.SpecificCategory" %>



<div class="fieldcontain ${hasErrors(bean: specificCategoryInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="specificCategory.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="30" pattern="${specificCategoryInstance.constraints.name.matches}" required="" value="${specificCategoryInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: specificCategoryInstance, field: 'categoryFather', 'error')} required">
	<label for="categoryFather">
		<g:message code="specificCategory.categoryFather.label" default="Category Father" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="categoryFather" name="categoryFather.id" from="${br.com.romalopes.andercidagastos.SpecificCategory.list()}" optionKey="id" required="" value="${specificCategoryInstance?.categoryFather?.id}" class="many-to-one"/>
</div>

