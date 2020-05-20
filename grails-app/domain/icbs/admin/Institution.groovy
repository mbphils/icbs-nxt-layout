package icbs.admin

class Institution {
    String paramCode
    String paramDescription
    String paramValue
    String paramType
    
    static constraints = {
        paramCode nullable:true
        paramDescription nullable:true
        paramValue nullable:true
        paramType nullable:true   
    }
    static mapping = {
    	id sqlType:'int', generator:'increment'
    }
}
