package Admin


import java.util.Date;
import icbs.admin.Branch;
import java.text.ParseException;
import grails.gorm.transactions.*

import org.springframework.transaction.annotation.* // *Ace* (got from the net)

@Transactional

class BranchController {
    
    def showBranch() { 
    
    }
    
    def saveBranchDetails() {
        println("saveNewBranch")
        println("params: "+params)
        
        def branchDetails = new Branch(code: params.branchcode, name: params.name,
            address: params.branchaddress, branchManager: params.branchmanager, runDate: params.rundate, branchOpsStartDate: params.bosdate)

        branchDetails.save(flush:true)
        redirect(action: "showBranch")
    }
    
}
