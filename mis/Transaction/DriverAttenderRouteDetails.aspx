<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DriverAttenderRouteDetails.aspx.cs" Inherits="mis_Transaction_DriverAttenderRouteDetails" %>

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
                            <a href="#TransPortManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Transport Management</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#SchoolManagementSystem" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('TransPortManagement')">
                                <span>School Management System</span></a>
                        </li>
                        <li class="breadcrumb-item">Driver / Attender Route Details</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xl-10 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">Driver / Attender Route Details</div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">Empty </marquee>
                        </div>
                    </div>
                </div>
                <%--                <div class="col-xl-2 col-md-12 text-end">
                    <a role="button" href="DriverLeaveReport.aspx" class="btn btn-primary btn-label waves-effect waves-light rounded-pill" id="btnBack"
                        onclick="funBack()"><i class="bx bx-plus label-icon align-middle me-2"></i>View Details</a>
                </div>--%>
            </div>
        </div>
        <div class="card-body">
            <asp:Label runat="server" ID="lblMsg"></asp:Label>
            <fieldset id="RegDetail">
                <legend>Driver / Attender Route Details</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Route Number<br />
                                मार्ग संख्या का चयन करें<span style="color: red">*</span></label>
                            <select id="work-category" class="form-control select2">
                                <option value="Select">--Select--</option>
                                <option value="All">All</option>
                                <option value="D">RUT001</option>
                                <option value="B">RUT002</option>
                                <option value="c">RUT003</option>
                                <option value="A">RUT004</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <span>Select Registration Type
                                <br />
                                पंजीकरण प्रकार का चयन करें<span style="color: red">*</span></span>
                            <select class="form-select select2" id="ddReg">
                                <option value="0">--Select--</option>
                                <option value="all">All</option>
                                <option value="1">Driver</option>
                                <option value="2">Attender</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <button type="button" class="btn btn-outline-success btn-border w-lg">Search</button>
                        <a href="DriverAttenderRouteDetails.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>
            <fieldset id="FsDetails">
                <legend>Details / विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2" id="searchbtn">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr No.<br />
                                            क्रमांक</th>
                                        <th>Route No.<br />
                                            मार्ग क्र.</th>
                                        <th>Registration Type<br />
                                            पंजीकरण प्रकार</th>
                                        <th>Name Driver / Attender<br />
                                            ड्राइवर / अटेंडर का नाम
                                        </th>
                                    </tr>
                                </thead>
                                    <tr>
                                        <td>1</td>
                                        <td>RUT001</td>
                                        <td>Driver</td>
                                        <td>Ramesh</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>RUT002</td>
                                        <td>Attender</td>
                                        <td>Rajesh</td>
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

