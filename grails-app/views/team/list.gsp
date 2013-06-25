
<%@ page import="leaguemanager.Team" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<g:set var="entityName" value="${message(code: 'team.label', default: 'Team')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<r:require modules="bootstrap"/>
	</head>
	
	<body>
	
		<g:render template="/common/header" />
		
		<div class="container">
			<div class="row">
		
				<legend>Listagem - Time</legend>
				
				<g:if test="${flash.message}">
					<div class="alert">
						<button type="button" class="close" data-dismiss="alert">&times;</button>
						${flash.message}
					</div>
				</g:if>
				
				<table class="table table-hover">
					<thead>
						<tr>
						
							<g:sortableColumn property="name" title="${message(code: 'team.name.label', default: 'Name')}" />
						
						</tr>
					</thead>
					<tbody>
						<g:each in="${teamInstanceList}" status="i" var="teamInstance">
							<tr>
							
								<td>
									<g:img dir="images/team_uploads" file="${teamInstance.imagePath}"/>
									<g:link action="show" id="${teamInstance.id}">${fieldValue(bean: teamInstance, field: "name")}</g:link>
								</td>
							
							</tr>
						</g:each>
					</tbody>
				</table>
				
				<div class="pagination">
					<g:paginate total="${teamInstanceTotal}" />
				</div>
				
				<g:link class="btn btn-small btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
			
			</div>
		</div>
		
		<g:render template="/common/footer" />
		
	</body>
</html>
