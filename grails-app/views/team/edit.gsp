<%@ page import="leaguemanager.Team" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<g:set var="entityName" value="${message(code: 'team.label', default: 'Team')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
		<r:require modules="bootstrap"/>
	</head>

	<body>
		<g:render template="/common/header" />
		
		<div class="container">
			<div class="row">
			
				<legend>Editar - Time</legend>
				
				<g:if test="${flash.message}">
					<div class="alert">
						<button type="button" class="close" data-dismiss="alert">&times;</button>
						${flash.message}
					</div>
				</g:if>
				
				<g:hasErrors bean="${teamInstance}">
				<ul class="errors">
					<g:eachError bean="${teamInstance}" var="error">
					<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
					</g:eachError>
				</ul>
				</g:hasErrors>
			
				<g:form method="post" >
					<g:hiddenField name="id" value="${teamInstance?.id}" />
					<g:hiddenField name="version" value="${teamInstance?.version}" />
					<fieldset>
						<g:render template="form"/>
					</fieldset>
					<fieldset>
						<g:actionSubmit class="btn" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
						<g:actionSubmit class="btn" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</fieldset>
				</g:form>
				
				
				<g:link class="btn btn-small btn-primary" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link>
				<g:link class="btn btn-small btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
				
			</div>
		</div>
		
		<g:render template="/common/footer" />
	</body>
</html>
