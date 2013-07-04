
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
		<g:render template="/common/header-min" model="['title':'Campeonato']" />
		
		<div class="container">
			<div class="row">
			
				<g:if test="${flash.message}">
					<div class="alert">
						<button type="button" class="close" data-dismiss="alert">&times;</button>
						${flash.message}
					</div>
				</g:if>
	
				<g:if test="${championshipInstance?.name}">
					<p>
						<span id="name-label" class="property-label"><g:message code="championship.name.label" default="Título" /></span>
						
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${championshipInstance}" field="name"/></span>
						
					</p>
				</g:if>
			
				
			
				<g:if test="${championshipInstance?.startDate}">
					<p>
						<span id="startDate-label" class="property-label"><g:message code="championship.startDate.label" default="Data de Início" /></span>
						
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${championshipInstance?.startDate}" format="dd/MM/yyyy" /></span>
						
					</p>
				</g:if>
			
				<g:if test="${championshipInstance?.dueDate}">
					<p>
						<span id="dueDate-label" class="property-label"><g:message code="championship.dueDate.label" default="Data de Término" /></span>
						
						<span class="property-value" aria-labelledby="dueDate-label"><g:formatDate date="${championshipInstance?.dueDate}" format="dd/MM/yyyy" /></span>
						
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
					<g:link class="btn btn-small btn-primary" action="list">Voltar</g:link>
				</div>
		<g:render template="/common/footer" />
			</div>
		</div>
		
		
	</body>
</html>
