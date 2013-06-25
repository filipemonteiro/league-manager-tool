<%@ page import="leaguemanager.Team" %>



<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="team.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${teamInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'imagePath', 'error')} ">
	<label for="imagePath">
		<g:message code="team.imagePath.label" default="Image Path" />
		
	</label>
	<g:textField name="imagePath" value="${teamInstance?.imagePath}"/>
</div>

