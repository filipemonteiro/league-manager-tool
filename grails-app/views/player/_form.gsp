<%@ page import="leaguemanager.Player" %>



<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="player.name.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${playerInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="player.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${playerInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'equipe', 'error')} required">
	<label for="equipe">
		<g:message code="player.equipe.label" default="Equipe" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="equipe" required="" value="${playerInstance?.equipe}"/>
</div>

