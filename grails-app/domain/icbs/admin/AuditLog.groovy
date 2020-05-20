package icbs.admin
import icbs.admin.Branch
import icbs.admin.UserMaster

class AuditLog {
    Branch branch
    UserMaster user
    String logAction
    Date logDate
    String tableName
    Integer recordId
    
    static constraints = {
        branch nullable:true
        user nullable:true
        logAction nullable:true
        logDate nullable:true
        tableName nullable:true
        recordId nullable:true
    }
    
    static mapping = {
    	id sqlType:'int', generator:'increment'
    }
}
