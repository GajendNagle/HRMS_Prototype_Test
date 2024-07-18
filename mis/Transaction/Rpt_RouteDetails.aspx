<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_RouteDetails.aspx.cs" Inherits="mis_Transaction_Rpt_RouteDetails" %>

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
                            <a href="#BusDriverToAttender" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('TransPortManagement')">
                                <span>Bus Driver & Attender Process</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>View Route Location</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary ">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-12 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            View Route Location
                        </div>
                        <div>
                            <marquee style="width: 100%;"
                                onmouseover="this.stop();" onmouseout="this.start();"
                                direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                .
                            </marquee>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>

                <legend>Location Details / मार्ग विवरण</legend>
                <div class="row align-items-end">

                    <div class="col-md-3">
                        <label>
                            Select Route No.<span style="color: red">*</span><br />
                            रूट नंबर का चयन करें
                        </label>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School Name !'></i>" ControlToValidate="ddlRoute" Display="Dynamic"></asp:RequiredFieldValidator>

                        <asp:DropDownList runat="server" CssClass="form-control select2" ID="ddlRoute">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                            <asp:ListItem>RTU001</asp:ListItem>
                            <asp:ListItem>RTU002</asp:ListItem>
                            <asp:ListItem>RTU003</asp:ListItem>
                            <asp:ListItem>RTU004</asp:ListItem>
                            <asp:ListItem>RTU005</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <hr />
                <div class="row align-items-end">
                    <div class="col-md-12 form-group">
                        <asp:Button runat="server" ID="searchButton" type="button" Text="Find Details" class="btn btn-outline-success w-lg btn-border" OnClick="searchButton_Click" />

                        <a href="Rpt_RouteDetails.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>

            </fieldset>

            <fieldset id="showdetails" runat="server" visible="false">
                <legend>Details / विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                        </div>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>

                                        <th>Sr.No
                                            <br />
                                            क्रमांक 
                                        </th>
                                        <th>Route No.<br />
                                            रूट नंबर</th>
                                        <th>Bus Stop Name<br />
                                            बस स्टॉप का नाम
                                        </th>
                                        <th>Arrival In Time<br />
                                            आगमन का समय
                                        </th>
                                        <th>Departure Out Time<br />
                                            प्रस्थान का समय
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>RTU001</td>
                                        <td>Aadesh Nagar</td>
                                        <td>08:15 AM</td>
                                        <td>08:17 AM</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>RTU001</td>
                                        <td>Rahul Nagar</td>
                                        <td>08:20 AM</td>
                                        <td>08:22 AM</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>RTU001</td>
                                        <td>Gautam Nagar</td>
                                        <td>08:27 AM </td>
                                        <td>08:30 AM</td>
                                    </tr>
                                </tbody>
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

