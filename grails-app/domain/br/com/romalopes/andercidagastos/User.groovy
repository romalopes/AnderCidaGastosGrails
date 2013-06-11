package br.com.romalopes.andercidagastos

import java.io.Serializable;

class User implements Serializable{

    String userName
    String password
    String firstName
    String lastName
    static hasMany=[accounts:Account, userGroup:UserGroup, operation:Operation]
    static belongsTo = [accounts:Account, userGroup:UserGroup]
    
    static mapping = {
      version false
      id column: 'userName'
    }

    static constraints = {
      userName(blank:false, email:true, nullable:false, size:3..30)
      password (password:true)
    }
    
    String toString() {
      return userName + " - " + firstName + " " + lastName;
    }
}
