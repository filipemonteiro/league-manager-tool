
<%@ page import="leaguemanager.Participant" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<g:set var="entityName" value="${message(code: 'participant.label', default: 'Participant')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<r:require modules="bootstrap"/>
	</head>
	
	<body>
	
		<g:render template="/common/header" model="['title':'Participante']" />
		
		<div class="container">
			<div class="row">
	
				<g:if test="${flash.message}">
					<div class="alert">
						<button type="button" class="close" data-dismiss="alert">&times;</button>
						${flash.message}
					</div>
				</g:if>
				
				<table class="table table-hover">
					<thead>
						<tr>
						
							<th><g:message code="participant.team.label" default="Team" /></th>
							
							<th><g:message code="participant.player.label" default="Player" /></th>
							
							<th><g:message code="participant.championship.label" default="Championship" /></th>
						
						</tr>
					</thead>
					<tbody>
					<g:each in="${participantInstanceList}" status="i" var="participantInstance">
						<tr>
						
							<td>
								<g:if test="${participantInstance.team.imagePath}">
									<g:img dir="images/team_uploads" file="${participantInstance.team.imagePath}"/>
								</g:if>
								${fieldValue(bean: participantInstance, field: "team")}
							</td>
							
							<td>${fieldValue(bean: participantInstance, field: "player")}</td>
						
							<td><g:link action="show" id="${participantInstance.id}">${fieldValue(bean: participantInstance, field: "championship")}</g:link></td>
						
						</tr>
					</g:each>
					</tbody>
				</table>
				
				<div class="pagination">
					<g:paginate total="${participantInstanceTotal}" />
				</div>
				
				<div class="form-actions">
					<g:link class="btn btn-small btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
				</div>
		
			</div>
		</div>
		
		<g:render template="/common/footer" />
		
	</body>
</html>
