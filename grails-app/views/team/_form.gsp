<%@ page import="leaguemanager.Team" %>



<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="team.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${teamInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'image', 'error')} ">
	<label for="image">
		<g:message code="team.image.label" default="Image" />
		
	</label>
	<input type="file" id="image" name="image" />
</div>

