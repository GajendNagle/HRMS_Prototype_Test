<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_SurplusTeacherSchool.aspx.cs" Inherits="mis_Registration_Rpt_SurplusTeacherSchool" %>

<%--Sagar Sarkar--%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .underline {
            text-decoration: underline;
        }

        a {
            color: #03a9f3;
        }

        th {
            background-color: #1b5b5cd9 !important;
            color: white !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Surplus Teacher School Report</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=Reports" title="click to go on">Reports</a></li>
                        <li class="breadcrumb-item active">Surplus Teacher School Report</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <fieldset>
                    <legend>Surplus Teacher School Report</legend>
                    <div class="row justify-content-center">
                        <div class="col-md-3">
                            <label class="font-bold">Division Name <span style="color: red">*</span></label>
                            <span class="fa-pull-right">
                                <asp:RequiredFieldValidator ErrorMessage="<i class='fa fa-exclamation-circle'></i>" ControlToValidate="ddlDivision" runat="server" ValidationGroup="vgForm" Display="Dynamic" ForeColor="Red" />
                            </span>
                            <asp:DropDownList runat="server" CssClass="form-control select2" ID="ddlDivision" OnSelectedIndexChanged="ddlDivision_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem>Bhopal</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <label class="font-bold">District Name</label>
                            <asp:DropDownList runat="server" CssClass="form-control select2" ID="ddlDistrict" ClientIDMode="Static" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem>--Select--</asp:ListItem>
                            </asp:DropDownList>

                        </div>
                        <div class="col-md-3">
                            <label class="font-bold">Block Name</label>
                            <asp:DropDownList runat="server" CssClass="form-control select2" ID="ddlBlock">
                                <asp:ListItem>--Select--</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Management Group</label>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlManagementGroup" OnSelectedIndexChanged="ddlManagementGroup_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>State Government</asp:ListItem>
                                    <asp:ListItem>Central Government</asp:ListItem>
                                    <asp:ListItem>Private Unaided (Recognized)</asp:ListItem>
                                    <asp:ListItem>Government Aided</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                     <div class="row justify-content-center">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Management Group Details</label>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlManagementGroupDetails">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Category</label>
                                <asp:DropDownList CssClass="form-control select2" runat="server" AutoPostBack="true" ID="ddlCategory" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>Primary School</asp:ListItem>
                                    <asp:ListItem>Upper primary School</asp:ListItem>
                                    <asp:ListItem>Secondary School</asp:ListItem>
                                    <asp:ListItem>Higher Secondary School</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Category Details</label>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlCategoryDetails">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">UDISE CODE</label>
                                <asp:DropDownList CssClass="form-control select2" runat="server">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>23320400117-GOVT HSS AHAMDABAD</asp:ListItem>
                                    <asp:ListItem>23320303134-GOVT HSS KHAJURI KALAN</asp:ListItem>
                                    <asp:ListItem>23320212709-GOVT HSS MAHARANA PRATAP PHANDA KALAN (HARIHAR NAGAR)</asp:ListItem>
                                    <asp:ListItem>23320110008-GOVT HSS GUNGA</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-center align-items-center">

                        <div class="col-md-5">
                            <div class="form-group m-4 text-center">
                                <asp:Button runat="server" Text="Search" OnClick="View1_Click" ValidationGroup="vgForm" CausesValidation="true" CssClass="btn btn-success  btn-rounded" />

                                <a href="Rpt_SurplusTeacherSchool.aspx" class="btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset runat="server" id="report" visible="false">
                    <legend>Details</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-4 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-55">Excel</button>
                                <button class="btn btn-info btn-rounded w-55">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-bordered table-responsive" style="border: 2px" id="tblDistrict">
                                <tbody>
                                    <tr>
                                        <th style="width: 5%">Sr.No.</th>
                                        <th>District</th>
                                        <th>Surplus Teacher no</th>
                                        <th>Handicapped</th>
                                        <th>Critical Illness</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Bhopal</td>
                                        <td><a href="#" onclick="showtbl('tblBlockofBhopal')">19</a></td>
                                        <td>2</td>
                                        <td>10</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Raisen</td>
                                        <td><a href="#">45</a></td>
                                        <td>5</td>
                                        <td>9</td>
                                    </tr>
                                </tbody>
                            </table>
                            <table class="table table-bordered table-responsive-lg" style="border: 2px; display: none" id="tblBlockofBhopal">
                                <tbody>
                                    <tr>
                                        <th style="width: 5%">Sr.No.</th>
                                        <th>Block</th>
                                        <th>Surplus Teacher no</th>
                                        <th>Handicapped</th>
                                        <th>Critical Illness</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Phanda URBAN-New City</td>
                                        <td><a href="#" onclick="showtbl('tblPhandaNewCity')">9</a></td>
                                        <td>1</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Phanda URBAN-Old City</td>
                                        <td><a href="#">10</a></td>
                                        <td>1</td>
                                        <td>6</td>
                                    </tr>
                                </tbody>
                            </table>
                            <table class="table table-bordered table-responsive-lg" style="border: 2px; display: none" id="tblPhandaNewCity">
                                <tbody>
                                    <tr>
                                        <th style="width: 5%">Sr.No.</th>
                                        <th>Sankul</th>
                                        <th>Surplus Teacher no</th>
                                        <th>Handicapped</th>
                                        <th>Critical Illness</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>0512003007 - M.L.B. BHEL, BARKHEDA, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                        <td><a href="#" onclick="showtbl('tblSankul')">9</a></td>
                                        <td>1</td>
                                        <td>4</td>
                                    </tr>
                                </tbody>
                            </table>
                            <table class="table table-bordered table-responsive-lg" style="border: 2px; display: none" id="tblSankul">
                                <tbody>
                                    <tr>
                                        <th style="width: 5%">Sr.No.</th>
                                        <th>School</th>
                                        <th>Surplus Teacher no</th>
                                        <th>Handicapped</th>
                                        <th>Critical Illness</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>GOVT HSS MAHARANA PRATAP PHANDA KALAN (HARIHAR NAGAR)</td>
                                        <td><a href="#" onclick="showtbl('tblschool')">2</a></td>
                                        <td>1</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>MODEL PRIMARY SCHOOL  MAHARANA PRATAP PHANDA</td>
                                        <td><a href="#">7</a></td>
                                        <td>0</td>
                                        <td>3</td>
                                    </tr>
                                </tbody>
                            </table>
                            <table class="table table-bordered table-responsive-lg" style="border: 2px; display: none" id="tblschool">
                                <tbody>
                                    <tr>
                                        <th style="width: 5%">Sr.No.</th>
                                        <th>Employee Name</th>
                                        <th>Designation</th>
                                        <th>Panal</th>
                                        <th>Handicapped</th>
                                        <th>Critical Illness</th>
                                        <th>Present Posting Date</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Ramji Pandey </td>
                                        <td>Teaching</td>
                                        <td>SS1-Hindi</td>
                                        <td>No</td>
                                        <td>No</td>
                                        <td>13/12/2023</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Shyamji</td>
                                        <td>Teaching</td>
                                        <td>SS1-Eng</td>
                                        <td>Yes</td>
                                        <td>Yes</td>
                                        <td>13/12/2022</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </fieldset>
                <script>
                    function showtbl(tblId) {
                        var tables = document.getElementsByTagName('table');
                        for (var i = 0; i < tables.length; i++) {
                            tables[i].style.display = "none";
                        }
                        document.getElementById(tblId).style.display = "table";
                    }
                </script>
               
                <div runat="server" id="divScript">
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

