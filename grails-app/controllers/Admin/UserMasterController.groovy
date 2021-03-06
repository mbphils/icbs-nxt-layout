package Admin

import groovy.sql.Sql
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import icbs.admin.UserMaster
import icbs.admin.TreeView
import java.text.ParseException;
import grails.gorm.transactions.*
import icbs.admin.Branch
import org.springframework.transaction.annotation.* // *Ace* (got from the net)
import org.springframework.web.multipart.MultipartHttpServletRequest

@Transactional

class UserMasterController {
    def dataSource
    
    def index() { 
        
    }
    
    def show(UserMaster userDetails){
        def u = UserMaster.createCriteria()
        def user = u.list {
            order("id", "asc")
        }
        [userlist:user]
    }
    
    def viewProductImage(){
        def sql = new Sql(dataSource)
        def queryall1 = "select user_photo as ph from archive_photo where id = " + params.id
        def resultqueryall1 = sql.rows(queryall1)
        def userPhoto
        for(r in resultqueryall1) {
            userPhoto = r.ph
        }
        println(params)
        def photo = UserMaster.get(params.id)
        response.outputStream << userPhoto
        response.outputStream.flush()
    }
    
    def viewMoreInfo(){
        println(params)
        def userInstance = UserMaster.get(params.id)
        [userInstance:userInstance]
    }

    def create(){

    }  
    
    def saveUserDetails() {
        println("saveNewUser")
        println("params: "+params)

        def file = request.getFile('file')
        println("params: " +file)
        def userDetails = new UserMaster()
        SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd");
        Date dt = sdformat.parse(params.birthDate)
        Date da = sdformat.parse(params.userAccessExpiryDate)
        Date du = sdformat.parse(params.userPasswordExpiryDate)
        userDetails.birthDate = dt
        userDetails.userAccessExpiryDate = da
        userDetails.userPasswordExpiryDate = du
        userDetails.userPhoto = file.getBytes()
        userDetails.fileName = file.getOriginalFilename()
        userDetails.userName = params.userName
        userDetails.lastName = params.lastName
        userDetails.firstName = params.firstName
        userDetails.password = params.password.encodeAsMD5()
        userDetails.confirm = params.cpassword.encodeAsMD5()
        userDetails.createdDate = new Date()
        userDetails.branch = Branch.get(params.address.id.toInteger())
        userDetails.save(flush:true)
        redirect(action: "show")

    }
   
    def editIndex() {
        def u = UserMaster.createCriteria()
        def user = u.list {
            order("id", "asc")
        }
        [userlist:user]
    }
    
    def edit() {
        def userInstance = UserMaster.get(params.id)
        [userInstance:userInstance]
    }
    
    def editUserDetails() {
        println("editCurrentCustomer")
        println("params: "+params)
                    
        def file = request.getFile('file')
        def userDetails = UserMaster.get(params.usid)
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
        userDetails.userPhoto = file.getBytes()
        userDetails.fileName = file.getOriginalFilename()
        userDetails.branch = Branch.get(params.address.id.toInteger())

        userDetails.save(flush:true)
        redirect(action: "show", id: userDetails.id, params: [id: userDetails.id])
    }
    
    def deleteUserDetails() {
        println("deleteSelectedBranch")
        println("params: "+params)
        
        def userDetails = UserMaster.get(params.userDel)
        
        userDetails.delete(flush:true)
        redirect(action: "index")
    }
}


