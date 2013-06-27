
<%@ page import="leaguemanager.Participant" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<g:set var="entityName" value="${message(code: 'participant.label', default: 'Participant')}" />
		<title>League Table</title>
		<r:require modules="bootstrap"/>
	</head>
	
	<body>
		<g:render template="/common/header" />
		
		<div class="container">
			<div class="row">
			
			
				<legend>Classificação</legend>
			
				<g:if test="${flash.message}">
					<div class="alert">
						<button type="button" class="close" data-dismiss="alert">&times;</button>
						${flash.message}
					</div>
				</g:if>
				
				<table class="table table-hover table-condensed table-striped">
					<thead>
						<tr>
						
							<g:sortableColumn property="position" title="#" />
							
							<g:sortableColumn property="team" title="Time" />
							
							<g:sortableColumn property="points" title="Pontos" />
							
							<g:sortableColumn property="played" title="J" />
							
							<g:sortableColumn property="won" title="V" />
							
							<g:sortableColumn property="drawn" title="E" />
							
							<g:sortableColumn property="lost" title="D" />
							
							<g:sortableColumn property="goalDifference" title="SD" />
						
						</tr>
					</thead>
					<tbody>
						<g:each in="${participantList}" status="i" var="participantInstance">
							<tr>
							
								<td>${i+1}</td>
							
								<td>
									<g:img dir="images/team_uploads" file="${participantInstance.team.imagePath}"/>
									<g:link action="show" id="${participantInstance.id}">${fieldValue(bean: participantInstance, field: "team.name")}</g:link>
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
				
					
				<g:link class="btn btn-small btn-primary" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link>
				<g:link class="btn btn-small btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
				
			</div>
		</div>
		
		<g:render template="/common/footer" />
	</body>
</html>
