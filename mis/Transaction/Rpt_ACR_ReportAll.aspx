<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_ACR_ReportAll.aspx.cs" Inherits="mis_Transaction_Rpt_AcrReportAll" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        @media (max-width: 767px) {
            .fixed-layout .topbar {
                position: relative !important;
            }
        }

        .navbar-brand {
            margin-right: auto !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">


    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor "><a href="#">
                <img src="../../img/ACRIcon.png" height="40" width="40" />Annual Confidential Report(ACR)</a></h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item active">Annual Confidential Report(ACR)</li>

                </ul>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">

            <nav class="navbar navbar-expand-lg  topbar ">
                <div class="container-fluid p-0">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                            <li class="nav-item ">
                                <a class="nav-link text-white " href="#" role="button"><b><span style="font-size: 17px; margin-top: 8px;" class="fa fa-home" aria-hidden="true"></span></b></a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link text-white " href="Rpt_ACR_Report.aspx" role="button"><b class="font-16 font-bold"><span style="font-size: 22px">&#149;</span>&nbsp;Annual Confidential Report</b></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-white " href="#"><b class="font-16 font-bold"><span style="font-size: 22px">&#149;</span>&nbsp;ACR Report Detail</b></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <br />
            <br />
            <fieldset>
                <legend>ACR Report Search</legend>
                <div class="row">
                    <div class="col-md-3">
                        <label class="font-bold">District Name<span style="color: red">*</span></label>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="Select District Name" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School Name !'></i>" ControlToValidate="ddlDistrictName" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:DropDownList runat="server" ID="ddlDistrictName" CssClass="form-control select2" OnSelectedIndexChanged="ddlDistrictName_SelectedIndexChanged" AutoPostBack="true">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                            <asp:ListItem>Bhopal</asp:ListItem>
                            <asp:ListItem>Raisen</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label class="font-bold">Block Name<span style="color: red">*</span></label>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="Select Block Name" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School Name !'></i>" ControlToValidate="ddlBlockName" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:DropDownList runat="server" ID="ddlBlockName" CssClass="form-control select2">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label class="font-bold">DDO Code</label>
                        <asp:TextBox runat="server" ID="txtDDOCode" placeholder="Enter DDO Code" CssClass="form-control" AutoComplete="OFF"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <label class="font-bold">Employee ID</label>
                        <asp:TextBox runat="server" ID="txtEmployeeID" placeholder="Employee Unique ID" CssClass="form-control" AutoComplete="OFF"></asp:TextBox>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-3 text-center mt-4">
                        <div class="form-group">
                            <asp:Button runat="server" class="alert-save btn btn-success btn-rounded" Text="Search" OnClick="Unnamed_Click" />
                            <a href="Rpt_ACR_ReportAll.aspx" class="btn btn-danger  btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <br />
            <fieldset id="show" runat="server" visible="false">
                <legend>ACR Details</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput1" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <table id="tbl2" class="table table-bordered table-responsive-lg text-center" runat="server">
                                <thead>
                                    <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                        <th>Sr.No.</th>
                                        <th>Employee ID</th>
                                        <th>Employee Name</th>
                                        <th>Designation</th>
                                        <th>Month/Year</th>
                                        <th>Grade</th>
                                        <th>Supporting Document</th>
                                        <th>DDO Code</th>
                                        <th>Remark</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr valign="middle">
                                        <td>1</td>
                                        <td>EDI1224</td>
                                        <td>Shri Rajesh Tiwari</td>
                                        <td>Managing Director</td>
                                        <td>January 2023</td>
                                        <td>A</td>
                                        <td>NA</td>
                                        <td>0332506013</td>
                                        <td>During the reporting period, Rajesh consistently demonstrated strong leadership skills and a proactive approach to problem-solving. </td>
                                    </tr>

                                    <tr valign="middle">
                                        <td>2</td>
                                        <td>EDI456</td>
                                        <td>Rajesh Pawar</td>
                                        <td>Teaching</td>
                                        <td>January 2023</td>
                                        <td>A+</td>
                                        <td>NA</td>
                                        <td>0332504567</td>
                                        <td>During the reporting period, Rajesh consistently demonstrated strong leadership skills and a proactive approach to problem-solving.</td>
                                    </tr>

                                    <tr valign="middle">
                                        <td>3</td>
                                        <td>EDI123</td>
                                        <td>Ghanshyam Khade</td>
                                        <td>Executive</td>
                                        <td>January 2023</td>
                                        <td>B</td>
                                        <td>NA</td>
                                        <td>0332504123</td>
                                        <td>During the reporting period, Rajesh consistently demonstrated strong leadership skills and a proactive approach to problem-solving.</td>
                                    </tr>

                                    <tr valign="middle">
                                        <td>4</td>
                                        <td>EDI789</td>
                                        <td>Radheshyam Dhobi</td>
                                        <td>Ministry</td>
                                        <td>January 2023</td>
                                        <td>C</td>
                                        <td>NA</td>
                                        <td>0332501234</td>
                                        <td>During the reporting period, Rajesh consistently demonstrated strong leadership skills and a proactive approach to problem-solving.</td>
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

