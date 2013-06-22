package br.com.romalopes.andercidagastos

import java.io.Serializable;

class SpecificCategory implements Serializable{

    String name
    //SpecificCategory categoryFather
    static belongsTo= [categoryFather:SpecificCategory]

    static mapping = {
      version false
      id generator: 'hilo',
      params: [table: 'hi_value',
               column: 'next_value',
               max_lo: 100]
    }

    static constraints = {
      name(blank:false, unique:true, nullable:false, size:3..30, matches:"[a-zA-Z1-9_]+")
    }
    
    String toString() {
      return name
    }
}
