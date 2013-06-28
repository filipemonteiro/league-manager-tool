
<%@ page import="leaguemanager.Championship" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<g:set var="entityName" value="${message(code: 'championship.label', default: 'Championship')}" />
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
						
							<g:sortableColumn property="name" title="${message(code: 'championship.name.label', default: 'Name')}" />
							
							<g:sortableColumn property="startDate" title="${message(code: 'championship.startDate.label', default: 'Start Date')}" />
						
							<g:sortableColumn property="dueDate" title="${message(code: 'championship.dueDate.label', default: 'Due Date')}" />
						
						</tr>
					</thead>
					<tbody>
						<g:each in="${championshipInstanceList}" status="i" var="championshipInstance">
							<tr>
							
								<td><g:link action="show" id="${championshipInstance.id}">${fieldValue(bean: championshipInstance, field: "name")}</g:link></td>
							
								<td><g:formatDate date="${championshipInstance.startDate}" /></td>
							
								<td><g:formatDate date="${championshipInstance.dueDate}" /></td>
							
							</tr>
						</g:each>
					</tbody>
				</table>
				
				<div class="pagination">
					<g:paginate total="${championshipInstanceTotal}" />
				</div>
				
				<g:link class="btn btn-small btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
		
			</div>
		</div>
		
		<g:render template="/common/footer" />
		
	</body>
</html>
