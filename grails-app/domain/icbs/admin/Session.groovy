package icbs.admin

import icbs.admin.UserMaster

class Session {

    Date logout
    Date login
    UserMaster user

    static constraints = {
        logout nullable: true
        login nullable: true
        user nullable: true
    }
    
    static mapping = {
        id sqlType: "int", generator: "increment"
    }
}
