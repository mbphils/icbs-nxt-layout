<fieldset>
<div class="row form-group ${hasErrors(bean: userMasterInstance, field: 'name1', 'has-error')} required">
	<label class="control-label col-sm-3" for="name1">
		<g:message code="userMaster.name1.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
            <g:textField name="name1" maxlength="50" required="" value="${userMasterInstance?.name1}"class="form-control"/>
            <g:hasErrors bean="${userMasterInstance}" field="name1">
                <div class="controls">
                        <span class="help-block">
                            <g:eachError bean="${userMasterInstance}" field="name1">
                                <g:message error="${it}" /><br/>
                            </g:eachError>
                        </span>
                </div>
            </g:hasErrors>
        </div>             
</div>


<div class="row form-group ${hasErrors(bean: userMasterInstance, field: 'name2', 'has-error')} ">
	<label class="control-label col-sm-3" for="name2">
		<g:message code="userMaster.name2.label" default="Middle Name" />
	</label>
	<div class="col-sm-9"><g:textField name="name2" maxlength="50" value="${userMasterInstance?.name2}"class="form-control"/>

            <g:hasErrors bean="${userMasterInstance}" field="name2">
                <div class="controls">
                        <span class="help-block">
                            <g:eachError bean="${userMasterInstance}" field="name2">
                                <g:message error="${it}" /><br/>
                            </g:eachError>
                        </span>
                </div>
            </g:hasErrors>
        </div>             
</div>


<div class="row form-group ${hasErrors(bean: userMasterInstance, field: 'name3', 'has-error')} required">
	<label class="control-label col-sm-3" for="name3">
		<g:message code="userMaster.name3.label" default="Last Name" />
                <span class="required-indicator">*</span>
		
	</label>
	<div class="col-sm-9"><g:textField name="name3" maxlength="50" required="" value="${userMasterInstance?.name3}"class="form-control"/>

            <g:hasErrors bean="${userMasterInstance}" field="name3">
                <div class="controls">
                        <span class="help-block">
                            <g:eachError bean="${userMasterInstance}" field="name3">
                                <g:message error="${it}" /><br/>
                            </g:eachError>
                        </span>
                </div>
            </g:hasErrors>
        </div>             
</div>


<div class="row form-group ${hasErrors(bean: userMasterInstance, field: 'birthdate', 'has-error')} ">
	<label class="control-label col-sm-3" for="birthdate">
		<g:message code="userMaster.birthdate.label" default="Birthdate" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9"><input class="form-control" id="date" name="date" placeholder="MM/DD/YYYY" type="text"/>


            <g:hasErrors bean="${userMasterInstance}" field="birthdate">
                <div class="controls">
                        <span class="help-block">
                            <g:eachError bean="${userMasterInstance}" field="birthdate">
                                <g:message error="${it}" /><br/>
                            </g:eachError>
                        </span>
                </div>
            </g:hasErrors>
        </div>             
</div>


<div class="row form-group ${hasErrors(bean: userMasterInstance, field: 'gender', 'has-error')} required">
	<label class="control-label col-sm-3" for="gender">
		<g:message code="userMaster.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9"><g:select id="gender" name="gender.id" from="${icbs.lov.Gender.list()}" optionKey="id" optionValue="description" required="" value="${userMasterInstance?.gender?.id}"  class="many-to-one form-control"/>

            <g:hasErrors bean="${userMasterInstance}" field="gender">
                <div class="controls">
                        <span class="help-block">
                            <g:eachError bean="${userMasterInstance}" field="gender">
                                <g:message error="${it}" /><br/>
                            </g:eachError>
                        </span>
                </div>
            </g:hasErrors>
        </div>             
</div>


<div class="row form-group ${hasErrors(bean: userMasterInstance, field: 'address1', 'has-error')} required">
	<label class="control-label col-sm-3" for="address1">
		<g:message code="userMaster.address1.label" default="Address1" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9"><g:textField name="address1" maxlength="100" required="" value="${userMasterInstance?.address1}"class="form-control"/>

            <g:hasErrors bean="${userMasterInstance}" field="address1">
                <div class="controls">
                        <span class="help-block">
                            <g:eachError bean="${userMasterInstance}" field="address1">
                                <g:message error="${it}" /><br/>
                            </g:eachError>
                        </span>
                </div>
            </g:hasErrors>
        </div>             
</div>


<div class="row form-group ${hasErrors(bean: userMasterInstance, field: 'address2', 'has-error')} ">
	<label class="control-label col-sm-3" for="address2">
		<g:message code="userMaster.address2.label" default="Address2" />
		
	</label>
	<div class="col-sm-9"><g:textField name="address2" maxlength="100" value="${userMasterInstance?.address2}"class="form-control"/>

            <g:hasErrors bean="${userMasterInstance}" field="address2">
                <div class="controls">
                        <span class="help-block">
                            <g:eachError bean="${userMasterInstance}" field="address2">
                                <g:message error="${it}" /><br/>
                            </g:eachError>
                        </span>
                </div>
            </g:hasErrors>
        </div>             
</div>


<div class="row form-group ${hasErrors(bean: userMasterInstance, field: 'province', 'has-error')} ">
	<label class="control-label col-sm-3" for="province">
		<g:message code="userMaster.province.label" default="Province" />
		
	</label>
	<div class="col-sm-9"><g:select id="province" name="province.id" from="${icbs.lov.Lov.findAllByGroupCodeAndStatus("PROV",true)}" optionKey="id" optionValue="itemValue" value="${userMasterInstance?.province?.id}" class="many-to-one form-control" noSelection="['null': '']"/>

            <g:hasErrors bean="${userMasterInstance}" field="province">
                <div class="controls">
                        <span class="help-block">
                            <g:eachError bean="${userMasterInstance}" field="province">
                                <g:message error="${it}" /><br/>
                            </g:eachError>
                        </span>
                </div>
            </g:hasErrors>
        </div>             
</div>


<div class="row form-group ${hasErrors(bean: userMasterInstance, field: 'zipCode', 'has-error')} required">
	<label class="control-label col-sm-3" for="zipCode">
		<g:message code="userMaster.zipCode.label" default="Zip Code" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9"><g:textField name="zipCode" maxlength="10" required="" value="${userMasterInstance?.zipCode}"class="form-control"/>

            <g:hasErrors bean="${userMasterInstance}" field="zipCode">
                <div class="controls">
                        <span class="help-block">
                            <g:eachError bean="${userMasterInstance}" field="zipCode">
                                <g:message error="${it}" /><br/>
                            </g:eachError>
                        </span>
                </div>
            </g:hasErrors>
        </div>             
</div>


<div class="row form-group ${hasErrors(bean: userMasterInstance, field: 'email', 'has-error')} required">
	<label class="control-label col-sm-3" for="email">
		<g:message code="userMaster.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9"><g:textField name="email" maxlength="100" required="" value="${userMasterInstance?.email}"class="form-control"/>

            <g:hasErrors bean="${userMasterInstance}" field="email">
                <div class="controls">
                        <span class="help-block">
                            <g:eachError bean="${userMasterInstance}" field="email">
                                <g:message error="${it}" /><br/>
                            </g:eachError>
                        </span>
                </div>
            </g:hasErrors>
        </div>             
</div>


<div class="row form-group ${hasErrors(bean: userMasterInstance, field: 'contact', 'has-error')} required">
	<label class="control-label col-sm-3" for="contact">
		<g:message code="userMaster.contact.label" default="Contact" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9"><g:textField name="contact" maxlength="30" required="" value="${userMasterInstance?.contact}"class="form-control"/>

            <g:hasErrors bean="${userMasterInstance}" field="contact">
                <div class="controls">
                        <span class="help-block">
                            <g:eachError bean="${userMasterInstance}" field="contact">
                                <g:message error="${it}" /><br/>
                            </g:eachError>
                        </span>
                </div>
            </g:hasErrors>
        </div>             
</div>


<div class="row form-group ${hasErrors(bean: userMasterInstance, field: 'dateHired', 'has-error')} ">
	<label class="control-label col-sm-3" for="dateHired">
		<g:message code="userMaster.dateHired.label" default="Date Hired" />
	</label>
	<div class="col-sm-9"><input class="form-control" id="date" name="date" placeholder="MM/DD/YYYY" type="text"/>


            <g:hasErrors bean="${userMasterInstance}" field="dateHired">
                <div class="controls">
                        <span class="help-block">
                            <g:eachError bean="${userMasterInstance}" field="dateHired">
                                <g:message error="${it}" /><br/>
                            </g:eachError>
                        </span>
                </div>
            </g:hasErrors>
        </div>             
</div>


<div class="row form-group ${hasErrors(bean: userMasterInstance, field: 'designation', 'has-error')} required">
	<label class="control-label col-sm-3" for="designation">
		<g:message code="userMaster.designation.label" default="Designation" />
	</label>
	<div class="col-sm-9"><g:select id="designation" name="designation.id" from="${icbs.lov.Designation.list()}" optionKey="id" optionValue="description" required="" value="${userMasterInstance?.designation?.id}"  class="many-to-one form-control"/>

            <g:hasErrors bean="${userMasterInstance}" field="designation">
                <div class="controls">
                        <span class="help-block">
                            <g:eachError bean="${userMasterInstance}" field="designation">
                                <g:message error="${it}" /><br/>
                            </g:eachError>
                        </span>
                </div>
            </g:hasErrors>
        </div>             
</div>
<div class="row form-group ${hasErrors(bean: userMasterInstance, field: 'employmentType', 'has-error')} required">
	<label class="control-label col-sm-3" for="employmentType">
		<g:message code="userMaster.employmentType.label" default="Employment Type" />
	</label>
	<div class="col-sm-9"><g:select id="employmentType" name="employmentType.id" required="" from="${icbs.lov.Lov.findAllByGroupCodeAndStatus("CET",true)}" optionKey="id" optionValue="itemValue" value="${userMasterInstance?.employmentType?.id}" class="many-to-one form-control"/>

            <g:hasErrors bean="${userMasterInstance}" field="employmentType">
                <div class="controls">
                        <span class="help-block">
                            <g:eachError bean="${userMasterInstance}" field="employmentType">
                                <g:message error="${it}" /><br/>
                            </g:eachError>
                        </span>
                </div>
            </g:hasErrors>
        </div>             
</div>
<div class="row form-group ${hasErrors(bean: userMasterInstance, field: 'expiryDate', 'has-error')} ">
	<label class="control-label col-sm-3" for="expiryDate">
		<g:message code="userMaster.expiryDate.label" default="Access Expiry Date" />
	</label>
	<div class="col-sm-9"><input class="form-control" id="date" name="date" placeholder="MM/DD/YYYY" type="text"/>


            <g:hasErrors bean="${userMasterInstance}" field="expiryDate">
                <div class="controls">
                        <span class="help-block">
                            <g:eachError bean="${userMasterInstance}" field="expiryDate">
                                <g:message error="${it}" /><br/>
                            </g:eachError>
                        </span>
                </div>
            </g:hasErrors>
        </div>             
</div>
</fieldset>

<br/><br/>
<fieldset>
<legend>Account</legend>
<div class="row form-group ${hasErrors(bean: userMasterInstance, field: 'username', 'has-error')} required">
    <label class="control-label col-sm-3" for="username">
        <g:message code="userMaster.username.label" default="Username" />
        <span class="required-indicator">*</span>
    </label>

    <g:if test="${mode=='edit'}">
        <div class="col-sm-9"><g:textField name="username" maxlength="20" required="" value="${userMasterInstance?.username}"class="form-control" disabled="" />
    </g:if>
    <g:else>
        <div class="col-sm-9"><g:textField name="username" maxlength="20" required="" value="${userMasterInstance?.username}"class="form-control" />
    </g:else>

            <g:hasErrors bean="${userMasterInstance}" field="username">
                <div class="controls">
                        <span class="help-block">
                            <g:eachError bean="${userMasterInstance}" field="username">
                                <g:message error="${it}" /><br/>
                            </g:eachError>
                        </span>
                </div>
            </g:hasErrors>
        </div>             
</div>

<g:if test="${mode=='create'}">
<div class="row form-group ${hasErrors(bean: userMasterInstance, field: 'password', 'has-error')} required">
    <label class="control-label col-sm-3" for="password">
        <g:message code="userMaster.password.label" default="Password" />
        <span class="required-indicator">*</span>
    </label>

    <div class="col-sm-9">
        <g:hiddenField id="newPasswordHiddenField" name="password" value="" />
        <g:textField id="newPasswordTextField" name="p" required="" disabled="disabled" value="" size="30" />
        <button type="button" id="generate-password" class="btn btn-primary">Generate Password</button>
        <g:hasErrors bean="${userMasterInstance}" field="password">
            <div class="controls">
                    <span class="help-block">
                        <g:eachError bean="${userMasterInstance}" field="password">
                            <g:message error="${it}" /><br/>
                        </g:eachError>
                    </span>
            </div>
        </g:hasErrors>
    </div>             
</div>

</g:if>

<div class="row form-group ${hasErrors(bean: userMasterInstance, field: 'expiryDate', 'has-error')} required">
    <label class="control-label col-sm-3" for="expiryDate">
        <g:message code="userMaster.expiryDate.label" default="Expiry Date" />
    </label>

    <g:if test="${mode=='create'}">      
        <div class="col-sm-9"><input class="form-control" id="date" name="date" placeholder="MM/DD/YYYY" type="text"/>

    </g:if>
    <g:else>
        <div class="col-sm-9"><input class="form-control" id="date" name="date" placeholder="MM/DD/YYYY" type="text"/>

    </g:else>

            <g:hasErrors bean="${userMasterInstance}" field="expiryDate">
                <div class="controls">
                        <span class="help-block">
                            <g:eachError bean="${userMasterInstance}" field="expiryDate">
                                <g:message error="${it}" /><br/>
                            </g:eachError>
                        </span>
                </div>
            </g:hasErrors>
        </div>             
</div>
</fieldset>