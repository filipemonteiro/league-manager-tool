
<%@ page import="leaguemanager.Team" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<g:set var="entityName" value="${message(code: 'team.label', default: 'Team')}" />
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
				
				<g:if test="${teamInstance?.name}">
					<p>
						<span id="name-label" class="property-label"><g:message code="team.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${teamInstance}" field="name"/></span>
					</p>
				</g:if>
				
				<g:if test="${teamInstance?.imagePath}">
					<p>
						<span id="imagePath-label" class="property-label"><g:message code="team.imagePath.label" default="Image Path" /></span>
						
						<span class="property-value" aria-labelledby="imagePath-label"><g:fieldValue bean="${teamInstance}" field="imagePath"/></span>
					</p>
				</g:if>
					
				<g:form>
					<fieldset>
						<g:hiddenField name="id" value="${teamInstance?.id}" />
						<g:link class="btn" action="edit" id="${teamInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
