package Admin

import java.text.ParseException;
import java.util.Date;
import icbs.admin.Branch;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
    
    def editBranchDetails() {
        println("editCurrentBranch")
        println("params: "+params)

        def branchDetails = Branch.get(params.brnchid)
        SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd");
        Date dt = sdformat.parse(params.runDate)
        Date da = sdformat.parse(params.bosDate)
        branchDetails.runDate = dt
        branchDetails.branchOpsStartDate = da
        branchDetails.code = params.branchcode
        branchDetails.name = params.name
        branchDetails.address = params.address
        branchDetails.branchManager = params.branchManager

        branchDetails.save(flush:true)
        redirect(action: "showBranch")

    }
    
    def deleteBranchDetails() {

        println("deleteSelectedBranch")
        println("params: "+params)
        
        def branchDetails = Branch.get(params.brnchid)
        
        branchDetails.delete(flush:true)
        redirect(action: "showBranch")
        
    }

}
