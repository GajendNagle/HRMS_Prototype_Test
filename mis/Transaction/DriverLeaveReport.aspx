<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DriverLeaveReport.aspx.cs" Inherits="mis_Transaction_DriverLeaveReport" %>

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
                        <li class="breadcrumb-item">Driver / Attender Leave Entry Report</li>
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
                        <div class="headertext btn btn-primary rounded-pill">Driver / Attender Leave Report</div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">Empty </marquee>
                        </div>
                    </div>
                </div>
                <div class="col-xl-2 col-md-12 text-end">
                    <a role="button" href="DriverAttenderLeaveEntry.aspx" class="btn btn-primary btn-label waves-effect waves-light rounded-pill" id="btnBack"
                        onclick="funBack()"><i class="ri-arrow-go-back-line label-icon align-middle fs-16 me-2"></i>Back</a>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset id="FsDetails">
                <legend>Report / रिपोर्ट</legend>
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
                                        <th>Registration Type<br />
                                            पंजीकरण प्रकार</th>
                                        <th>Vehicle No.<br />
                                            गाड़ी क्र.</th>
                                        <th>Leave From Date<br />
                                            छुट्टी प्रारंभिक दिनांक</th>
                                        <th>Leave To Date<br />
                                            छुट्टी अंतिम दिनांक</th>
                                        <th>Driver / Attender Name<br />
                                            ड्राइवर / अटेंडर नाम</th>
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
                                    <td>Rakesh</td>
                                    <td><span class=" btn btn-outline-primary"><i class="fa fa-eye"></i></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Driver</td>
                                    <td>MP04CD5154</td>
                                    <td>28/07/2024</td>
                                    <td>05/08/2024</td>
                                    <td>Rajesh</td>
                                    <td><span class=" btn btn-outline-primary"><i class="fa fa-eye"></i></span>
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
