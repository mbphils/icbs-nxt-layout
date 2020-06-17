package icbs.admin
import icbs.admin.Branch

class UserMaster {
    Branch branch
    String fileName
    byte[] userPhoto
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
        fileName(nullable:true)
        userPhoto(nullable:true, maxSize:1073741824)
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
