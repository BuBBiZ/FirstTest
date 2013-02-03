
<%@ page import="firsttest.Profile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profile.label', default: 'Profile')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-profile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-profile" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="begin" title="${message(code: 'profile.begin.label', default: 'Begin')}" />
					
						<g:sortableColumn property="end" title="${message(code: 'profile.end.label', default: 'End')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'profile.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="number" title="${message(code: 'profile.number.label', default: 'Number')}" />
					
						<g:sortableColumn property="site" title="${message(code: 'profile.site.label', default: 'Site')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${profileInstanceList}" status="i" var="profileInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${profileInstance.id}">${fieldValue(bean: profileInstance, field: "begin")}</g:link></td>
					
						<td><g:formatDate date="${profileInstance.end}" /></td>
					
						<td>${fieldValue(bean: profileInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: profileInstance, field: "number")}</td>
					
						<td>${fieldValue(bean: profileInstance, field: "site")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${profileInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
