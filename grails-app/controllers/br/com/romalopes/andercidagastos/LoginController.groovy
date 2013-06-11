package br.com.romalopes.andercidagastos

class LoginController {

    def index() {
      println "index"
      render(view: "login")
    }
    
    def login() {
      println "login"
      if(!params.username)
      {
        render(view: "login")
        return
      }
      //AQUI INCLUIR TODAS AS REGRAS DE AUTENTICAÇÃO
      User user = User.findByUserName(params.username)
      
      if (user) {
        log.warn("Usuario encontrado %{user.userName}")
        if(user.password && user.password.equals(params.password)) {
          session.user = params.username
          render(view: "/main")
          return
        }
      }
      render(view: "login", model: [message: "Password or user do not match"])
    }
    
    def logout () {
      session.invalidate()
      render(view: "login")
    }

}
