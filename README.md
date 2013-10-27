AnderCidaGastosGrails
=====================

Gastos do Anderson e da Cida em Grails

Vers�o 1

+ Passos do Projeto

++ Primeira parte(fazendo funcionar em Grails)
# Download do GGTS
# Cria��o do Projeto Grails
# Cria��o do Projeto
# Inclus�o no GitHub
 # Cria��o do reposit�rio
  # pelo site:https://help.github.com/articles/create-a-repo
  # OU pelo programa GitHug instalado: Basta copiar para a �rea de trabalho.
 # Jogar para o github 
 # AndercidaGastosGrails on Github is [*https://github.com/romalopes/AnderCidaGastosGrasil ]
++ Cria��o dos Objetos
# Cria��o dos objetos de dom�nio (create-domain-class)
 # Fazer os relacionamentos e os IDs
 # [*http://grails.org/doc/2.2.1/ref/Database%20Mapping/id.html]
 # [*http://forum.springsource.org/showthread.php?102700-Composite-Ids-problem]
 # Gera��o dos controles e view(generate-all *)
 # Bootstrap para algumas classes.
++ Cria��o do login 
# Colocar o Login com filter
 #     Lembrando que depois usaremos o spring Security.
 # 	create-filters security ([*http://grails.org/doc/2.2.1/ref/Plug-ins/filters.html])
 # 	Criar a p�gina login.jsp
 # 	Modificar o SecurityFilters.groovy
 # 	UrlMapping.groovy -> incluir "/login"(controller: 'login', action: 'index') incluir "/"(controller: "main", action:"index")
 # 	Criar o login.gsp
  # Apontar para o css <link rel="stylesheet" href="${resource(dir: 'css', file: 'reset.css')}" type="text/css">
  # Modificar as tags do label/input/submit
  # Modificar o loging
  # Keep logged in using cookie
++ Liga��es e Como executar
# Formas para Executar
 # 	prod run-app
 # 	-Dgrails.env=developmentLocal run-app
 # Ligar com o MySql
 # 	Ligar o servi�o do MySql
 # 	Modificar o dataSource.groovy
  # 		Criar ambientes local(HSSqlDB) e development(MySql)
  # 		Configurar o ambiente
 # 	Apontar para o Conector JDBC //no Config.groovy
 # 	[*http://learnedstuffs.wordpress.com/2012/02/21/using-mysql-as-database-in-grails/]
 # 	[*http://www.redtoad.ca/ataylor/2011/06/getting-started-with-grails-and-mysql/]
# Apontando para um banco de dados na Nuvem
 # 	Achei um gratis: [*http://www.freemysqlhosting.net/account/]
 # 	Cria��o do BD e modifica��o do dataSource.groovy para o ambiente de produ��o. 
 # Colocando no Cloud Foundry
 # 	[*http://blog.swierczynski.net/2012/01/cloud-foundry-grails-lightning-fast-deployment/]
 # 	[*http://blog.springsource.org/2011/04/12/one-step-deployment-with-grails-and-cloud-foundry/]
 # 	prod cf-push
 # 	prod cf-update
 # 	[*http://AnderCidaGastos.cloudfoundry.com]
# Cria��o da p�gina inicial
 # Cria��o do Controller
 # Cria��o das a��es para a sele��o da Conta e inclus�o de Opera��o
 # install-template para criar o web.xml
 # 