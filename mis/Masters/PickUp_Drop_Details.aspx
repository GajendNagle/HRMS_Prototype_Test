<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="PickUp_Drop_Details.aspx.cs" Inherits="mis_Masters_PickUp_Drop_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row">
        <div class="col-md-12">
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
                            <a href="#ParentProcess" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('TransPortManagement')">
                                <span>Parent Process</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Pickup/Drop Details</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-12 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">PickUp/Drop Details</div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">Empty </marquee>
                        </div>
                    </div>
                </div>
                <%-- <div class="col-xxl-2 col-md-12 text-end"> <a role="button" class="btn btn-primary btn-label waves-effect waves-light rounded-pill"><i class="bx bx-plus label-icon align-middle fs-16 me-2"></i>add new state</a> </div>--%>
            </div>
        </div>

        <div class="card-body">
            <asp:Label runat="server" ID="lblMsg"></asp:Label>
            <fieldset>
                <legend>PickUp/Drop Details</legend>
                <div class="row align-items-end">
                     <div class="col-md-6 col-lg-4 col-xl-3">
                    <div class="form-group">
                        <label>
                            Student Name <br />
                            विद्यार्थी का नाम<span style="color: red">*</span></label>
                        <input name="ctl00$ContentBody$ctl00" type="TEXT" PlaceHolder="Arpana" class="form-control" />
                    </div>
                </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select From Date<br />
                                प्रारंभिक दिनांक का चयन करें<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl00" type="date" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select To Date<br />
                                अंतिम दिनांक का चयन करें<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl00" type="date" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <div class="form-group">
                            <button type="button" class="btn btn-outline-success btn-border  w-lg">Search</button>
                            <a href="/mis/Masters/PickUp_Drop_Details.aspx" class="btn btn-outline-danger w-lg">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>View Pickup/Drop Details</legend>
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
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr. No.
                                     <br />
                                            सरल क्र.</th>
                                        <th>Date
                                     <br />
                                            दिनांक</th>
                                        <th>Absence Reason<br />
                                            अनुपस्थिति का कारण</th>
                                        <th>PickUp / Time 
                                     <br />
                                        </th>
                                        <th>Drop / Time</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>10/07/2024</td>
                                    <td>Health Issue</td>
                                    <td>No</td>
                                    <td>No</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>18/07/2024</td>
                                    <td>---</td>
                                    <td> 09:45 AM</td>
                                    <td> 05:10 PM</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>12/07/2024</td>
                                    <td>---</td>
                                    <td> 09:46 AM</td>
                                    <td> 05:10 PM</td>
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

