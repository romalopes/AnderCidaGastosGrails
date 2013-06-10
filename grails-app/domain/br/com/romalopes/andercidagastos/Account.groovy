package br.com.romalopes.andercidagastos


enum ACCOUNT_TYPE {
  SAVINGS, DEBT, CREDIT
}


class Account {

    String name
    String accountNumber
    ACCOUNT_TYPE typeAccount
    BigDecimal balance
    static hasMany=[user:User]
    static belongsTo = [user:User]
    
    
    static constraints = {
      name(blank:false, nullable:false, size:3..30, matches:"[a-zA-Z1-9_]+")
    }
    
    String toString() {
      return name + " " + accountNumber
    }
}
