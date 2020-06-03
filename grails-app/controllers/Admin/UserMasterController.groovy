package Admin

import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import icbs.admin.UserMaster
import java.text.ParseException;
import grails.gorm.transactions.*
import icbs.admin.Branch
import org.springframework.transaction.annotation.* // *Ace* (got from the net)

@Transactional

class UserMasterController {

    def index() { 
        def u = UserMaster.createCriteria()
        def user = u.list {
            order("id", "asc")
        }

        [userlist:user]
    }
    
    def saveUserDetails() {
        println("saveNewUser")
        println("params: "+params)

        def userDetails = new UserMaster()
        if (userDetails) {
        SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd");
        Date dt = sdformat.parse(params.birthDate)
        Date da = sdformat.parse(params.userAccessExpiryDate)
        Date du = sdformat.parse(params.userPasswordExpiryDate)
        userDetails.birthDate = dt
        userDetails.userAccessExpiryDate = da
        userDetails.userPasswordExpiryDate = du
        userDetails.userName = params.userName
        userDetails.lastName = params.lastName
        userDetails.firstName = params.firstName
        userDetails.password = params.password.encodeAsMD5()
        userDetails.confirm = params.cpassword.encodeAsMD5()
        userDetails.createdDate = new Date()
        userDetails.branch = Branch.get(params.address.id.toInteger())

        userDetails.save(flush:true)
        redirect(action: "index")
        }
        else {
            render(view:'/error/404')
        }
        
    }
    
    def create(){

    }
    
    def edit() {
        def userDetails = UserMaster.get(params.userEdit)
        [us:userDetails]
    }
    
    def editUserDetails() {
        println("editCurrentCustomer")
        println("params: "+params)
                    
        def userDetails = UserMaster.get(params.usid)
        SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd");
        Date dt = sdformat.parse(params.birthDate);
        Date du = sdformat.parse(params.userAccessExpiryDate);
        Date dv = sdformat.parse(params.userPasswordExpiryDate); 
        userDetails.birthDate = dt
        userDetails.userAccessExpiryDate = du
        userDetails.userPasswordExpiryDate = dv
        userDetails.userName = params.userName
        userDetails.password = params.password.encodeAsMD5()
        userDetails.firstName = params.firstName
        userDetails.lastName = params.lastName
        
        userDetails.save(flush:true)
        redirect(action: "index")
    }
    def show(UserMaster userDetails){
        println params
        def userInstance = UserMaster.get(params.id)
        
        [userInstance:userInstance]
    }
    
    def deleteUserDetails() {
        println("deleteSelectedBranch")
        println("params: "+params)
        
        def userDetails = UserMaster.get(params.userDel)
        
        userDetails.delete(flush:true)
        redirect(action: "index")
    }
    def viewMoreInfo(){
        println(params)
        def userInstance = UserMaster.get(params.id)
        
        [userInstance:userInstance]
    }
}
