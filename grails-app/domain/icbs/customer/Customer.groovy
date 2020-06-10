package icbs.customer
import icbs.admin.Branch
import icbs.admin.UserMaster
import icbs.lov.CustomerStatus
import icbs.lov.CustomerType

class Customer {
    
    CustomerType customerType
    String cid
    String displayName
    String name1  // last name or institution name
    String name2  // first name
    String name3  // middle name
    Date birthDate  // can also be registration date for institution
    String birthPlace
    byte[] customerPhoto
    byte[] customerSignature
    
    Branch branch
    UserMaster createdByUser
    UserMaster lastUpdatedByUser
    
    CustomerStatus status
    
    static constraints = {
        customerType nullable:true
        cid nullable:true
        displayName nullable:true
        name1  nullable:true
        name2  nullable:true
        name3  nullable:true
        birthDate  nullable:true
        birthPlace nullable:true
        customerPhoto nullable:true
        customerSignature nullable:true
        branch nullable:true
        createdByUser nullable:true
        lastUpdatedByUser nullable:true
        status nullable:true        
    }
    static mapping = {
    	id sqlType:'int', generator:'increment'
    }
    
    String toString() {       
        return cid + ' - ' + displayName
    }
    
}
