<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="CreateUserLevel.aspx.cs" Inherits="mis_UserManagement_CreateUserLevel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Create User Level </h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                     <li class="breadcrumb-item"><a href="../Module.aspx?ID=usermanagement" title="click to go on">User Management</a></li> 
                    <li class="breadcrumb-item active">Create User Level </li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Create User Level </legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-weight-bold">Select User Type<span style="color: red">*</span></label>
                            <select class="form-control">
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
                            <label class="font-weight-bold">Enter User Level Name<span style="color: red">*</span></label>
                            <input class="form-control" placeholder="Enter User Level Name" />
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="form-group">
                            <label class="font-weight-bold">Is Active</label>
                            <br />
                            <input id="ContentBody_ctl03" type="checkbox" name="ctl00$ContentBody$ctl03" checked="checked" />
                        </div>
                    </div>
                    <div class="col-md-3 mt-4">
                        <div class="form-group">
                            <button type="button" class="Alert-Confirmation btn btn-success btn-rounded">Save</button>
                            <a href="CreateUserLevel.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>

                </div>
            </fieldset>
            <fieldset>
                <legend> User Level Details </legend>
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
                            <table class="table">
                                <tr>
                                    <th>Sr.No.</th>
                                    <th>User Type</th>
                                    <th>Level Name</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Admin</td>
                                    <td>S/w Admin</td>
                                    <td>Active</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp <a class="alert-dark"><i class="fa fa-check"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Office Management</td>
                                    <td>JD Office</td>
                                    <td>Active</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp <a class="alert-dark"><i class="fa fa-check"></i></a></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Institute</td>
                                    <td>Institute Head</td>
                                    <td>Active</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp <a class="alert-dark"><i class="fa fa-check"></i></a></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>School</td>
                                    <td>School Section Incharge</td>
                                    <td>Active</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp <a class="alert-dark"><i class="fa fa-check"></i></a></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Employees</td>
                                    <td>Employees</td>
                                    <td>Active</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp <a class="alert-dark"><i class="fa fa-check"></i></a></td>
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

