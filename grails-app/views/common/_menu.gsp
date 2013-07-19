
<div class="nav-collapse collapse">
			<ul class="nav">
			    <li class="">
				  <a href="${createLink(uri: '/')}">Home</a>
				</li>   
				<li class="">
					<g:link controller="championship">Campeonato</g:link>
				</li>
				<li class="">
					<g:link controller="participant">Participante</g:link>
				</li>
				<li class="">
					<g:link controller="player">Player</g:link>
				</li>
				<li class="">
					<g:link controller="team">Time</g:link>
				</li>
				<sec:ifAllGranted roles="ROLE_ADMIN">
					<li class="">
						<g:link controller="user">Usário</g:link>
					</li>
					<li class="">
						<g:link controller="console">Console</g:link>
					</li>
				</sec:ifAllGranted>
			</ul>
			<sec:ifNotLoggedIn>
				<form method="POST" class="navbar-form pull-right" action="${resource(file: 'j_spring_security_check')}">
	            	<g:textField name="j_username" class="span2" placeholder="Email" value="${userInstance?.username}"/>
	              	<g:field type="password" name="j_password" class="span2" placeholder="Password" value="${userInstance?.password}"/>
	              	<g:submitButton name="login" class="btn" value="Sign in" />
	            </form>
	        </sec:ifNotLoggedIn>
	        <sec:ifLoggedIn>
	        	<div class="navbar-form pull-right">
	        		<p class="navbar-text pull-right">
              			<g:link controller="logout">Logged in as <sec:username /></g:link>
            		</p>
	        	</div>
	        </sec:ifLoggedIn>
</div>