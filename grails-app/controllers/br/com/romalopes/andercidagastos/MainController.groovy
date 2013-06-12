package br.com.romalopes.andercidagastos

class MainController {

    def index() {
      println "entrou action mainController.index  ${session.user}"
      
      /*User user = session.user
      
      Account.count()
      Set accountSet = user.getAccounts()
      
      if(!accountSet) {
        render(view:"/main" )
        return
      }
      Account account = accountSet.toList().get(0)
      def operationInstanceTotal = Operation.findByAccount(account).size()
      
      */
      //Operation op = Operation.findByAccount(Account.get(0))
      //println op
      
      println Operation.count()
      println Operation.list()
      
      render(view:"/main", model: [operationInstanceList: Operation.list(), operationInstanceTotal: Operation.count()] )
    }
    
    def mainController() {
      render(view:"/mainController")
    }
}
