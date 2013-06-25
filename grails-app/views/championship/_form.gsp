<%@ page import="leaguemanager.Championship" %>



<div class="fieldcontain ${hasErrors(bean: championshipInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="championship.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${championshipInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: championshipInstance, field: 'startDate', 'error')} ">
	<label for="startDate">
		<g:message code="championship.startDate.label" default="Start Date" />
		
	</label>
	<g:datePicker name="startDate" precision="day"  value="${championshipInstance?.startDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: championshipInstance, field: 'dueDate', 'error')} ">
	<label for="dueDate">
		<g:message code="championship.dueDate.label" default="Due Date" />
		
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${championshipInstance?.dueDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: championshipInstance, field: 'participants', 'error')} ">
	<label for="participants">
		<g:message code="championship.participants.label" default="Participants" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${championshipInstance?.participants?}" var="p">
    <li><g:link controller="participant" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="participant" action="create" params="['championship.id': championshipInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'participant.label', default: 'Participant')])}</g:link>
</li>
</ul>

</div>

