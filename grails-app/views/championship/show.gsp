
<%@ page import="leaguemanager.Championship" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<g:set var="entityName" value="${message(code: 'championship.label', default: 'Championship')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		<r:require modules="bootstrap"/>
	</head>
	
	<body>
		<g:render template="/common/header" />
		
		<div class="container">
			<div class="row">
			
				<legend><g:message code="default.show.label" args="[entityName]" /></legend>
			
				<g:if test="${flash.message}">
					<div class="alert">
						<button type="button" class="close" data-dismiss="alert">&times;</button>
						${flash.message}
					</div>
				</g:if>
	
				<g:if test="${championshipInstance?.name}">
					<p>
						<span id="name-label" class="property-label"><g:message code="championship.name.label" default="Name" /></span>
						
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${championshipInstance}" field="name"/></span>
						
					</p>
				</g:if>
			
				<g:if test="${championshipInstance?.participants}">
					<p>
						<span id="participants-label" class="property-label"><g:message code="championship.participants.label" default="Participants" /></span>
						
						<g:each in="${championshipInstance.participants}" var="p">
							<p><g:link controller="participant" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></p>
						</g:each>
						
					</p>
				</g:if>
			
				<g:if test="${championshipInstance?.startDate}">
					<p>
						<span id="startDate-label" class="property-label"><g:message code="championship.startDate.label" default="Start Date" /></span>
						
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${championshipInstance?.startDate}" /></span>
						
					</p>
				</g:if>
			
				<g:if test="${championshipInstance?.dueDate}">
					<p>
						<span id="dueDate-label" class="property-label"><g:message code="championship.dueDate.label" default="Due Date" /></span>
						
						<span class="property-value" aria-labelledby="dueDate-label"><g:formatDate date="${championshipInstance?.dueDate}" /></span>
						
					</p>
				</g:if>
				
				<g:form>
					<fieldset>
						<g:hiddenField name="id" value="${championshipInstance?.id}" />
						<g:link class="btn" action="edit" id="${championshipInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
						<g:link class="btn" action="startChampionship" id="${championshipInstance?.id}" onclick="return confirm('${message(code: 'default.button.start.championship.confirm.message', default: 'Are you sure?')}');">Iniciar Campeonato</g:link>
						<g:actionSubmit class="btn" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</fieldset>
				</g:form>
				
				<div class="form-actions">
					<g:link class="btn btn-small btn-primary" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link>
					<g:link class="btn btn-small btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
				</div>
		
			</div>
		</div>
		
		<g:render template="/common/footer" />
	</body>
</html>
