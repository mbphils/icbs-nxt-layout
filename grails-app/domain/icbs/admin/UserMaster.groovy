package icbs.admin
import icbs.admin.Branch

class UserMaster {
    Branch branch
    String userName
    String password
    String lastName
    String firstName
    
    Date birthDate
    Date createdDate
    Date userAccessExpiryDate
    Date userPasswordExpiryDate
    
    static constraints = {
        branch nullable:true
        userName nullable:true
        password nullable:true
        lastName nullable:true
        firstName nullable:true
    
        birthDate nullable:true
        createdDate nullable:true
        userAccessExpiryDate nullable:true
        userPasswordExpiryDate nullable:true
    }
    
    static mapping = {
    	id sqlType:'int', generator:'increment'
    }
}
