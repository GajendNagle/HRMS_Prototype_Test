<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ModuleMapping.aspx.cs" Inherits="mis_UserManagement_ModuleMapping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Module Mapping</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=usermanagement" title="click to go on">User Management</a></li> 
                    <li class="breadcrumb-item active">Module Mapping</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Module Mapping</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-weight-bold">Enter Module Name(In English)<span style="color: red">*</span></label>
                            <input type="text" maxlength="50" class="form-control" id="txtModuleNameEng" placeholder="Enter Module Name" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-weight-bold"> मॉड्यूल का नाम (हिंदी में)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl01" type="text" class="form-control" autocomplete="off" placeholder="मॉड्यूल का नाम दर्ज करे" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-weight-bold">Enter Module Sequence No.<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl02" type="text" class="form-control" placeholder="Enter Module Sequence No." />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-weight-bold">Select Module Icon<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-select select2">
                                <option value="0">Select</option>
                                <option value="1">Hrms.png</option>
                                <option value="2">Master.png</option>
                                <option value="2">User Management.png</option>
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
                            <a href="ModuleMapping.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>

                </div>
            </fieldset>
            <fieldset>
                <legend>Module Mapping Details </legend>
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
                                    <th>Module Name (In English)</th>
                                    <th>मॉड्यूल का नाम (हिंदी में)</th>
                                    <th>Module Sequence No.</th>
                                    <th>Module Icon</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>User Management</td>
                                    <td>यूजर मैनेजमेंट</td>
                                    <td>01</td>
                                    <td>User Management.png</td>
                                    <td>Active</td>
                                   <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp <a class="alert-dark"><i class="fa fa-check"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>HRMS</td>
                                    <td>एच आर एम एस</td>
                                    <td>02</td>
                                    <td>Hrms.png</td>
                                    <td>Active</td>
                                   <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp <a class="alert-dark"><i class="fa fa-check"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Master Data</td>
                                    <td>मास्टर डाटा</td>
                                    <td>03</td>
                                    <td>Master.png</td>
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
    <script>
    $(function () {
        $('[id*=temp]').multiselect({
            includeSelectAllOption: true,
            enableFiltering: true,
            filterPlaceholder: 'Search',
            enableCaseInsensitiveFiltering: true,
            buttonWidth: '100%'
        });
    });
    </script>
</asp:Content>

