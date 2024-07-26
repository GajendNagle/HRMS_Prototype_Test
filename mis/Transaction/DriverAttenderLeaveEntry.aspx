<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DriverAttenderLeaveEntry.aspx.cs" Inherits="mis_Transaction_DriverAttenderLeaveEntry" %>

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
                        <li class="breadcrumb-item">Driver / Attender Leave Entry</li>
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
                        <div class="headertext btn btn-primary rounded-pill">Driver / Attender Leave Entry</div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">Empty </marquee>
                        </div>
                    </div>
                </div>
                <div class="col-xl-2 col-md-12 text-end">
                    <a role="button" href="DriverLeaveReport.aspx" class="btn btn-primary btn-label waves-effect waves-light rounded-pill" id="btnBack"
                        onclick="funBack()"><i class="bx bx-plus label-icon align-middle me-2"></i>View Details</a>
                </div>
            </div>
        </div>
        <div class="card-body">
            <asp:Label runat="server" ID="lblMsg"></asp:Label>
            <fieldset id="RegDetail">
                <legend>Driver/Attender Leave Entry </legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Select Registration Type
                                <br />
                                पंजीकरण प्रकार का चयन करें<span style="color: red">*</span></span>
                            <select class="form-select" id="dropdown1" onchange="toggleSection1()">
                                <option value="0">--Select--</option>
                                <option value="1">Driver</option>
                                <option value="2">Attender</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Select Name
                                <br />
                                नाम चयन करें<span style="color: red">*</span></span>
                            <select class="form-select" id="Name" onchange="toggleSection1()">
                                <option value="0">--Select--</option>
                                <option value="1">Ram</option>
                                <option value="2">Rakesh</option>
                                <option value="3">Ramesh</option>
                                <option value="4">Rajesh</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Vehicle Number<br />
                                गाड़ी क्र.<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl00" type="text" class="form-control" readonly placeholder="MP04AB1234" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Route No<br />
                                मार्ग क्र.<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl00" type="text" class="form-control" readonly placeholder="RUT001" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Leave From Date<br />
                               छुट्टी प्रारंभिक दिनांक<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl00" type="date" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Leave To Date<br />
                                छुट्टी अंतिम दिनांक<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl00" type="date" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Leave Reason<br />
                               छुट्टी का कारण दर्ज करें<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl00" type="Text" class="form-control" placeholder="Enter Reason" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Document Upload<br />
                                दस्तावेज़ अपलोड करें<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl00" type="File" class="form-control" placeholder="Enter Reason" />
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border  w-lg">Save</button>
                        <a href="RouteToVehicleMapping.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
                    <p style="font-size:19px; font-weight:700; color:RED"><span class="fs-bold text-danger">Note :-</span> Driver / Attender की जानकारी को 2 दिन के अंन्दर ही सुधार किया जा सकता हैं |</p>
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
                <div class="row" id="tableData">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr. No.<br />
                                            क्रमांक</th>
                                        <th>Driver / Attender Name<br />
                                            ड्राइवर / अटेंडर नाम</th>
                                        <th>Vehicle No.<br />
                                            गाड़ी क्र.</th>
                                        <th>Leave From Date<br />
                                            छुट्टी प्रारंभिक दिनांक</th>
                                        <th>Leave To Date<br />
                                            छुट्टी अंतिम दिनांक</th>
                                        <th>Document<br />
                                            दस्तावेज़</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>Attender</td>
                                    <td>MP04AB1196</td>
                                    <td>25/07/2024</td>
                                    <td>28/07/2024</td>
                                    <td><span class="btn btn-outline-primary"><i class="fa fa-eye"></i></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Driver</td>
                                    <td>MP04CD5154</td>
                                    <td>28/07/2024</td>
                                    <td>05/08/2024</td>
                                    <td><span class="btn btn-outline-primary"><i class="fa fa-eye"></i></span>
                                    </td>
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

