package Security

import icbs.admin.UserMaster
import icbs.admin.UserSession
import icbs.admin.Branch

class AuthenticationController {
    
    def loginFunction() {
        println("========= userLogin =============")
        println("params: "+params)
 
        def password = params.password.encodeAsMD5()
        def userDetails = UserMaster.findByUserNameAndPassword(params.username, password)
        def userLogInst = UserSession.findByUserAndLogout(userDetails, null)
        if (userDetails) {
            if (userLogInst) {
                println("Hey Already log into other terminal")
                flash.message = "Sorry, you are already logged into another terminal."
                render(view:'/layouts/login')
            } else {
                println("Successful Login")
                session.user = userDetails
                def loginsession = new UserSession(login: new Date(), user: userDetails, branch: Branch.get(userDetails.branch.id))
                loginsession.save(flush: true, failOnError: true)
                render(view:'/home/landing')
            }
        } else {
            println("Sorry, Username or Password is invalid.")
            render(view:'/layouts/login')
            flash.error = "Sorry, Username or Password is invalid."
        }
    }
    
    def login() { 
        render(view:'/layouts/login')
    }

    def logout() {
        println("========= userLogout =============")
        println("params: "+params)
        println("Successful Logout")
        def userInstance = UserMaster.get(params?.id)
        def userSessionInstance = UserSession.findByUserAndLogout(userInstance, null)
        userSessionInstance.logout = new Date()
        userSessionInstance.save(flush:true)
        session.user = null
        render(view:'/layouts/login')
    }
}
