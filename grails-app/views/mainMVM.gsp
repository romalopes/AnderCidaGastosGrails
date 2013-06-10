<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html dir="ltr" xml:lang="pt-br" lang="pt-br" xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<title>MVM</title>

		<g:javascript library="jquery" />
		<r:layoutResources/>
		
		<!-- Chama bibliotecas Jquery -->
		
		<g:javascript src="jquery/jquery-1.8.3.js" />	
		<g:javascript src="jquery/jqueryui.js" />	
		<g:javascript src="jquery/jquery.blockUI.js" />
		
		<!-- Plugins -->
		<g:javascript src="jquery/jquery.dataTables.min.js" />
		<g:javascript src="jquery/jquery.selectbox-0.2.min.js" />
		<g:javascript src="mvm/FixedHeader.js" />
		<g:javascript src="mvm/chosen.js" />

 		<!-- Scripts MVM-->
	    <g:javascript src="mvm/mvm.js" />
	   	
	   	<!-- Bibliotecas Highcharts -->
	    <g:javascript src="highcharts/highcharts.js" />
	    <g:javascript src="highcharts/exporting.js" />
		<!-- Arquivos Adicionais para o efeito de janela pop-up Highslide -->
		<g:javascript src="highcharts/highslide-full.min.js" />
	    <g:javascript src="highcharts/highslide.config.js" />
	    <g:javascript src="highcharts/highslide.js" />
	    <g:javascript src="highcharts/highslide-with-html.js" />
	    <g:javascript src="highcharts/highslide-with-html.min.js" />
	    <g:javascript src="highcharts/highslide-with-html.packed.js" />
	    
		<!--CSS MVM -->
 	    <link rel="stylesheet" href="${resource(dir: 'css', file: 'master.css')}" type="text/css" />
		<!--CSS -->
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'dataTable.css')}" type="text/css" />
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'chosen.css')}" type="text/css" />
	    <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.selectbox.css')}" type="text/css" />
	    <link rel="stylesheet" href="${resource(dir: 'highslide', file: 'highslide.css')}" type="text/css" />

	<script>
/*	
	$(document).ready(function() {
		mvmInitComboFiltro(); // Chama script do chosen
		mvmInitMostraeEscondeMenu(); //Menu da toolbar
		mvmCriaSelectPersonalizado(); // Select do sistemas
		mvmCriarLinhasZebradas(); // Zebra tabelas do sistema
		mvmInitDeletaLinhaTabela(); // Deleta linha das tabelas
		mvmInitAddLinhaTabela(); // Adiciona linha nas tabelas
		mvmInitCriaAbasEstatiscas(); // Define o script das abas
		mvmHighlightLinhasDaTabela(); // Define o script do highlight
		mvmDataTable(); // Chama o script do dataTable que fixa o header
	});
	
*/	
	</script>

    </head>

    <body>
    <r:layoutResources/>
    
        <div class="mvm-div-toolbar">
			<div class="mvm-div-logo"><h1><b><a href="index.html" title="MVM">MVM</a></b></h1>
			</div><!--mvm-div-logo-->
	  	    <div class="mvm-div-plataformas">
				<div class="plataformas">
					<g:render template="/templates/selectPlataforma" />
				</div><!--plataformas-->
            </div><!--mvm-div-plataformas-->
            <div class="mvm-div-menu">

					<li>
						<a class="mvm-link-menu" href="javascript:;">Simulação</a>
							<ul class="mvm-ul-menu">
								<li><a href="#" title="Log Simulação">Log Simulação</a></li>
								<li><a href="#" title="Perda Online Óleo">Perda Online Óleo</a></li>
								<li><a href="#" title="Perda Online Gás">Perda Online Gás</a></li>     
							</ul>						
                    </li>

            </div><!--mvm-div-menu-->
        </div><!--mvm-div-toolbar-->
        
		<div class="mvm-div-conteiner-left">
			<div class="pocos">
				<g:render template="/templates/selectPocos" />
			</div>			
 
 			<div class="mvm-div-estatisticas">
				<div class="mvm-div-abas-e-legenda">
					<ul class="mvm-ul-abas">
						<li><a class="ativo" href="#mvm-div-aba-grafico-estatisticas" title="Gráfico">Gráfico</a></li>
						<li><a href="#mvm-div-aba-tbl-estatisticas" title="Tabela">Tabela</a></li>
					</ul>
					
					<ul class="mvm-ul-legendas">
						<li>Legenda</li>
						<li class="mvm-li-falha">Com falha</li>
						<li class="mvm-li-ressalva">Com ressalva</li>
					</ul>
					
				</div><!-- mvm-div-abas-e-legenda -->

	 			<div id="mvm-div-aba-grafico-estatisticas" class="aba">
				
				</div><!--mvm-div-aba-grafico-estatisticas-->

				<div id="mvm-div-aba-tbl-estatisticas" class="aba">
					<g:render template="/templates/selectTabela" />
				</div><!--mvm-div-aba-tbl-estatisticas-->

		    </div><!--mvm-div-estatisticas -->
 
 		</div><!--mvm-div-conteiner-left-->
		
		<div class="mvm-div-conteiner-right">
<%-- 		
		   <div class="mvm-div-parametros">
				<h3>Parâmetros</h3>
				
				<form action="" method="post">
					<div>
						<label for="simulacao">Simulação: </label>
						<select name="">
							<option>MARLIM II</option>
							<option>PIPESIM</option>
						</select>
					</div>
					<div>
						<label for="arquivo">Arquivo: </label>
						<div class="mvm-div-file">
							<input type="file" onchange="document.getElementById('file').value = this.value;" name="images" />
							<input type="text" value="${pathArquivoSimulador}" disabled="disabled" id="file" name="file" />
							<input type="button" onclick="$('input[type=file]').click();" value="UPLOAD" name="upload" class="mvm-btn-upload" />
						</div>		
					</div>
				</form>
--%>
				<div id="mvm-div-tabela-parametros-sim" >
					<g:render template="/templates/selectTabelaParams" />				
				</div><!-- mvm-div-tabela-parametros-sim -->				
<%-- 			</div><!--mvm-div-parametros -->  --%>
			
			<input type="button" value="Salvar" class="mvm-btn-salvar" />

		</div><!-- mvm-div-conteiner-right -->
		
    </body>
</html>