package Security

class AuthenticationController {

    def login() { 
        render(view:'/layouts/login')
    }
    def logout(){
        redirect(action:"login")
    }
}
