<%@ page import="icbs.admin.Branch" %>
<div class="card-body">
    <g:hiddenField name="brnchid" value="${branchInstance.id}" />
    <div class="row form-group">
        <label class="col-sm-3" for="bname">Branch Name </label> 
        <div class="col-sm-9">
            <input class="form-control" type="text" id="bname" name="name" value="${branchInstance.name}"></input>
        </div>
    </div>
    <div class=" row form-group">
        <label class="col-sm-3" for="badd">Branch Address </label> 
        <div class="col-sm-9">
            </label> <input class="form-control" type="text" id="badd" name="address" value="${branchInstance.address}"></input>
        </div>
    </div>
    <div class="row form-group">
        <label class="col-sm-3" for="bmanager">Branch Manager </label> 
        <div class="col-sm-9">
            <input class="form-control" type="text" id="bmanager" name="branchManager" value="${branchInstance.branchManager}"></input>
        </div>
    </div>
    <g:if test="${branchInstance.branchOpsStartDate}">
        
    </g:if>
    <g:else>
    <div class=" row form-group">
        <label class="col-sm-3" for="rdate">Branch Run Date</label> 
        <div class="col-sm-9">
            <input id="rdate" name="runDate" type="date" class="form-control" required="true"/>
        </div>
    </div>
    </g:else>
    <g:if test="${branchInstance.branchOpsStartDate}">
        
    </g:if>
    <g:else>
        <div class="row form-group">
            <label class="col-sm-3" for="bosdate">Branch Operation Start Date</label> 
            <div class="col-sm-9">
                <input id="cbday" name="bosDate" type="date" class="form-control" required="true"/>
            </div>
        </div>
    </g:else>

</div>
<!-- /.card-body -->