<%@ page import="icbs.admin.Branch" %>
<div class="card-body">
        <g:hiddenField name="brnchid" value="${brnch.id}" />
    <div class="row form-group" ${hasErrors(bean: currencyInstance, field: 'code', 'has-error')}>
        <label class="col-sm-3" for="bcode">Branch Code :</label> 
        <div class="col-sm-9">
            <input class="form-control" type="text" id="bcode" name="branchcode" value="${brnch.code}" required="true"></input>
        </div>
    </div>
    <div class="row form-group">
        <label class="col-sm-3" for="bname">Branch Name : </label> 
        <div class="col-sm-9">
            <input class="form-control" type="text" id="bname" name="name" value="${brnch.name}"></input>
        </div>
    </div>
    <div class=" row form-group">
        <label class="col-sm-3" for="badd">Branch Address : </label> 
        <div class="col-sm-9">
            </label> <input class="form-control" type="text" id="badd" name="address" value="${brnch.address}"></input>
        </div>
    </div>
    <div class="row form-group">
        <label class="col-sm-3" for="bmanager">Branch Manager : </label> 
        <div class="col-sm-9">
            <input class="form-control" type="text" id="bmanager" name="branchManager" value="${brnch.branchManager}"></input>
        </div>
    </div>
    <g:if test="${brnch.branchOpsStartDate}">
        
    </g:if>
    <g:else>
    <div class=" row form-group">
        <label class="col-sm-3" for="rdate">Branch Run Date :</label> 
        <div class="col-sm-9">
            <input id="rdate" name="runDate" type="date" class="form-control" required="true"/>
        </div>
    </div>
    </g:else>
    <g:if test="${brnch.branchOpsStartDate}">
        
    </g:if>
    <g:else>
        <div class="row form-group">
            <label class="col-sm-3" for="bosdate">Branch Operation Start Date :</label> 
            <div class="col-sm-9">
                <input id="cbday" name="bosDate" type="date" class="form-control" required="true"/>
            </div>
        </div>
    </g:else>

</div>
<!-- /.card-body -->