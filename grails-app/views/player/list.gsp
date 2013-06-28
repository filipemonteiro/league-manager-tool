
<%@ page import="leaguemanager.Player" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<g:set var="entityName" value="${message(code: 'player.label', default: 'Player')}" />
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
						
							<g:sortableColumn property="name" title="${message(code: 'player.name.label', default: 'Name')}" />
						
							<g:sortableColumn property="email" title="${message(code: 'player.email.label', default: 'Email')}" />
						
						</tr>
					</thead>
					<tbody>
					<g:each in="${playerInstanceList}" status="i" var="playerInstance">
						<tr>
						
							<td><g:link action="show" id="${playerInstance.id}">${fieldValue(bean: playerInstance, field: "name")}</g:link></td>
						
							<td>${fieldValue(bean: playerInstance, field: "email")}</td>
						
						</tr>
					</g:each>
					</tbody>
				</table>
					
				<div class="pagination">
					<g:paginate total="${playerInstanceTotal}" />
				</div>
			
				<g:link class="btn btn-small btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
				
			</div>
		</div>
		
		<g:render template="/common/footer" />
		
	</body>
</html>
