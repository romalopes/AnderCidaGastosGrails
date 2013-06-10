package br.com.romalopes.andercidagastos

class UserGroup {

    String name
    User userOwner
    static hasMany=[user:User]
    static belongsTo=[user:User]

    static constraints = {
      name(blank:false, nullable:false, size:3..30)
    }
    
    String toString() {
      return name
    }
}
