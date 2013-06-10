import grails.util.GrailsUtil
import br.com.romalopes.andercidagastos.ACCOUNT_TYPE
import br.com.romalopes.andercidagastos.Account
import br.com.romalopes.andercidagastos.Operation
import br.com.romalopes.andercidagastos.SpecificCategory
import br.com.romalopes.andercidagastos.User
import br.com.romalopes.andercidagastos.UserGroup

class BootStrap {

  
    def init = { 
      
        servletContext ->
          if(GrailsUtil.getEnvironment().equals("development"))
          {
    
            User userAnderson = new User(userName:'romalopesTeste', password:'password', firstName:"PrimeiroNome", lastName:"UltimoNome")
            if (!userAnderson.save()){
              log.error "Could not save user!!"
              log.error "${user.errors}"
            }
            User userCida = new User(userName:'cydynhaTeste', password:'password', firstName:"PrimeiroNome", lastName:"UltimoNome")
            if (!userCida.save()){
              log.error "Could not save user!!"
              log.error "${user.errors}"
            }
        
            UserGroup userGroup = new UserGroup(name: "GroupTest", userOwner: userAnderson )
            
            userGroup.addToUser(userAnderson)
            userGroup.addToUser(userCida)
            if (!userGroup.save()){
              log.error "Could not save userGroup!!"
              log.error "${userGroup.errors}"
            }
            
            Account account = new Account(name: "ContaTeste", typeAccount: ACCOUNT_TYPE.DEBT, accountNumber: 'NumeroConta' )
            account.balance = 1000
            account.addToUser(userAnderson)
            account.addToUser(userCida)
            if (!account.save()){
              log.error "Could not save account!!"
              log.error "${account.errors}"
            }
            
            SpecificCategory categoryPai = new SpecificCategory(name: "categoriaPaiTeste")
            if (!categoryPai.save()){
              log.error "Could not save categoryPai!!"
              log.error "${account.errors}"
            }
            SpecificCategory categoryFilha = new SpecificCategory(name: "categoriaFilhaTeste", categoryFather:categoryPai)
            if (!categoryFilha.save()){
              log.error "Could not save categoryFilha!!"
              log.error "${account.errors}"
            }
            Operation operation1 = new Operation(name: "Operation1", value:300, usar:userAnderson, userGroup:userGroup, category: categoryFilha, date:new Date(), account:account, user:userAnderson)
      
            if (!operation1.save()){
              log.error "Could not save operation1!!"
              log.error "${account.errors}"
            }
          }
          
          
    }
    def destroy = {
      
    }
}
