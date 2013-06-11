package br.com.romalopes.andercidagastos

import java.io.Serializable;

class UserGroup implements Serializable{

    String groupName
    User userOwner
    static hasMany=[user:User]
    static belongsTo=[user:User]

    static mapping = {
      version false
      id column: 'groupName'
    }
    static constraints = {
      groupName(blank:false, unique:true, nullable:false, size:3..30)
    }
    
    String toString() {
      return groupName
    }
}
