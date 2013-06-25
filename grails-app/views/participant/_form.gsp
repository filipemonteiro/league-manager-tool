<%@ page import="leaguemanager.Participant" %>



<div class="fieldcontain ${hasErrors(bean: participantInstance, field: 'championship', 'error')} required">
	<label for="championship">
		<g:message code="participant.championship.label" default="Championship" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="championship" name="championship.id" from="${leaguemanager.Championship.list()}" optionKey="id" required="" value="${participantInstance?.championship?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: participantInstance, field: 'drawn', 'error')} required">
	<label for="drawn">
		<g:message code="participant.drawn.label" default="Drawn" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="drawn" type="number" value="${participantInstance.drawn}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: participantInstance, field: 'goalDifference', 'error')} required">
	<label for="goalDifference">
		<g:message code="participant.goalDifference.label" default="Goal Difference" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="goalDifference" type="number" value="${participantInstance.goalDifference}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: participantInstance, field: 'lost', 'error')} required">
	<label for="lost">
		<g:message code="participant.lost.label" default="Lost" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="lost" type="number" value="${participantInstance.lost}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: participantInstance, field: 'player', 'error')} required">
	<label for="player">
		<g:message code="participant.player.label" default="Player" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="player" name="player.id" from="${leaguemanager.Player.list()}" optionKey="id" required="" value="${participantInstance?.player?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: participantInstance, field: 'points', 'error')} required">
	<label for="points">
		<g:message code="participant.points.label" default="Points" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="points" type="number" value="${participantInstance.points}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: participantInstance, field: 'team', 'error')} required">
	<label for="team">
		<g:message code="participant.team.label" default="Team" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="team" name="team.id" from="${leaguemanager.Team.list()}" optionKey="id" required="" value="${participantInstance?.team?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: participantInstance, field: 'won', 'error')} required">
	<label for="won">
		<g:message code="participant.won.label" default="Won" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="won" type="number" value="${participantInstance.won}" required=""/>
</div>

