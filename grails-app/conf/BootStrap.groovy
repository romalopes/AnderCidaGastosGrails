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
        
          Account account1 = Account.findByName('ContaTeste')
          if(account1)
            println account1
          
          println "Environment ---->" + GrailsUtil.getEnvironment()
          //if(GrailsUtil.getEnvironment().equals("development") || GrailsUtil.getEnvironment().equals("developmentLocal") )
          //{
            if(User.findByUserName("romalopes@yahoo.com.br")) {
              println("Valores ja existem")
              return
            }
    
            User userAnderson = new User(userName:'romalopes@yahoo.com.br', password:'password', firstName:"PrimeiroNome", lastName:"UltimoNome")
            if (!userAnderson.save()){
              log.error "Could not save user!!"
              log.error "${userAnderson.errors}"
            }
            log.info("${userAnderson} Salved")
            
            User userCida = new User(userName:'cydynha@msn.com', password:'password', firstName:"PrimeiroNome", lastName:"UltimoNome")
            if (!userCida.save()){
              log.error "Could not save user!!"
              log.error "${userCida.errors}"
            }
        
            UserGroup userGroup = new UserGroup(groupName: "GroupTest", userOwner: userAnderson )
            
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
       //   }
          
          
    }
    def destroy = {
      
    }
}
