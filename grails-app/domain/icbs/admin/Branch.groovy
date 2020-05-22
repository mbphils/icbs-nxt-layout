package icbs.admin

class Branch {
    String code  // between 000 and 999
    String name
    String address
    String branchManager
    
    Date runDate
    Date branchOpsStartDate
    
    static constraints = {
        code nullable:true
        name nullable:true
        address nullable:true
        branchManager nullable:true
        runDate nullable:true
        branchOpsStartDate nullable:true    
    }
    
    static mapping = {
    	id sqlType:'int', generator:'increment'
    }
}
