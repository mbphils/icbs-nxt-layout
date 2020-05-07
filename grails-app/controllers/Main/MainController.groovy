package Main

class MainController {

//    def index() { 
//    
//    }
    
    def forms(){
        render(view:'/Form/forms')
    }
    def loginFunction(){
        println("params:" + params)
       if(params.username == 'admin' && params.password == 'admin'){
           render(view:'/home/landing')
       }else{
           //ERROR
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
