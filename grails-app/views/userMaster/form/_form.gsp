<div class="tab-content" id="custom-content-below-tabContent">
    <div class="card-body">
        <p class="info">
            Complete the form below to create a new user!
        </p>
        <g:if test="${flash.message}">
            <div class="alert alert-danger">Sorry username and password is invalid.</div>
        </g:if>
        <div class="row form-group">
            <label class="col-sm-3" for="uname">User Name </label> 
            <div class="col-sm-9">
                <input class="form-control" type="text" id="uname" placeholder="User Name" name="userName" required="true"></input>
            </div>
        </div>
        <div class="row form-group">
            <label class="col-sm-3" for="pword">Password </label> 
            <div class="col-sm-9">
                <input class="form-control" type="password" id="pword" placeholder="Password" name="password" required="true"></input>
            </div>
        </div>
        <div class="row form-group">
            <label class="col-sm-3" for="cpword">Confirm Password </label> 
            <div class="col-sm-9">
                <input class="form-control" type="password" id="cpword" placeholder="Confirm Password" name="cpassword" required="true"></input>
            </div>
        </div>
        <div class="row form-group">
            <label class="col-sm-3" for="fname">First Name </label> 
            <div class="col-sm-9">
                <input class="form-control" type="text" id="fname" placeholder="First Name" name="firstName" required="true"></input>
            </div>
        </div>
        <div class="row form-group">
            <label class="col-sm-3" for="lname">Last Name </label> 
            <div class="col-sm-9">
                <input class="form-control" type="text" id="lname" placeholder="Last Name" name="lastName" required="true"></input>
            </div>
        </div>
        <div class="row form-group">
            <label class="col-sm-3" for="birthday">Birth Date</label> 
            <div class="col-sm-9">
                <input data-date-format="DD MMMM YYYY" required="true" id="birthday" type="date" name="birthDate" class="form-control"/>
            </div>
        </div>
        <div class="row form-group">
            <label class="col-sm-3" for="uaedate">Access Expiry Date</label> 
            <div class="col-sm-9">
                <input data-date-format="DD MMMM YYYY" required="true" id="uaedate" type="date" name="userAccessExpiryDate" class="form-control"/>
            </div>
        </div>
        <div class="row form-group">
            <label class="col-sm-3" for="upedate">Password Expiry Date</label> 
            <div class="col-sm-9">
                <input data-date-format="DD MMMM YYYY" required="true" id="upedate" type="date" name="userPasswordExpiryDate" class="form-control"/>
            </div>
        </div>
        <div class="row form-group">
                <label class="col-sm-3" for="branchname">Branch </label> 
                <div class="col-sm-9">
                    <g:select id="address" name="address.id" from="${icbs.admin.Branch.list()}" optionKey="id" 
                        optionValue="name" required="" id="branchname" value="" class="many-to-one form-control"/>
                </div>
        </div>
        <div class="row form-group">
            <label class="col-sm-3" for="file">Photo </label>
            <div class="col-sm-9">
                <input id="file" class="form-control" type="file" name="file" />
            </div>
        </div>
        <!--<div class="row form-group">
                <label class="col-sm-3" for="branchname">Tree View Sample </label> 
                <div class="col-sm-9">
                    <g:select id="address" name="address.id" from="${icbs.admin.TreeView.list()}" optionKey="id" 
                        optionValue="description" required="" id="branchname" value="" class="many-to-one form-control"/>
                </div>
        </div>-->
    </div>
</div>