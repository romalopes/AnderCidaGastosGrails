<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		
		<g:javascript library="jquery" />
		<!-- Chama bibliotecas Jquery -->
		<g:javascript src="jquery/jquery-1.8.3.js" />
		<g:javascript src="jquery/jqueryui.js" />	
		<g:javascript src="jquery/jquery.blockUI.js" />
		<g:javascript src="jquery/jquery.blockUI.js" />
		<g:javascript src="jquery/jquery.treeview/jquery.treeview.js" />
		<g:javascript src="jquery/jstree-v.pre1.0/jquery.jstree.js" />
		
		<%--
		
		<script type="text/javascript" class="source">
			$(document).ready(function () 
					{
						$('p#testeRoma').hide();
						$('a#paragraphAnchor').click(function()
							{
					//			$('p#testeRoma').slideDown(5000);
							})
					});
		
		</script>
		--%><g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
	
	<%--<a href="#" id="paragraphAnchor">Click </a>
	<p id="testeRoma">
		teste teste teste teste teste teste teste teste teste teste teste teste
		teste teste teste teste teste teste teste teste teste teste teste teste
		teste teste teste teste teste teste teste teste teste teste teste teste
		teste teste teste teste teste teste teste teste teste teste teste teste
		teste teste teste teste teste teste teste teste teste teste teste teste  
	</p>
	
			--%><div id="grailsLogo" role="banner"><a href="${createLink(uri: '/')}"><img src="${resource(dir: 'images', file: 'andercidagastos_logo.png')}" alt="Gastos"/></a>
			<g:message code="default.andercidaGastos" default="AnderCida Gastos"/>
		</div>
		<g:layoutBody/>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<r:layoutResources />

<div id="demo1" class="demo jstree jstree-0 jstree-default jstree-focused" style="height:100px;"><ul><li id="phtml_1" class="jstree-open"><ins class="jstree-icon">&nbsp;</ins><a href="#" class=""><ins class="jstree-icon">&nbsp;</ins>Root node 1</a><ul style="">
				<li id="phtml_2" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a href="#" class="jstree-clicked"><ins class="jstree-icon">&nbsp;</ins>Child node 1</a></li>
				<li id="phtml_3" class="jstree-last jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a href="#" class=""><ins class="jstree-icon">&nbsp;</ins>Child node 2</a></li>
			</ul></li><li id="phtml_4" class="jstree-last jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a href="#" class=""><ins class="jstree-icon">&nbsp;</ins>Root node 2</a></li></ul></div>		
	</body>
</html>
