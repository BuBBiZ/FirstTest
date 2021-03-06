
<%@ page import="firsttest.Profile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profile.label', default: 'Profile')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-profile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-profile" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list profile">
			
				<g:if test="${profileInstance?.begin}">
				<li class="fieldcontain">
					<span id="begin-label" class="property-label"><g:message code="profile.begin.label" default="Begin" /></span>
					
						<span class="property-value" aria-labelledby="begin-label"><g:formatDate date="${profileInstance?.begin}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.end}">
				<li class="fieldcontain">
					<span id="end-label" class="property-label"><g:message code="profile.end.label" default="End" /></span>
					
						<span class="property-value" aria-labelledby="end-label"><g:formatDate date="${profileInstance?.end}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="profile.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${profileInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.number}">
				<li class="fieldcontain">
					<span id="number-label" class="property-label"><g:message code="profile.number.label" default="Number" /></span>
					
						<span class="property-value" aria-labelledby="number-label"><g:fieldValue bean="${profileInstance}" field="number"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.site}">
				<li class="fieldcontain">
					<span id="site-label" class="property-label"><g:message code="profile.site.label" default="Site" /></span>
					
						<span class="property-value" aria-labelledby="site-label"><g:fieldValue bean="${profileInstance}" field="site"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.test}">
				<li class="fieldcontain">
					<span id="test-label" class="property-label"><g:message code="profile.test.label" default="Test" /></span>
					
						<span class="property-value" aria-labelledby="test-label"><g:fieldValue bean="${profileInstance}" field="test"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${profileInstance?.id}" />
					<g:link class="edit" action="edit" id="${profileInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
