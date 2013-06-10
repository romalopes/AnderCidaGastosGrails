package br.com.romalopes.andercidagastos

class LoginController {

    def index() { println"index"}
    
    def login() {
      println"login1"
      if(!params.username)
      {
        render(view: "login")
        return
      }
      //AQUI INCLUIR TODAS AS REGRAS DE AUTENTICAÇÃO
      def user = User.findByName(params.username)
      
      if (user) {
        session.user = params.username
        render(view: "/index")
      } else {
        render(view: "login", model: [message: "Usuario ${params.username} nao encontrado"])
      }
    }
    
    def logout () {
      session.invalidate()
      render(view: "login")
    }

}
