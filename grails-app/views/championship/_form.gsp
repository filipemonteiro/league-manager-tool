<%@ page import="leaguemanager.Championship" %>



<div class="fieldcontain ${hasErrors(bean: championshipInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="championship.name.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${championshipInstance?.name}"/>
</div>



<div class="fieldcontain ${hasErrors(bean: championshipInstance, field: 'startDate', 'error')} ">
	<label for="startDate">
		<g:message code="championship.startDate.label" default="Data de início" />
		
	</label>
	<g:datePicker name="startDate" precision="day"  value="${championshipInstance?.startDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: championshipInstance, field: 'dueDate', 'error')} ">
	<label for="dueDate">
		<g:message code="championship.dueDate.label" default="Data de término" />
		
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${championshipInstance?.dueDate}" default="none" noSelection="['': '']" />
</div>

