package br.com.romalopes.andercidagastos

import grails.converters.JSON

class MainController {
 
  
    def generalService
  
    def index() {
      println "entrou action mainController.index  ${session.user}"
      
      def specificCategoryList = SpecificCategory.list()
      User user = session.user
      session.user = User.findByUserName(user.userName)

      Map model = [:]
      if(session.account != null) {
        List opList = Operation.findAllWhere(account: session.account);
        println opList;
        model = [operationInstanceList: opList, operationInstanceTotal: opList.size(), specificCategoryList:specificCategoryList]
      }
      render(view:"/main", model:model)
    }
    
    def mainController() {
      render(view:"/mainController")
    }
    
    def changeAccount() {
      println "params: $params"
      println params.account
      if(params.account == null){
        render(view:"/main")
        return;
      }
      session.account = Account.findByName(params.account)
      
	  render(view:"/main", model:[:])
      //redirect(action:"index")
    }
    
    def addOperation() {
      println "entrou addOperation"
      println "params: $params"

      //params: [category:categoriaFilhaTeste, _action_addOperation:Submit,
      //name:kjl, value:3, date:2013-06-19, action:addOperation, controller:main]
      
      generalService.addOperation(session.user, session.account, params.name, params.value, params.date, params.category)
	  
	  redirect(action:"index")
	  //render(view:"/main")

    }
	def populateUsers() {
		def json = User.list() as JSON
		println json
		return json
	}
}
