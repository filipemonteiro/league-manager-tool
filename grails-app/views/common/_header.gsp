<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
      <div class="container">
        <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
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
				<li class="">
					<g:link controller="user">Admin</g:link>
				</li>
			</ul>
        </div>
      </div>
    </div>
</div>

<div class="hero-unit">
  <h1>League Manager</h1>
  <small class="muted">Bola pro mato porque o jogo é de campeonato!</small>
</div>