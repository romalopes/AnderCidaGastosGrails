package br.com.romalopes.andercidagastos

class User {

    String userName
    String password
    String firstName
    String lastName
    static hasMany=[accounts:Account, userGroup:UserGroup, operation:Operation]
    static belongsTo = [accounts:Account, userGroup:UserGroup]
    
    static constraints = {
      userName(blank:false, nullable:false, size:3..30, matches:"[a-zA-Z1-9_]+")
      password (password:true)
    }
    
    String toString() {
      return userName + " - " + firstName + " " + lastName;
    }
}
