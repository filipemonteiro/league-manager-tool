
<%@ page import="leaguemanager.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<r:require modules="bootstrap"/>
	</head>
	
	<body>
	
		<g:render template="/common/header" />
		
		<div class="container">
			<div class="row">
		
				<legend><g:message code="default.list.label" args="[entityName]" /></legend>
					
				<g:if test="${flash.message}">
					<div class="alert">
						<button type="button" class="close" data-dismiss="alert">&times;</button>
						${flash.message}
					</div>
				</g:if>
		
				<table class="table table-hover">
					<thead>
						<tr>
						
							<g:sortableColumn property="username" title="${message(code: 'user.username.label', default: 'User Name')}" />
						
							<g:sortableColumn property="fullName" title="${message(code: 'user.fullName.label', default: 'Full Name')}" />
						
						</tr>
					</thead>
					<tbody>
						<g:each in="${userInstanceList}" status="i" var="userInstance">
							<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							
								<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "username")}</g:link></td>
							
								<td>${fieldValue(bean: userInstance, field: "fullName")}</td>
							
							</tr>
						</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<g:paginate total="${userInstanceTotal}" />
				</div>
				
				<div class="form-actions">
					<g:link class="btn btn-small btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
				</div>
		
			</div>
		</div>
		
		<g:render template="/common/footer" />
		
	</body>
</html>
