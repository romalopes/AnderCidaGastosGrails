package br.com.romalopes.andercidagastos

import javax.servlet.http.Cookie

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
      println "login $params"
	  if(session.user)
	  {
		//render(view: "/main")
		redirect(controller:"main")
		return
	  }

	  Cookie cookie
	  boolean cookieFound = false
	  request.getCookies().each {
		  cookie = it
		  println "Cookie ${cookie.toString()} " + cookie.value
		  
		  
		  if(cookie.name.equals('user')) {
			  params.username = cookie.value
			  cookieFound = true
		  }
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
        if(cookieFound || user.password && user.password.equals(params.password)) {
          session.user = user
		  
		  String uuid = UUID.randomUUID().toString();
		  println "uuid $uuid"
		  Cookie c = new Cookie("user", user.userName);
//		  c.setSecure(true);
		  c.setMaxAge(365 * 24 * 60 * 60); // one year
		  response.addCookie(c);
		  println "Cookie ${c} " + cookie.value
		  
          redirect(controller:"main")
          //render(view: "/main")
          return
        }
      }
      render(view: "login", model: [message: "The username or password is invalid or the account is not active."])
    }
    
    def logout () {
      session.invalidate()
	  def cookies = request.getCookies().each {
		  Cookie cookie = it
		  println "Cookie $cookie " + cookie.value
		//  if (c.getName().equals('user')) {
			  cookie.setMaxAge(0);
			  cookie.setValue(null);
			  response.addCookie(cookie);
		
		 // }
      }
      render(view: "login")
    }

}

