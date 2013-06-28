
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
						
							<th><g:message code="participant.championship.label" default="Championship" /></th>
						
							<g:sortableColumn property="drawn" title="${message(code: 'participant.drawn.label', default: 'Drawn')}" />
						
							<g:sortableColumn property="goalDifference" title="${message(code: 'participant.goalDifference.label', default: 'Goal Difference')}" />
						
							<g:sortableColumn property="lost" title="${message(code: 'participant.lost.label', default: 'Lost')}" />
						
							<th><g:message code="participant.player.label" default="Player" /></th>
						
							<g:sortableColumn property="points" title="${message(code: 'participant.points.label', default: 'Points')}" />
						
						</tr>
					</thead>
					<tbody>
					<g:each in="${participantInstanceList}" status="i" var="participantInstance">
						<tr>
						
							<td><g:link action="show" id="${participantInstance.id}">${fieldValue(bean: participantInstance, field: "championship")}</g:link></td>
						
							<td>${fieldValue(bean: participantInstance, field: "drawn")}</td>
						
							<td>${fieldValue(bean: participantInstance, field: "goalDifference")}</td>
						
							<td>${fieldValue(bean: participantInstance, field: "lost")}</td>
						
							<td>${fieldValue(bean: participantInstance, field: "player")}</td>
						
							<td>${fieldValue(bean: participantInstance, field: "points")}</td>
						
						</tr>
					</g:each>
					</tbody>
				</table>
				
				<div class="pagination">
					<g:paginate total="${participantInstanceTotal}" />
				</div>
				
				<g:link class="btn btn-small btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
		
			</div>
		</div>
		
		<g:render template="/common/footer" />
		
	</body>
</html>
