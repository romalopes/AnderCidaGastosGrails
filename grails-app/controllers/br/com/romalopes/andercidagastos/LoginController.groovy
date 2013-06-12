package br.com.romalopes.andercidagastos

class LoginController {

    def index() {
       if(session.user) 
      {
        redirect(controller:"main")
        //render(view: "/main")
      }
      else 
      {
        render(view: "login")
      }
    }
    
    def login() {
      println "login"
      
      if(session.user) 
      {
        //render(view: "/main")
        redirect(controller:"main")
        return
      }
      if(!params.username)
      {
        render(view: "login")
        return
      }
      //AQUI INCLUIR TODAS AS REGRAS DE AUTENTICAÇÃO
      User user = User.findByUserName(params.username)
      
      if (user) {
        log.info("Usuario encontrado %{user.userName}")
        if(user.password && user.password.equals(params.password)) {
          session.user = user
          redirect(controller:"main")
          //render(view: "/main")
          return
        }
      }
      render(view: "login", model: [message: "The username or password is invalid or the account is not active."])
    }
    
    def logout () {
      session.invalidate()
      render(view: "login")
    }

}
