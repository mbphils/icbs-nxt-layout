package icbs.lov

class CustomerType {
    
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
 *      insert into customer_type values (1,0,'001','Individual','INDV',true)
 *      insert into customer_type values (2,0,'002','Partnership','PART',true)
 *      insert into customer_type values (3,0,'003','Corporation','CORP',true)
 *      insert into customer_type values (4,0,'004','Others','OTHR',true)
*/