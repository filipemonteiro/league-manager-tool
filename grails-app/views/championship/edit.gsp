<%@ page import="leaguemanager.Championship" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<g:set var="entityName" value="${message(code: 'championship.label', default: 'Championship')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
		<r:require modules="bootstrap"/>
	</head>
	
	<body>
		<g:render template="/common/header" model="['title':'Editando']" />
		
		<div class="container">
			<div class="row">
			
				
				<g:if test="${flash.message}">
					<div class="alert">
						<button type="button" class="close" data-dismiss="alert">&times;</button>
						${flash.message}
					</div>
				</g:if>
				
				<g:hasErrors bean="${championshipInstance}">
					<div class="alert">
						<g:eachError bean="${championshipInstance}" var="error">
							<button type="button" class="close" data-dismiss="alert">&times;</button>
							<g:message error="${error}"/>
						</g:eachError>
					</div>
				</g:hasErrors>
				
				<g:form method="post" >
					<g:hiddenField name="id" value="${championshipInstance?.id}" />
					<g:hiddenField name="version" value="${championshipInstance?.version}" />
					<fieldset class="form">
						<g:render template="form"/>
					</fieldset>
					<fieldset>
						<g:actionSubmit class="btn" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
						<g:actionSubmit class="btn" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</fieldset>
				</g:form>
				
				<div class="form-actions">
					<g:link class="btn btn-small btn-primary" action="list">Voltar</g:link>
					
				</div>
				
			</div>
		</div>
		
		<g:render template="/common/footer" />
		
	</body>
</html>
