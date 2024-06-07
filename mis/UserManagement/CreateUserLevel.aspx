<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="CreateUserLevel.aspx.cs" Inherits="mis_UserManagement_CreateUserLevel" %>

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
                        <li class="breadcrumb-item">Create User Level</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">Create User Level / उपयोगकर्ता स्तर का निर्माण
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Create User Level / उपयोगकर्ता स्तर का निर्माण</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select User Type /<br />
                                उपयोगकर्ता प्रकार का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="">Select</option>
                                <option value="1">Admin</option>
                                <option value="2">Office Management</option>
                                <option value="3">Institute</option>
                                <option value="4">School</option>
                                <option value="5">Employees</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Enter User Level Name /<br />
                                उपयोगकर्ता स्तर का नाम दर्ज करें<span style="color: red">*</span></label>
                            <input class="form-control" placeholder="Enter User Level Name" />
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
                            <button type="button" class="Alert-Confirmation btn btn-success w-lg btn-border">Save</button>
                            <a href="CreateUserLevel.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>

                </div>
            </fieldset>
            <fieldset>
                <legend>User Level Details / उपयोगकर्ता स्तर का विवरण</legend>
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
                                    <th>Sr.No. /<br />
                                        सरल क्र.</th>
                                    <th>User Type /<br />
                                        उपयोगकर्ता का प्रकार</th>
                                    <th>Level Name /<br />
                                        स्तर का नाम</th>
                                    <th>Status(Active / InActive) /
                                        <br />
                                        स्थिति (सक्रिय/निष्क्रिय)</th>
                                    <th>Action</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Admin</td>
                                    <td>S/w Admin</td>
                                    <td>Active</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>|&nbsp <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Office Management</td>
                                    <td>JD Office</td>
                                    <td>Active</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>|&nbsp <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Institute</td>
                                    <td>Institute Head</td>
                                    <td>Active</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>|&nbsp <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>School</td>
                                    <td>School Section Incharge</td>
                                    <td>Active</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>|&nbsp <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Employees</td>
                                    <td>Employees</td>
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
</asp:Content>

