<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ModuleMapping.aspx.cs" Inherits="mis_UserManagement_ModuleMapping" %>

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
                        <li class="breadcrumb-item">Module Mapping</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">Module Mapping / मॉड्यूल मैपिंग</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Module Mapping / मॉड्यूल मैपिंग</legend>
                <div class="row align-items-end">
                    <div class="col-md-3 mt-4">
                        <div class="form-group">
                            <label>Enter Module Name(In English)<span style="color: red">*</span></label>
                            <input type="text" maxlength="50" class="form-control" id="txtModuleNameEng" placeholder="Enter Module Name" />
                        </div>
                    </div>
                    <div class="col-md-3 mt-5">
                        <div class="form-group">
                            <label>मॉड्यूल का नाम (हिंदी में)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl01" type="text" class="form-control" autocomplete="off" placeholder="मॉड्यूल का नाम दर्ज करे" />
                        </div>
                    </div>
                    <div class="col-md-3 mt-4">
                        <div class="form-group">
                            <label>Enter Module Sequence No. <br />
                                मॉड्यूल अनुक्रम संख्या दर्ज करें<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl02" type="text" class="form-control" placeholder="Enter Module Sequence No." />
                        </div>
                    </div>
                    <div class="col-md-3 mt-4">
                        <div class="form-group">
                            <label>
                                Select Module Icon <br />
                                मॉड्यूल आइकन का चयन करें<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-select select2">
                                <option value="0">Select</option>
                                <option value="1">Hrms.png</option>
                                <option value="2">Master.png</option>
                                <option value="2">User Management.png</option>
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
                            <a href="ModuleMapping.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>

                </div>
            </fieldset>
            <fieldset>
                <legend>Module Mapping Details / मॉड्यूल मैपिंग विवरण </legend>
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
                                    <th>Sr.No.<br />
                                        सरल क्र.</th>
                                    <th>Module Name (In English)</th>
                                    <th>मॉड्यूल का नाम (हिंदी में)</th>
                                    <th>Module Sequence No.<br />
                                        मॉड्यूल अनुक्रम संख्या</th>
                                    <th>Module Icon <br />
                                        मॉड्यूल आइकन</th>
                                    <th>Status(Active / InActive)<br />
                                        स्थिति (सक्रिय/निष्क्रिय)</th>
                                    <th>Action</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>User Management</td>
                                    <td>यूजर मैनेजमेंट</td>
                                    <td>01</td>
                                    <td>User Management.png</td>
                                    <td>Active</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>|&nbsp <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>HRMS</td>
                                    <td>एच आर एम एस</td>
                                    <td>02</td>
                                    <td>Hrms.png</td>
                                    <td>Active</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>|&nbsp <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Master Data</td>
                                    <td>मास्टर डाटा</td>
                                    <td>03</td>
                                    <td>Master.png</td>
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

