package Admin


import java.util.Date;
import icbs.admin.Branch;
import java.text.ParseException;
import grails.gorm.transactions.*

import org.springframework.transaction.annotation.* // *Ace* (got from the net)

@Transactional

class BranchController {
    
    def showBranch() {   
        def b = Branch.createCriteria()
        def branch = b.list {
            order("id", "asc")
        }
        
        [branchlist:branch]
    }
    
    def saveBranchDetails() {
        println("saveNewBranch")
        println("params: "+params)
        
        def branchDetails = new Branch(code: params.branchcode, name: params.name,
            address: params.branchaddress, branchManager: params.branchmanager, runDate: new Date(), branchOpsStartDate: new Date())

        branchDetails.save(flush:true)
        redirect(action: "showBranch")
    }
    
    def displayBranch(){
        
        def b = Branch.createCriteria()
        def branch = b.list {
            order("id", "asc")
        }
        
        [branchlist:branch]
    }
    
    def editBranch() {
        
        println("params : "+params)
        
        def branchDetails = Branch.get(params.id)
        [brnch:branchDetails]
    }
    
    /* def editBranchDetails() {
        println("editCurrentCustomer")
        println("params: "+params)
        
        def password = params.password.encodeAsMD5()
        def userDetails = UserMaster.findByUserNameAndPassword(params.username, password)
        if (userDetails) {
            def customerDetails = Customerr.get(params.custid)
            SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd");
            Date dt = sdformat.parse(params.birthDate);
            customerDetails.birthDate = dt
            customerDetails.name = params.customername
            customerDetails.age = params.customerage.toInteger()
            customerDetails.address = params.customeraddress
            customerDetails.emailAddress = params.customeremailadd
            customerDetails.gender = ListOfValues.get(params.gender.id.toInteger())
            customerDetails.country = ListOfValues.get(params.country.id.toInteger())
            customerDetails.maritalStatus = ListOfValues.get(params.maritalStatus.id.toInteger())
            customerDetails.userupdateddate = new Date()

            customerDetails.save(flush:true)
            
        } else{
            flash.message = "Sorry, Username or Password is invalid."
            redirect(action: "login", controller: "User2")
        }
    }
    */
}
