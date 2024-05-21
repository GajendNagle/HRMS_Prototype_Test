<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SubMenuCreation.aspx.cs" Inherits="mis_UserManagement_SubMenuCreation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor "> Sub Menu Creation</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=usermanagement" title="click to go on">User Management</a></li>
                    <li class="breadcrumb-item active">Sub Menu Creation</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Sub Menu Creation</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-weight-bold">Select Module Name<span style="color: red">*</span></label>
                            <select id="dates-field2" class="form-control">
                                  <option value="0">Select</option>
                                <option value="1">User Management</option>
                                <option value="2">HRMS</option>
                                <option value="3">Master Data</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-weight-bold">Select Parent Menu </label>
                            <select id="ddlparentmenu" class="form-control">
                                  <option value="0">Select</option>
                                <option value="1">Role Master</option>
                                <option value="2">Transfer</option>
                                <option value="3">Master Data</option>
                                <option value="4">Location Master</option>
                                <option value="5">School Directory</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-weight-bold">Enter Sub Menu Name (In English)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl00" type="text" class="form-control" placeholder="Enter Menu Name" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-weight-bold">सब मेनू का नाम (हिंदी में)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl01" type="text" class="form-control" autocomplete="off" placeholder="सब मेनू का नाम दर्ज करे" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-weight-bold">Select Controller Name<span style="color: red">*</span></label>
                            <select class="form-control">
                                <option value="">Select</option>
                                <option value="1">Role Master</option>
                            </select>
                          
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-weight-bold">Select View Name<span style="color: red">*</span></label>
                            <select class="form-control">
                                <option value="">Select</option>
                                <option value="1">Index</option>
                            </select>

                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-weight-bold">Enter Module Sequence No.<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl02" type="text" class="form-control" placeholder="Enter Menu Sequence No." />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-weight-bold">Select Menu Icon<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="0">Select</option>
                                <option value="1">StateMaster.png</option>
                                <option value="2">RoleMaster.png</option>
                                <option value="3">AdministrativeLevelTransferandApproval.png</option>
                            </select>
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
                            <a href="SubMenuCreation.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>

                </div>
            </fieldset>
            <fieldset>
                <legend>Sub Menu Creation Details </legend>
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
                                    <th>Module Name</th>
                                    <th>Parent Menu Name</th>
                                    <th> Sub Menu Name(In English)</th>
                                    <th>सब मेनू का नाम (हिंदी में)</th>
                                    <th>Controller Name</th>
                                    <th>View Name</th>
                                    <th>Menu Sequence No.</th>
                                    <th>Menu Icon</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Master Data </td>
                                    <td>Location Master Data</td>
                                    <td>State Master</td>
                                    <td>राज्य मास्टर</td>
                                    <td>StateMaster</td>
                                    <td>Index</td>
                                    <td>01</td>
                                    <td>StateMaster.png</td>
                                    <td>Active</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp <a class="alert-dark"><i class="fa fa-check"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>HRMS</td>
                                    <td>Transfer</td>
                                    <td>Administrative Level Transfer and Approval</td>
                                    <td>एडमिनिस्ट्रेटिव लेवल ट्रान्सफर एंड अप्रूवल</td>
                                    <td>AdministrativeLevelTransferandApproval</td>
                                    <td>Index</td>
                                    <td>02</td>
                                    <td>AdministrativeLevelTransferand Approval.png</td>
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

