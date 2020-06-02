<%@ page import="icbs.admin.Branch" %>
<div class="card-body">
    <div class="row form-group">
        <label class="col-sm-3" for="bcode">Branch Code</label> 
        <div class="col-sm-9">
            <input class="form-control" type="text" id="bcode" name="branchCode"  required="true"></input>
        </div>
    </div>
    <div class="row form-group">
        <label class="col-sm-3" for="bname">Branch Name </label> 
        <div class="col-sm-9">
            <input class="form-control" type="text" id="bname" name="name""></input>
        </div>
    </div>
    <div class=" row form-group">
        <label class="col-sm-3" for="badd">Branch Address </label> 
        <div class="col-sm-9">
            </label> <input class="form-control" type="text" id="badd" name="branchAddress" ></input>
        </div>
    </div>
    <div class="row form-group">
        <label class="col-sm-3" for="bmanager">Branch Manager </label> 
        <div class="col-sm-9">
            <input class="form-control" type="text" id="bmanager" name="branchManager" ></input>
        </div>
    </div>
    <div class=" row form-group">
        <label class="col-sm-3" for="rdate">Branch Run Date</label> 
        <div class="col-sm-9">
            <input id="rdate" name="runDate" type="date" class="form-control" required="true"/>
        </div>
    </div>
    <div class="row form-group">
        <label class="col-sm-3" for="bosdate">Branch Operation Start Date</label> 
        <div class="col-sm-9">
            <input id="cbday" name="bosDate" type="date" class="form-control" required="true"/>
        </div>
    </div>
</div>
<!-- /.card-body -->