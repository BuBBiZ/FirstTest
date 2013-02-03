<%@ page import="firsttest.Profile" %>



<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'begin', 'error')} required">
	<label for="begin">
		<g:message code="profile.begin.label" default="Begin" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="begin" precision="day"  value="${profileInstance?.begin}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'end', 'error')} required">
	<label for="end">
		<g:message code="profile.end.label" default="End" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="end" precision="day"  value="${profileInstance?.end}"  />
</div>

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

