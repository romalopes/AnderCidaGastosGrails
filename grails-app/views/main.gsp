<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html itemscope="itemscope" itemtype="http://schema.org/WebPage"><head>
<!-- Title -->
  <title>AnderCida Gastos</title>

  
<!-- Meta tags -->
  
  <meta content="text/html; charset=iso-8859-1" http-equiv="Content-Type">

  
  <meta name="google-site-verification" content="_pue_knqzSuziGA1lZ7tqSnUJhbLNjKsyQlHBfnrcBI">
  <meta name="keywords" content="Ander Cida Gastos">
  <meta name="description" content="AnderCida Gastos">

<!-- CSS -->
  
  <link rel="stylesheet" type="text/css" media="screen" href="include/home/css/light-blue.css">
  <link rel="stylesheet" type="text/css" media="screen" href="include/home/css/prettyPhoto.css">
  <link rel="stylesheet" href="include/lightbox/css/lightbox.css" type="text/css" media="screen">
	<style>	
		body {color:black;}
		h1 {color:#00ff00;}
		p.ex {color:rgb(0,0,255);}
		.login{
			width:300px;
			padding:5px;
			border:3px solid gray;
			margin:10px; 
			background-color: #e0f2f5;
			margin-right: 0px;
		}
		.logout{
			width:300px;
			padding:5px;
			border:3px solid gray;
			margin:10px; 
			background-color: #e0f2f5;
			margin-right: 0px;
		}
		.summary{
			width:250px;
			padding:5px;
			border:3px solid gray;
			margin:10px; 
			background-color: #e0f2f5;
		}
		#balanceValue {color:blue;}
		.operation {
			width:250px;
			padding:5px;
			border-width:3px;
			border-style:solid;
			border-color:gray;
			margin:10px; 
			background-color: #e0f2f5;
		}
		.listOperations{
			padding:5px;
			border-width:3px;
			border-style:solid;
			border-color:gray;
			margin:10px; 
			background-color: #e0f2f5;
		}
		.generalMessage{font-size:16px;
		}
		.welcome {
			background: #e0f2f5;
			color: #000;
			clear: both;
			font-size: 1em;
			margin-top: 0,4em;
			padding: 0.3em;
			min-height: 1em;
		}
	</style>
<!-- JavaScript -->
  
  <script src="include/home/js/forms.js" type="text/javascript"></script>
  <script src="include/home/js/jquery-1.6.1.min.js" type="text/javascript"></script>
  <script src="include/home/js/royal.js" type="text/javascript"></script>
  <script src="include/home/js/barra_compartilhamento.js" type="text/javascript"></script>
  <script src="include/javascript/functions.js"></script>
  <script src="include/lightbox/js/prototype.js" type="text/javascript"></script>
  <script src="include/lightbox/js/scriptaculous.js?load=effects,builder" type="text/javascript"></script>
  <script type="text/javascript" src="https://www.srdinheiro.com.br/include/lightbox/js/effects.js"></script>
  <script type="text/javascript" src="https://www.srdinheiro.com.br/include/lightbox/js/builder.js"></script>
  <script src="include/lightbox/js/lightbox.js" type="text/javascript"></script>
  
  <style type="text/css">.jlhlebbhengjlhmcjebbkambaekglhkf {top: 0px; left: 0px;min-width: 30px;max-width: 300px;font-size: 13px;font-family: arial, helvetica, sans-serif;opacity: .93;padding:0px;position:absolute;display:block;z-index: 999997;font-style: normal;font-variant: normal;font-weight: normal;}#jlhlebbhengjlhmcjebbkambaekglhkf_up{text-align: center;padding:0px;margin: 0px;}#jlhlebbhengjlhmcjebbkambaekglhkf_cont{background-color: #729FCF;font-family: arial, helvetica, sans-serif-webkit-box-shadow: #729FCF 0px 0px 2px;color: #FFFFFF;padding:7px;-webkit-border-radius: 5px;}#jlhlebbhengjlhmcjebbkambaekglhkf_down{text-align: center;padding:0px;margin: 0px;}</style>
  
  <style type="text/css">.jlhlebbhengjlhmcjebbkambaekglhkf {top: 0px; left: 0px;min-width: 30px;max-width: 300px;font-size: 13px;font-family: arial, helvetica, sans-serif;opacity: .93;padding:0px;position:absolute;display:block;z-index: 999997;font-style: normal;font-variant: normal;font-weight: normal;}#jlhlebbhengjlhmcjebbkambaekglhkf_up{text-align: center;padding:0px;margin: 0px;}#jlhlebbhengjlhmcjebbkambaekglhkf_cont{background-color: #729FCF;font-family: arial, helvetica, sans-serif-webkit-box-shadow: #729FCF 0px 0px 2px;color: #FFFFFF;padding:7px;-webkit-border-radius: 5px;}#jlhlebbhengjlhmcjebbkambaekglhkf_down{text-align: center;padding:0px;margin: 0px;}</style>
</head>
<body class="home">
	<div id="wrap"> 
		<header id="header"> </header>
		<div class="inner-wrap clearfix">
			<div>
				<div>
					<g:def var="hasUser" value="${(session?.user) ? 'true' : 'false'}" />
					<g:if test="${session.user}">
						<div class="welcome">Welcome ${session?.user}</div>
					</g:if>
					<g:if test="${!session?.user}">
						<div class="login">
							<form name="frmlogin" id="login-form" method="post" action="index.php">
					  			<p> <label for="username">E-Mail</label> <input name="email" id="emaillogin" required="required" placeholder="Digite seu E-Mail" class="placeholder" type="text"> </p>
					  			<p> <label for="password">Senha</label> <input name="senha" id="password" required="required" placeholder="Digite sua Senha" class="placeholder" type="password"> <a href="#" onclick="pedirsenha(); return false;">Esqueci minha senha.</a> </p>
					  			<p> <input name="login" class="login-submit" value="Login" type="submit"> </p>
							</form>
						<!-- end .login --> </div>
					</g:if>
				</div>
				<div>
					<div>
						<nav class="dropdown"> </nav>
						<ul id="nav" class="clearfix">
						  <li> <g:link controller="main" action="mainController"> MainController</g:link></li>
						  <li> <a href="${createLink(uri: '/')}">Home</a> </li>
						  <li> <a href="http://andercidagastos.wikidot.com/start" target="_blank">Wiki</a> </li>
						  <li> <a href="https://www.debugle.com/" target="_blank">Debug</a> </li>
						  <li><a href="http://andercidagastos.wikidot.com/contact/edit/true" target="_blank">Entre em Contato</a></li>
						</ul>
					</div>
					<div class="logout"><g:link controller="login" action="logout"> Logout</g:link></div>
				</div>
			</div>
			<div>
				<div>
					<g:render template="/templates/balance" />
				</div>
				<div>
					<g:render template="/templates/operation" />
				</div>
				<!-- end #transaction --> </div>
			</div>
		<!-- end .inner-wrap --></div>
	<!-- end wrap --></div>		

	<footer id="footer"> </footer>
	<div class="inner-wrap"> <nav> </nav>
		<ul id="footer-nav" class="clearfix">
		  <li>Copyright Â© 2010</li>
		  <li><a href="sobre.php">Sobre</a></li>
		  <li><a href="sobre.php">Privacidade</a></li>
		  <li><a href="cadastro.php">Cadastrar</a></li>
		  <li><a href="contato.php">Contato</a></li>
		  <li><a href="blog.php">BlogNews</a></li>
		  <li><a href="livros.php">Livros</a></li>
		  <li><a href="mobile.php">Mobile</a></li>
		</script><a class="twittershare no-border" href="http://twitter.com/share?count=horizontal&amp;text=AnderCidaGastos" title="Compartilhe no Twitter" target="_blank"><img alt="Compartilhe no Twitter" src="https://www.srdinheiro.com.br/include/imagens/icone_twitterp.png" class="sharebutton" border="0" height="30" width="30"></a><a class="facebookshare no-border" href="http://www.facebook.com/sharer.php?u=http://.andercidagastos.cloudfoundry.com&amp;t=Controle%20de%20Gastos%20do%20anderson%20e%20Cida" title="Compartilhe no Facebook" target="_blank"><img alt="Compartilhe no Facebook" src="https://www.srdinheiro.com.br/include/imagens/icone_facebookp.png" class="sharebutton" border="0" height="30" width="30"></a> <a class="orkutshare no-border" href="http://promote.orkut.com/preview?nt=orkut.com&amp;tt=Controle%20de%20Gastos%20do%20anderson%20e%20Cida&amp;du=https%3A%2F%2Fhttp://andercidagastos.cloudfoundry" title="Compartilhe no Orkut" target="_blank"><img alt="Compartilhe no Orkut" src="https://www.srdinheiro.com.br/include/imagens/icone_orkutp.png" class="sharebutton" border="0" height="30" width="30"></a>
		</ul>
	</div>
	
<!-- end footer -->

	<div id="lightbox" style="display: none;">
	<div id="outerImageContainer" style="width: 250px; height: 250px;">
	<div id="imageContainer"><img id="lightboxImage">
	<div id="loading"><a id="loadingLink" href="#"><img src="include/lightbox/images/loading.gif"></a></div>
	</div>
	</div>
	<div id="imageDataContainer">
	<div id="imageData">
	<div id="imageDetails"><span id="caption"></span><span id="numberDisplay"></span></div>
	<div id="bottomNav"><a id="bottomNavClose" href="#"><img src="include/lightbox/images/closelabel.gif"></a></div>
	</div>
	</div>
	</div>

</body></html>