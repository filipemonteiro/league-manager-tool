
<%@ page import="leaguemanager.Participant" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'participant.label', default: 'Participant')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-participant" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-participant" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
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
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
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
		</div>
	</body>
</html>
