
<%@ page import="leaguemanager.Team" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <parameter name="subtitle" value="Time"/>
		<g:set var="entityName" value="${message(code: 'team.label', default: 'Team')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<r:require modules="bootstrap"/>
	</head>
	
	<body>
		<div class="container">
			<div class="row">
				<g:if test="${flash.message}">
					<div class="alert">
						<button type="button" class="close" data-dismiss="alert">&times;</button>
						${flash.message}
					</div>
				</g:if>
				
				<table class="table table-hover">
					<tbody>
						<g:each in="${teamInstanceList}" status="i" var="teamInstance">
							<tr>
							
								<td>
									<g:if test="${teamInstance.imagePath}">
										<g:img dir="images/team_uploads" file="${teamInstance.imagePath}"/>
									</g:if>
									<g:else>
										- 
									</g:else>
									${fieldValue(bean: teamInstance, field: "name")}
								</td>
							
							</tr>
						</g:each>
					</tbody>
				</table>
				
				<div class="pagination">
					<g:paginate total="${teamInstanceTotal}" />
				</div>
			</div>
		</div>
	</body>
</html>
