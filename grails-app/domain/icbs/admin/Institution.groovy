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

/*
    insert into institution (id, version, param_code, param_description, param_type, param_value)
    values (1, 0, 'GEN.10100', 'System Lock', 'Logical', 'TRUE')
 */