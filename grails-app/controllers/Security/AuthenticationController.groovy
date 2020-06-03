package Security

import icbs.admin.UserMaster
import icbs.admin.UserSession

class AuthenticationController {

    def login() { 
        render(view:'/layouts/login')
    }
    def logout() {
        println("========= userLogout =============")
        println("params: "+params)
        
        def userInstance = UserMaster.get(params?.id)
        def userSessionInstance = UserSession.findByUserAndLogout(userInstance, null)
        userSessionInstance.logout = new Date()
        userSessionInstance.save(flush:true)
        session.user = null
        render(view:'/layouts/login')
    }
}
