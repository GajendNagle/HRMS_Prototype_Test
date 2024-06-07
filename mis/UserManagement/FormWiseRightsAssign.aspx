<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="FormWiseRightsAssign.aspx.cs" Inherits="mis_UserManagement_FormWiseRightsAssign" %>

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
                            <a href="#sidebarUserManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>User Management</span></a>
                        </li>
                        <li class="breadcrumb-item">Form Wise Rights Assign</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">Form Wise Rights Assign / फॉर्म के अनुसार अधिकार असाइन करें</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Form Wise Right's Assign / फॉर्म के अनुसार अधिकार असाइन करें</legend>
                <div class="row align-items-end">

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select Module Name /<br />
                                मॉड्यूल का चयन करें<span style="color: red">*</span></label>
                            <select id="ddlparentmenu" class="form-control select2">
                                <option>--Select--</option>
                                <option value="1">Master Data</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select Menu Name /<br />
                                मेनू का चयन करें<span style="color: red">*</span></label>
                            <select id="dates-field2" class="form-control select2">
                                <option>--Select--</option>
                                <option value="1">State Master</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3 form-group">
                        <label>Select  Action Name /<br />
                            कार्यवाही का चयन करें<span style="color: red">*</span></label>
                        <select id="dates-field3" class="form-control select2">
                            <option value="--Select--">--Select--</option>
                            <option value="Create">Create</option>
                            <option value="Edit">Edit</option>
                            <option value="Delete">Delete</option>
                        </select>
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
                            <a href="FormWiseRightsAssign.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset>
                <legend>Form Wise Right's Assign Details / फॉर्म के अनुसार अधिकार का असाइनमेंट विवरण</legend>
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
                                    <th>Sr.No./<br />
                                        सरल क्र.</th>
                                    <th>Module Name /<br />
                                        मोड्यूल का नाम</th>
                                    <th>Menu Name /<br />
                                        मेनू का नाम </th>
                                    <th>Action Name /<br />
                                        कार्यवाही का नाम</th>
                                    <th>Status(Active / InActive) /<br />
                                        स्थिति (सक्रिय/निष्क्रिय)</th>
                                    <th>Action</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Master Data </td>
                                    <td>State Master</td>
                                    <td>Create</td>
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
    <%--<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
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


