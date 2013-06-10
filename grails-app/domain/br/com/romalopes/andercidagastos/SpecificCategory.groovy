package br.com.romalopes.andercidagastos

class SpecificCategory {

    String name
    //SpecificCategory categoryFather
    static belongsTo= [categoryFather:SpecificCategory]
    
    static constraints = {
      name(blank:false, nullable:false, size:3..30, matches:"[a-zA-Z1-9_]+")
    }
    
    String toString() {
      return name
    }
}
