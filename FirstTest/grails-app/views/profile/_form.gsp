<%@ page import="firsttest.Profile" %>



<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="profile.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${profileInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'number', 'error')} required">
	<label for="number">
		<g:message code="profile.number.label" default="Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="number" type="number" value="${profileInstance.number}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'site', 'error')} ">
	<label for="site">
		<g:message code="profile.site.label" default="Site" />
		
	</label>
	<g:textField name="site" value="${profileInstance?.site}"/>
</div>

