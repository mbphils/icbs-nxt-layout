package Main

import icbs.admin.UserSession
import icbs.admin.UserMaster
import icbs.admin.Branch

class MainController {

//    def index() { 
//    
//    }
    
    def forms(){
        render(view:'/Form/forms')
    }
    
    def loginFunction() {
        println("========= userLogin =============")
        println("params: "+params)
 
            def password = params.password.encodeAsMD5()
            def userDetails = UserMaster.findByUserNameAndPassword(params.username, password)
            if (userDetails) {
                session.user = userDetails
                def loginsession = new UserSession(login: new Date(), user: userDetails, branch: Branch.get(userDetails.branch.id))
                loginsession.save(flush:true)
                render(view:'/home/landing')
            } else {
                flash.message = "Sorry, Username or Password is invalid."
                render(view:'/layouts/login')
            } 
    }
    
    def error404(){
        render(view:'/error/404')
    }
    def error500(){
        render(view:'/error/500')
    }
    def landing(){
        render(view:'/home/landing')
    }
    def index(){
        render(view:'/home/index')
    }
    def showDetails(){
        println("details goes here")
        render(view:'/details/showDetails')
    }
    def viewMoreInfo(){
        render(view:'/details/viewMoreInfo')
    }
    def cashDeposit(){
        render(view:'/tellering/cashDeposit')
    }
    def checkDeposit(){
        render(view:'/tellering/checkDeposit')
    }
}
