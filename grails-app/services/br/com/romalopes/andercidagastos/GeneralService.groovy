package br.com.romalopes.andercidagastos

import java.text.SimpleDateFormat

class GeneralService {

    def serviceMethod() {

    }
    
    boolean addOperation(User user, Account account, def name, def value, def date, def category) {
      BigDecimal bigDecimal = new BigDecimal(value)
      SpecificCategory specificCategory = SpecificCategory.findByName(category)
      if(specificCategory == null) {
        println "Category $category Not found"
        return false; 
      }
      Date currentDate = new SimpleDateFormat("yyyy-MM-dd").parse(date);
      
      Operation operation = new Operation(name: name, value:bigDecimal, user:user, 
                                  category: specificCategory, date:currentDate, account:account)
    
	  Account.withTransaction { status ->
	      account.balance = account.balance - operation.value
		  if (!operation.save(flush:true)){
	        log.error "Could not save operation1!!"
	        log.error "${operation1.errors}"
	      }
		  if (!account.save(flush:true)){
			  log.error "Could not save account!!"
			  log.error "${account.errors}"
			}
      }

     return true 
    }
}
