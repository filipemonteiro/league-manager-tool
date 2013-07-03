
<%@ page import="leaguemanager.Game" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<g:set var="entityName" value="${message(code: 'game.label', default: 'Game')}" />
		<title>Edit Match Results</title>
		<r:require modules="bootstrap"/>
	</head>
	
	<body>
		<g:render template="/common/header" />
		
		<div class="container">
			<div class="row">
			
			
				<legend><g:message code="default.edit.results.label" /></legend>
			
				<g:if test="${flash.message}">
					<div class="alert">
						<button type="button" class="close" data-dismiss="alert">&times;</button>
						${flash.message}
					</div>
				</g:if>
				
				<g:form name="games" action="saveMatchResults">
					<g:each in="${gameList}" status="i" var="gameInstance">
						<div class="container-fluid">
							<div class="row-fluid" style="border: 1px solid #E5E5E5">
								<div class="span5 text-left" style="background-color: blue; border-right: 1px;">
									HOME
								</div>
								<div class="span1 text-center" style="background-color: red">
									2
								</div>
								<div class="span1 text-center" style="background-color: red">
									1
								</div>
								<div class="span5 text-right" style="background-color: red">
									AWAY
								</div>
							</div>
						</div>
					</g:each>
				</g:form>
				
				<div class="form-actions">
					<g:link class="btn btn-small btn-primary" action="table" id="${championshipInstance?.id}"><g:message code="default.table.label" args="[entityName]"/></g:link>
				</div>
			</div>
		</div>
		
		<g:render template="/common/footer" />
	</body>
</html>
