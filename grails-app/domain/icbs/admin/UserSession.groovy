package icbs.admin

import icbs.admin.UserMaster

class UserSession {

    Date logout
    Date login
    UserMaster user
    UserMaster branch

    static constraints = {
        logout nullable: true
        login nullable: true
        user nullable: true
        branch nullable: true
    }
    
    static mapping = {
        id sqlType: "int", generator: "increment"
    }
}
