package icbs.admin

//import icbs.admin.Module

class TreeView {

    //Module module
    String description
    int level
    int parent
    
    static constraints = {
        //module nullable: true
        description nullable:true
        level nullable:true
        parent nullable:true
    }
    
    static mapping = {
    	id sqlType:'int', generator:'increment'
    }

}

/* insert script
 *      insert into Tree_View values (1,0,'Customer',1,1)
 *      insert into Tree_View values (2,0,'Create Customer Individual',2,1)
 *      insert into Tree_View values (3,0,'Create Customer Corporation',2,1)
 *      insert into Tree_View values (4,0,'Update Status',2,1)
 *      insert into Tree_View values (5,0,'Pending',3,4)
 *      insert into Tree_View values (6,0,'Active',3,4)
 *      insert into Tree_View values (7,0,'Locked',3,4)
 *      insert into Tree_View values (8,0,'Cancelled',3,4)
 *      insert into Tree_View values (9,0,'Deposit',1,9)
*/
