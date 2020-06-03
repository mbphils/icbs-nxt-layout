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
    
    def index(){
        def b = Branch.createCriteria()
        def branch = b.list {
            order("id", "asc")
        }
        
        [branchlist:branch]
    }
    
    def create(){
        respond new Branch(params)
    }
    
    def saveBranchDetails() {
        println("saveNewBranch")
        println("params: "+params)
        
        def branchDetails = new Branch()
        SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd");
        Date dt = sdformat.parse(params.runDate)
        Date da = sdformat.parse(params.bosDate)
        branchDetails.runDate = dt
        branchDetails.branchOpsStartDate = da
        branchDetails.code = params.branchCode
        branchDetails.name = params.name
        branchDetails.address = params.branchAddress
        branchDetails.branchManager = params.branchManager

        branchDetails.save(flush:true)
        redirect(action: "index")
    }
    
    def edit() {
        
        println("params : "+params)
        
        def branchDetails = Branch.get(params.brnchEdit)
        [brnch:branchDetails]
    }
    
    def editBranchDetails() {
        println("editCurrentBranch")
        println("params: "+params)

        def branchDetails = Branch.get(params.brnchid)
        SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd");
        branchDetails.name = params.name
        branchDetails.address = params.address
        branchDetails.branchManager = params.branchManager

        branchDetails.save(flush:true)
        redirect(action: "show", id: branchDetails.id, params: [id: branchDetails.id])

    }
    def show(Branch branchDetails){
        println params
        def brnchInstance = Branch.get(params.id)
        [brnchInstance:brnchInstance]
    }
    def deleteBranchDetails() {

        println("deleteSelectedBranch")
        println("params: "+params)
        
        def branchDetails = Branch.get(params.brnchDel)
        
        branchDetails.delete(flush:true)
        redirect(action: "index")
        
    }

}
