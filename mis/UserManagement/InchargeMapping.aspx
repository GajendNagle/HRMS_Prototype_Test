<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="InchargeMapping.aspx.cs" Inherits="mis_UserManagement_InchargeMapping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%-- <div class="row page-titles mb-4">
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
    </div>--%>

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
                        <li class="breadcrumb-item">Incharge Mapping / </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">Incharge Mapping / मैपिंग प्रभारी</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Incharge Mapping / मैपिंग प्रभारी</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Enter Employee Code/OIS Code / कर्मचारी कोड/ओआईएस कोड दर्ज करें<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl02" type="text" class="form-control" placeholder="Enter Employee Code/OIS Code" onkeypress="return lettersOnly();" />
                        </div>
                    </div>
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
                        <button type="button" class="Alert-Confirmation btn btn-success btn-border">Save</button>
                        <a href="InchargeMapping.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>
        </div>

        <fieldset>
            <legend>Incharge Mapping Details / 
            मैपिंग प्रभारी का विवरण </legend>
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
                                <th>Employee Code/OIS Code / कर्मचारी कोड/ओआईएस कोड</th>
                                <th>User Level Name / उपयोगकर्ता स्तर का नाम</th>
                                <th>Role Name / रोल का नाम</th>
                                 <th>Status(Active / InActive) / स्थिति (सक्रिय/निष्क्रिय)</th>
                                <th>Action</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Alok Khare</td>
                                <td>JD Section Incharge</td>
                                <td>JD Sports</td>
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

