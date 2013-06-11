package br.com.romalopes.andercidagastos

import java.io.Serializable;

class Operation implements Serializable{

    int id
    String name
    Date date
    BigDecimal value
    SpecificCategory category
    static belongsTo = [user:User]
    UserGroup userGroup
    Account account
    
    static constraints = {
      id(unique:true, )
      value(blank:false, nullable: false)
      name(blank:false, nullable: false, size:3..80)
      category(nullable: false)
      user(nullable: false)
      userGroup(nullable: false)
      account(nullable:false)
    }
    
    String toString() {
      return name
    }
}
