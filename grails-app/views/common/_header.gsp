<g:set var="subtitle" value="${pageProperty(name:'page.subtitle')}"/>

<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
      <div class="container">
		<g:render template="/common/menu" />
      </div>
    </div>
</div>

<div class="hero-unit">
  <h1>League Manager</h1>
  <small class="muted">${subtitle}</small>
</div>