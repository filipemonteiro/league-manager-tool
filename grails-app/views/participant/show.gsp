
<%@ page import="leaguemanager.Participant" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'participant.label', default: 'Participant')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-participant" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-participant" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list participant">
			
				<g:if test="${participantInstance?.championship}">
				<li class="fieldcontain">
					<span id="championship-label" class="property-label"><g:message code="participant.championship.label" default="Championship" /></span>
					
						<span class="property-value" aria-labelledby="championship-label"><g:link controller="championship" action="show" id="${participantInstance?.championship?.id}">${participantInstance?.championship?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${participantInstance?.drawn}">
				<li class="fieldcontain">
					<span id="drawn-label" class="property-label"><g:message code="participant.drawn.label" default="Drawn" /></span>
					
						<span class="property-value" aria-labelledby="drawn-label"><g:fieldValue bean="${participantInstance}" field="drawn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${participantInstance?.goalDifference}">
				<li class="fieldcontain">
					<span id="goalDifference-label" class="property-label"><g:message code="participant.goalDifference.label" default="Goal Difference" /></span>
					
						<span class="property-value" aria-labelledby="goalDifference-label"><g:fieldValue bean="${participantInstance}" field="goalDifference"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${participantInstance?.lost}">
				<li class="fieldcontain">
					<span id="lost-label" class="property-label"><g:message code="participant.lost.label" default="Lost" /></span>
					
						<span class="property-value" aria-labelledby="lost-label"><g:fieldValue bean="${participantInstance}" field="lost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${participantInstance?.player}">
				<li class="fieldcontain">
					<span id="player-label" class="property-label"><g:message code="participant.player.label" default="Player" /></span>
					
						<span class="property-value" aria-labelledby="player-label"><g:link controller="player" action="show" id="${participantInstance?.player?.id}">${participantInstance?.player?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${participantInstance?.points}">
				<li class="fieldcontain">
					<span id="points-label" class="property-label"><g:message code="participant.points.label" default="Points" /></span>
					
						<span class="property-value" aria-labelledby="points-label"><g:fieldValue bean="${participantInstance}" field="points"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${participantInstance?.team}">
				<li class="fieldcontain">
					<span id="team-label" class="property-label"><g:message code="participant.team.label" default="Team" /></span>
					
						<span class="property-value" aria-labelledby="team-label"><g:link controller="team" action="show" id="${participantInstance?.team?.id}">${participantInstance?.team?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${participantInstance?.won}">
				<li class="fieldcontain">
					<span id="won-label" class="property-label"><g:message code="participant.won.label" default="Won" /></span>
					
						<span class="property-value" aria-labelledby="won-label"><g:fieldValue bean="${participantInstance}" field="won"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${participantInstance?.id}" />
					<g:link class="edit" action="edit" id="${participantInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
