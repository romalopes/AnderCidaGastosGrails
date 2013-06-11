package andercidagastos

class SecurityFilters {

  def filters = {
    loginCheck(controller: '*', action: '*') {
      before = {
        if (!session.user && !actionName.equals('login')) {
          redirect(controller: "login", action: "login")
          return false
        }
      }
    }
  }
}
 
  /*
    def filters = {
        all(controller:'*', action:'*') {
            before = {

            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
*/