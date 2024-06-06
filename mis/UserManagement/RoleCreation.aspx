<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="RoleCreation.aspx.cs" Inherits="mis_UserManagement_RoleCreation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0"></h4>
                <div class="=page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>
                        <li class="breadcrumb-item">
                            <span>User Management</span>
                        </li>
                        <li class="breadcrumb-item">Role Creation</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">Role Creation / रोल का निर्माण</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Role Creation / रोल का निर्माण</legend>
                <div class="row align-items-end">
                    <div class="col-md-3 form-group">
                        <label>Select  User Level Name / उपयोगकर्ता स्तर का चयन करें<span style="color: red">*</span></label>
                        <select name="ctl00$ContentBody$ctl00" class="form-control select2">
                            <option value="--Select--">--Select--</option>
                            <option value="Rajasthan">S/w admin</option>
                            <option value="Maharashtra">Mgt</option>
                            <option value="Nagaland">JD Office</option>
                            <option value="Nashik">JD Section Incharge </option>
                            <option value="West">DEO Office</option>
                            <option value="Bengal">DEO Section Incharge </option>
                            <option value="Telangana">BEO Office</option>
                            <option value="Assam">BEO Section Incharge</option>
                            <option value="Tripura">Inst Head</option>
                            <option value="Madhya">Inst Section Incharge</option>
                            <option value="Tamil">School Head</option>
                            <option value="Nadu">School Section Incharge</option>
                            <option value="Gujarat">Employees</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Enter Role Name (In English)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl00" type="text" class="form-control" placeholder="Enter Role Name" onkeypress="return lettersOnly();" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>रोल का नाम (हिंदी में)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl01" type="text" class="form-control" autocomplete="off" placeholder="रोल का नाम दर्ज करे" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Enter Role sequence No. / रोल अनुक्रम संख्या दर्ज करें.<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl02" type="text" class="form-control" placeholder="Enter Role sequence No." onkeypress="return lettersOnly();" />
                        </div>
                    </div>
                    <div class="row align-items-end">
                        <div class="col-md-3 ms-4">
                                <label class="form-check-label">
                                    <input class="form-check-input" checked="checked" type="checkbox" data-val="true" data-val-required="The IsActive field is required." id="IsActive1" name="IsActive" value="true">
                                    Applicable to all User's of Selected User level / चयनित उपयोगकर्ता स्तर के सभी उपयोगकर्ताओं के लिए लागू
                                </label>
                        </div>
                        <div class="col-md-3 ms-4">
                            <div class="form-group">
                                <label class="form-check-label">
                                    <input class="form-check-input" checked="checked" type="checkbox" data-val="true" data-val-required="The IsActive field is required." id="IsActive" name="IsActive" value="true">
                                    Status
						<small>(Active/InActive)</small><br>
                                    स्थिति (सक्रिय/निष्क्रिय)
                                </label>
                            </div>
                        </div>
                    </div>
                    <hr />
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                            <a href="RoleCreation.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>

        <fieldset>
            <legend>Role Creation Details / रोल निर्माण का विवरण</legend>
            <div class="row justify-content-end">

                <div class="col-md-4 text-end">
                    <div class="form-group">
                        <button class="btn btn-info btn-rounded w-55">Excel</button>
                        <button class="btn btn-info btn-rounded w-55">PDF</button>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="form-group">
                        <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table text-center">
                            <tr>
                                <th>Sr.No. / सरल क्र.</th>
                                <th>User Level Name / उपयोगकर्ता स्तर का नाम</th>
                                <th>Role Name (In English)</th>
                                <th>रोल का नाम (हिंदी में)</th>
                                <th>Role sequence No. / 
                                 रोल अनुक्रम संख्या</th>
                                <th>Applicable to all User's of Selected User level / चयनित उपयोगकर्ता स्तर के सभी उपयोगकर्ताओं के लिए लागू</th>
                                <th>Status(Active / InActive) / स्थिति (सक्रिय/निष्क्रिय)</th>
                                <th>Action</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>JD Office </td>
                                <td>JD Admin</td>
                                <td>जेडी एडमिन</td>
                                <td>01</td>
                                <td><a class="alert-dark"><i class="fa fa-check"></i></a></td>
                                <td>Active</td>
                                <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>|&nbsp <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </fieldset>
   </div>
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

