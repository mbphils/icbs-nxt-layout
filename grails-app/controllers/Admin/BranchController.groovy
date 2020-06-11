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
   
    def create(){
        respond new Branch(params)
    }
    
    def index(){

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
        branchDetails.name = params.branchName
        branchDetails.code = params.branchCode
        branchDetails.address = params.branchAddress
        branchDetails.branchManager = params.branchManager

        branchDetails.save(flush:true)
        redirect(action: "index")
    }
    
    def editIndex() {
        def b = Branch.createCriteria()
        def branch = b.list {
            order("id", "asc")
        }
        [branchlist:branch]
    }
    
    def edit() {
        def branchInstance = Branch.get(params.id)
        [branchInstance:branchInstance]
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
        branchDetails.name = params.name
        branchDetails.address = params.address
        branchDetails.branchManager = params.branchManager

        branchDetails.save(flush:true)
        redirect(action: "editIndex", id: branchDetails.id, params: [id: branchDetails.id])

    }
    def show(Branch branchDetails){
        def b = Branch.createCriteria()
        def branch = b.list {
            order("id", "asc")
        }
        
        [branchlist:branch]
    }
    def deleteBranchDetails() {

        println("deleteSelectedBranch")
        println("params: "+params)
        
        def branchDetails = Branch.get(params.brnchDel)
        
        branchDetails.delete(flush:true)
        redirect(action: "index")
        
    }

}
