<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="InchargeMapping.aspx.cs" Inherits="mis_UserManagement_InchargeMapping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Incharge Mapping</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                     <li class="breadcrumb-item"><a href="../Module.aspx?ID=usermanagement" title="click to go on">User Management</a></li> 
                    <li class="breadcrumb-item active">Incharge Mapping</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Incharge Mapping</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-weight-bold">Enter Employee Code/OIS Code <span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl02" type="text" class="form-control" placeholder="Enter Employee Code/OIS Code" onkeypress="return lettersOnly();" />
                        </div>
                    </div>
                    <div class="col-md-3 form-group">
                        <label class="font-bold">Select  User Level Name<span style="color: red">*</span></label>
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
                    <div class="col-md-3 form-group">
                        <label class="font-bold">Select User Role<span style="color: red">*</span></label>
                        <select name="ctl00$ContentBody$ctl00" class="form-control select2">
                            <option value="--Select--">--Select--</option>
                            <option value="Rajasthan">JD Sports</option> 
                        </select>
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
                                <a href="InchargeMapping.aspx" class="btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div> 
            </fieldset>
            <fieldset>
                <legend>Incharge Mapping Details </legend>
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
                                    <th>Employee Code/OIS Code</th>
                                    <th>User Level Name</th>
                                    <th>Role Name</th> 
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Alok Khare</td>
                                     <td>JD Section Incharge</td> 
                                    <td>JD Sports</td>
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

