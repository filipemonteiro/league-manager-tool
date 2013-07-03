
<%@ page import="leaguemanager.Participant" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<g:set var="entityName" value="${message(code: 'championship.label', default: 'Championship')}" />
		<title>League Table</title>
		<r:require modules="bootstrap"/>
	</head>
	
	<body>
		<g:render template="/common/header" />
		
		<div class="container">
			<div class="row">
			
			
				<legend><g:message code="default.table.label" /></legend>
			
				<g:if test="${flash.message}">
					<div class="alert">
						<button type="button" class="close" data-dismiss="alert">&times;</button>
						${flash.message}
					</div>
				</g:if>
				
				<table class="table table-hover table-condensed table-striped">
					<thead>
						<tr>
							
							<th>Pos</th>
							
							<th>Time</th>
							
							<th>Player</th>
							
							<th>P</th>
							
							<th>J</th>
							
							<th>V</th>
							
							<th>E</th>
							
							<th>D</th>
							
							<th>SD</th>
							
						</tr>
					</thead>
					<tbody>
						<g:each in="${participantList}" status="i" var="participantInstance">
							<tr>
							
								<td>${i+1}</td>
							
								<td>
									<g:img dir="images/team_uploads" file="${participantInstance.team.imagePath}"/>
									<g:link controller="Team" action="show" id="${participantInstance.id}">${fieldValue(bean: participantInstance, field: "team.name")}</g:link>
								</td>
								
								<td>
									<g:link controller="Participant" action="show" id="${participantInstance.id}">${fieldValue(bean: participantInstance, field: "player.name")}</g:link>
								</td>
								
								<td>${participantInstance.points}</td>
								
								<td>${participantInstance.won + participantInstance.drawn + participantInstance.lost}</td>
								
								<td>${participantInstance.won}</td>
								
								<td>${participantInstance.drawn}</td>
								
								<td>${participantInstance.lost}</td>
								
								<td>${participantInstance.goalDifference}</td>
							
							</tr>
						</g:each>
					</tbody>
				</table>
				
				
				<div class="form-actions">	
					<g:link class="btn btn-small btn-primary" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link>
					<g:link class="btn btn-small btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
					
					<g:if test="${!championshipInstance.lock}">
						<g:link class="btn btn-small btn-primary" action="startChampionship" id="${championshipInstance?.id}"><g:message code="default.start.championship.label" args="[entityName]" /></g:link>
					</g:if>
					<g:else>
						<g:link class="btn btn-small btn-primary" action="editResults" id="${championshipInstance?.id}"><g:message code="default.edit.results.label" /></g:link>
					</g:else>
				</div>
				
			</div>
		</div>
		
		<g:render template="/common/footer" />
	</body>
</html>
