<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SubMenuCreation.aspx.cs" Inherits="mis_UserManagement_SubMenuCreation" %>

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
                        <li class="breadcrumb-item">Sub Menu Creation</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">Sub Menu Creation / सब मेनू का निर्माण</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Sub Menu Creation / सब मेनू का निर्माण</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select Module Name /<br /> मॉड्यूल का चयन करें<span style="color: red">*</span></label>
                            <select id="dates-field2" class="form-control select2">
                                <option value="0">Select</option>
                                <option value="1">User Management</option>
                                <option value="2">HRMS</option>
                                <option value="3">Master Data</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select Parent Menu /<br /> पेरेंट मेनू का चयन करें</label>
                            <select id="ddlparentmenu" class="form-control select2">
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
                            <label>Enter Sub Menu Name (In English)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl00" type="text" class="form-control" placeholder="Enter Menu Name" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>सब मेनू का नाम (हिंदी में)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl01" type="text" class="form-control" autocomplete="off" placeholder="सब मेनू का नाम दर्ज करे" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select Controller Name /<br /> नियंत्रक का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="">Select</option>
                                <option value="1">Role Master</option>
                            </select>

                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select View Name /<br /> व्यू नाम का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="">Select</option>
                                <option value="1">Index</option>
                            </select>

                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Enter Module Sequence No. /<br /> मॉड्यूल अनुक्रम संख्या दर्ज करें<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl02" type="text" class="form-control" placeholder="Enter Menu Sequence No." />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Menu Icon /<br /> 
मेनू आइकॉन का चयन करें<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="0">Select</option>
                                <option value="1">StateMaster.png</option>
                                <option value="2">RoleMaster.png</option>
                                <option value="3">AdministrativeLevelTransferandApproval.png</option>
                            </select>
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
                            <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                            <a href="SubMenuCreation.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>

                </div>
            </fieldset>
            <fieldset>
                <legend>Sub Menu Creation Details / सब मेनू निर्माण का विवरण </legend>
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
                            <table class="table table-bordered text-center">
                                <tr>
                                    <th>Sr.No./<br /> सरल क्र.</th>
                                    <th>Module Name/<br /> मोड्यूल का नाम</th>
                                    <th>Parent Menu Name /<br /> पेरेंट मेनू का नाम</th>
                                    <th>Sub Menu Name(In English)</th>
                                    <th>सब मेनू का नाम (हिंदी में)</th>
                                    <th>Controller Name /<br /> नियंत्रक का नाम</th>
                                    <th>View Name/<br /> व्यू नाम</th>
                                    <th>Menu Sequence No. / मेनू अनुक्रम संख्या</th>
                                    <th>Menu Icon /<br /> मेनू आइकॉन</th>
                                    <th>Status(Active / InActive) /<br /> स्थिति (सक्रिय/निष्क्रिय)</th>
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
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>|&nbsp <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>HRMS</td>
                                    <td>Transfer</td>
                                    <td>Administrative Level Transfer and Approval</td>
                                    <td>एडमिनिस्ट्रेटिव लेवल ट्रान्सफर एंड अप्रूवल</td>
                                    <td>Administrative Level Transfer and Approval</td>
                                    <td>Index</td>
                                    <td>02</td>
                                    <td>Administrative Level Transferand Approval.png</td>
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

