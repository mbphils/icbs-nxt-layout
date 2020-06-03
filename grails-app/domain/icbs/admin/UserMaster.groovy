package icbs.admin
import icbs.admin.Branch

class UserMaster {
    Branch branch
    String userName
    String password
    String confirm
    String lastName
    String firstName
    Date birthDate
    Date createdDate
    Date userAccessExpiryDate
    Date userPasswordExpiryDate
    
    static constraints = {
        branch nullable:false
        userName nullable:true
        lastName nullable:true
        firstName nullable:true
        birthDate nullable:true
        createdDate nullable:true
        userAccessExpiryDate nullable:true
        userPasswordExpiryDate nullable:true
        password nullable:true
        confirm nullable: false, validator: { val, object ->
            if ((val != object.password)) {
                return 'passwordMismatch'
            }
            return true
        }
    }
    
    static mapping = {
    	id sqlType:'int', generator:'increment'
        branch sqlType:'int'
    }
}
