<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Scheme_Department.aspx.cs" Inherits="mis_Scheme_Scheme_Department" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <%--<div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Scheme Department Master</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=Masters" title="click to go on">Masters</a></li>
                        <li class="breadcrumb-item"><a href="../menu.aspx?ID=Masters&SubID=OfficeMaster" title="click to go on">Office Masters</a></li>
                        <li class="breadcrumb-item active">Scheme Department Master</li>
                    </ol>
                </div>
            </div>
        </div> --%>

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
                                <a href="#SchemeManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Scheme Management</span></a>
                            </li>
                            <li class="breadcrumb-item">Scheme Department Master</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <div class="card card-border-primary">
            <div class="card-header">
                <div class="row align-items-end">
                    <div class="col-lg-7">
                        <h4 class="card-title">Scheme Department Master / योजना विभाग मास्टर
                        </h4>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <span id="ContentBody_lblMsg"></span>
                <fieldset>
                    <legend>Scheme Department Master / योजना विभाग मास्टर</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Enter Department Name (In English)<span style="color: red">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Office Name" onkeypress="return lettersOnly();" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>विभाग का नाम (हिंदी में) दर्ज करें<span style="color: red">*</span></label>
                                <input type="text" class="form-control" autocomplete="off" placeholder="कार्यालय का नाम दर्ज करे" />
                            </div>
                        </div>
                        <%-- <div class="col-md-1">
                            <label class="font-weight-bold">Is Active</label>
                            <br />
                            <input type="checkbox" checked="checked" />
                        </div>--%>

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
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <button type="button" class="Alert-Confirmation btn btn-success btn-border btn w-lg">Save</button>
                                <a href="Scheme_Department.aspx" class="btn btn-outline-danger btn-border btn w-lg">Clear</a>
                            </div>
                        </div>
                    </div>

                </fieldset>
                <fieldset>
                    <legend>Scheme Department Master / योजना विभाग मास्टर</legend>
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
                    <div class="row form-group">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table text-center">
                                    <tr>
                                        <th>Sr.No.<br />
                                            सरल क्र.
                                            <th>Department Name (In English)</th>
                                        <th>विभाग का नाम (हिंदी में)</th>
                                        <th>Status(Active / InActive)<br />
                                            स्थिति (सक्रिय/निष्क्रिय)</th>

                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>School Education Department</td>
                                        <td>स्कूल शिक्षा  विभाग</td>
                                       <td>Active</td>

                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Scheduled Caste Welfare Department</td>
                                        <td>अनुसूचित जाति कल्याण विभाग</td>                                       
                                        <td>Active</td>

                                    </tr>
                                    <tr>
                                        <td>3</td>
                                         <td>Tribal Affairs Department</td>
                                        <td>जनजातीय कार्य विभाग</td>
                                        <td>Active</td>

                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>Denotified, Nomadic and Semi Nomadic Tribes Welfare Department</td>
                                        <td>विमुक्त, घुमक्कड एवं अर्द्ध घुमक्कड जनजाति कल्याण विभाग</td>
                                        <td>Active</td>

                                    </tr>
                                    <tr>
                                        <td>5</td>
                                         <td>M.P. Backward Class Minority Department</td>
                                        <td>म.प्र. पिछड़ा वर्ग अल्पसंख्यक विभाग</td>                                   
                                        <td>Active</td>

                                    </tr>

                                    <tr>
                                        <td>6</td>
                                        <td>Social Justice Department Madhya Pradesh</td>
                                        <td>सामाजिक न्याय विभाग म.प्र.</td>                                     
                                        <td>Active</td>

                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

