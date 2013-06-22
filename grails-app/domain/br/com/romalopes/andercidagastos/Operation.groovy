package br.com.romalopes.andercidagastos

import java.text.DateFormat
import java.text.SimpleDateFormat

class Operation implements Serializable{

    int id
    String name
    Date date
    BigDecimal value
    SpecificCategory category
    static belongsTo = [user:User]
    Account account
    
    static constraints = {
      id(unique:true, )
      value(blank:false, nullable: false)
      name(blank:false, nullable: false, size:3..80)
      date(blank:false, nullable:false)
      category(nullable: false)
      user(nullable: false)
      account(nullable:false)
    }
    
    String toString() {
      return name
    }
    
    String getStringDate() {
      DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
      return df.format(date)
      
    }

}
