<%@ page import="leaguemanager.Team" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<g:set var="entityName" value="${message(code: 'team.label', default: 'Team')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		<r:require modules="bootstrap"/>
	</head>
	
	<body>
		<g:render template="/common/header" />
		
		<div class="container">
			<div class="row">
			
				<legend><g:message code="default.create.label" args="[entityName]" /></legend>
		
				<g:if test="${flash.message}">
					<div class="alert">
						<button type="button" class="close" data-dismiss="alert">&times;</button>
						${flash.message}
					</div>
				</g:if>
						
				<g:hasErrors bean="${teamInstance}">
					<div class="alert">
						<g:eachError bean="${teamInstance}" var="error">
							<button type="button" class="close" data-dismiss="alert">&times;</button>
							<g:message error="${error}"/>
						</g:eachError>
					</div>
				</g:hasErrors>
				
				<g:form action="save" >
					<fieldset>
						<g:render template="form"/>
					</fieldset>
					<fieldset>
						<g:submitButton name="create" class="btn" value="${message(code: 'default.button.create.label', default: 'Create')}" />
					</fieldset>
				</g:form>
				
				<div class="form-actions">
					<g:link class="btn btn-small btn-primary" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link>
				</div>
		
			</div>
		</div>
		
		<g:render template="/common/footer" />
	</body>
</html>
