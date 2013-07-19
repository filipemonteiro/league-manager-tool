<%@ page import="leaguemanager.Player" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'player.label', default: 'Player')}" />
		<r:require modules="bootstrap"/>
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>

	<g:render template="/common/header" model="['title':'Player']" />
	<div class="container">
			<div class="row">
		
				<div id="create-player" class="content scaffold-create" role="main">
		
					<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
					</g:if>
					
					<g:hasErrors bean="${playerInstance}">
						<div class="alert">
							<g:eachError bean="${playerInstance}" var="error">
								<button type="button" class="close" data-dismiss="alert">&times;</button>
								<g:message error="${error}"/>
							</g:eachError>
						</div>
					</g:hasErrors>
					
					<g:form action="save" >
						<fieldset class="form">
							<g:render template="form"/>
						</fieldset>
						<fieldset class="buttons">
							<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
						</fieldset>
					</g:form>
					<div class="form-actions">
						<g:link class="btn btn-small btn-primary" action="list">Voltar</g:link>
					</div>
					<g:render template="/common/footer" />
				</div>
			</div>
		</div>

	</body>
</html>
