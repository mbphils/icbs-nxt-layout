<div class="tab-content" id="custom-content-below-tabContent">
    <g:hiddenField name="usid" value="${us.id}" />
    <div class="card-body">
        <div class="row form-group">
            <label class="col-sm-3" for="uname">User Name : </label> 
            <div class="col-sm-9">
                <input class="form-control" type="text" id="uname" placeholder="User Name" name="userName" required="true" value="${us.userName}"></input>
            </div>
        </div>
        <div class="row form-group">
            <label class="col-sm-3" for="pword">Password : </label> 
            <div class="col-sm-9">
                <input class="form-control" type="password" id="pword" placeholder="Password" name="password" required="true" value="${us.password}"></input>
            </div>
        </div>
        <div class="row form-group">
            <label class="col-sm-3" for="fname">First Name : </label> 
            <div class="col-sm-9">
                <input class="form-control" type="text" id="fname" placeholder="First Name" name="firstName" required="true" value="${us.firstName}"></input>
            </div>
        </div>
        <div class="row form-group">
            <label class="col-sm-3" for="lname">Last Name : </label> 
            <div class="col-sm-9">
                <input class="form-control" type="text" id="lname" placeholder="Last Name" name="lastName" required="true" value="${us.lastName}"></input>
            </div>
        </div>
        <div class="row form-group">
            <label class="col-sm-3" for="birthday">Birth Date :</label> 
            <div class="col-sm-9">
                <input data-date-format="DD MMMM YYYY" required="true" id="birthday" type="date" name="birthDate" class="form-control" value="${us.birthDate}"/>
            </div>
        </div>
        <div class="row form-group">
            <label class="col-sm-3" for="uaedate">User Access Expiry Date :</label> 
            <div class="col-sm-9">
                <input data-date-format="DD MMMM YYYY" required="true" id="uaedate" type="date" name="userAccessExpiryDate" class="form-control" value="${us.userAccessExpiryDate}"/>
            </div>
        </div>
        <div class="row form-group">
            <label class="col-sm-3" for="upedate">User Password Expiry Date :</label> 
            <div class="col-sm-9">
                <input data-date-format="DD MMMM YYYY" required="true" id="upedate" type="date" name="userPasswordExpiryDate" class="form-control" value="${us.userPasswordExpiryDate}"/>
            </div>
        </div>
        <div class="row form-group">
                <label class="col-sm-3" for="branchname">Branch :</label> 
                <div class="col-sm-9">
                    <g:select id="address" name="address.id" from="${icbs.admin.Branch.findAllByCode('001')}" optionKey="id" 
                        optionValue="address" required=""  id="branchname" value="${us.branch.id}" class="many-to-one form-control"/>
                </div>
        </div>
    </div>
    <div class="tab-pane fade" id="custom-content-below-profile" role="tabpanel" aria-labelledby="custom-content-below-profile-tab">
        <legend>Add User Role</legend>

        Mauris tincidunt mi at erat gravida, eget tristique urna bibendum. Mauris pharetra purus ut ligula tempor, et vulputate metus facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Maecenas sollicitudin, nisi a luctus interdum, nisl ligula placerat mi, quis posuere purus ligula eu lectus. Donec nunc tellus, elementum sit amet ultricies at, posuere nec nunc. Nunc euismod pellentesque diam. 
    </div>
</div>