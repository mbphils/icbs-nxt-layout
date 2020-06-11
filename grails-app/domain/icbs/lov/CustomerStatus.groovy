package icbs.lov

class CustomerStatus {

    String code
    String description
    String shortDescription
    boolean status

    static constraints = {
    	code maxSize:10, unique:true
    	description maxSize:75, unique:true
        shortDescription nullable:true, maxSize:10
    }

    static mapping = {
    	id sqlType:'smallint'
    }

    String toString() {
        return description
    }

    String getCodeDescription() {
        "${code} - ${description}"
    }
}
/* insert script
 *      insert into Customer_Status values (1,0,'001','Pending','PEND',true)
 *      insert into Customer_Status values (2,0,'002','Active','ACTV',true)
 *      insert into Customer_Status values (3,0,'003','Locked','LOCK',true)
 *      insert into Customer_Status values (4,0,'004','Escrow','ESCR',true)
 *      insert into Customer_Status values (5,0,'999','Cancelled','CNCL',true)
*/
