<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="RoleWiseRightsAssign.aspx.cs" Inherits="mis_UserManagement_RoleWiseRightsAssign" %>

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
                        <li class="breadcrumb-item">Role Wise Right's Assign</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">Role Wise Right's Assign / रोल के अनुसार अधिकार असाइन करें</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Role Wise Right's Assign / रोल के अनुसार अधिकार असाइन करें</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
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
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select User Role / उपयोगकर्ता रोल का चयन करें<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl00" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Rajasthan">JD Sports</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select Module Name / 
                        मॉड्यूल का चयन करें<span style="color: red">*</span></label>
                            <select id="ddlparentmenu" class="form-control select2">
                                <option>--Select</option>
                                <option value="1">Master Data</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select Menu Name / मेनू का चयन करें<span style="color: red">*</span></label>
                            <select id="dates-field2" class="form-control select2">
                                <option>--Select</option>
                                <option value="1">State Master</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select  Action Name / कार्यवाही का चयन करें<span style="color: red">*</span></label>
                            <select id="dates-field3" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">Create</option>
                                <option value="2">Edit</option>
                                <option value="3">Delete</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Role Valid Upto(Date) / रोल (दिनांक) तक मान्य<span style="color: red">*</span></label>
                            <input name="ename" id="DOB" type="date" class="form-control" autocomplete="off" onchange="updateSecondDate()" />
                        </div>
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
                    <hr />
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" class="Alert-Confirmation btn btn-success btn-border">Save</button>
                            <a href="RoleWiseRightsAssign.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset>
                <legend>Role Wise Right's Assign Details / रोल के अनुसार अधिकार असाइनमेंट का विवरण</legend>
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
                                    <th>User Role Name / उपयोगकर्ता के रोल का नाम </th>
                                    <th>Module Name / मोड्यूल का नाम</th>
                                    <th>Menu Name / मेनू का नाम</th>
                                    <th>Action Name / कार्यवाही का नाम</th>
                                    <th>Role valid Upto(Date) / रोल (दिनांक) तक मान्य</th>
                                    <th>Status(Active / InActive) / स्थिति (सक्रिय/निष्क्रिय)</th>
                                    <th>Action</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>JD Office </td>
                                    <td>JD Admin</td>
                                    <td>Master Data</td>
                                    <td>State Master</td>
                                    <td>Create</td>
                                    <td>04/05/2024 </td>
                                    <td>Active</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>|&nbsp <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <%-- <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <link href="../dist/css/bootstrapM.min.css" rel="stylesheet" />
    <script src="../dist/js/bootstrap-multiselect.js"></script>

    <script>
        $(function () {
            $('.multiselect-ui').multiselect({
                includeSelectAllOption: true
            });
        });
    </script>--%>
</asp:Content>
