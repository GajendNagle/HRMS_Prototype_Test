<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_DistWiseCounting.aspx.cs" Inherits="mis_Transaction_Rpt_DistWiseCounting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }

        th {
            white-space: nowrap;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor">District Wise Counting Report<br />
                    जिला वार सांख्यिकी रिपोर्ट</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                        <li class="breadcrumb-item"><a href="../HRMS/Trn_AdministrativeTransfer.aspx" title="click to go on">Administrative Level Transfer</a></li>
                        <li class="breadcrumb-item active">District Wise Counting Report</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <nav class="navbar navbar-expand-lg topbar ">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#"></a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse " id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">

                                <li class="nav-item dropdown ">
                                    <a class="nav-link  text-white " href="../HRMS/Trn_AdministrativeTransfer.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>

                                    <li class="nav-item dropdown ">
                                        <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>
                                            Transfer Process</b></a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="../HRMS/Trn_AdministrativeTransferApply.aspx">Transfer</a></li>
                                            <li><a class="dropdown-item" href="../HRMS/AdministrativeTransferDraftLetter.aspx">Print Draft Transfer Or Update Application</a></li>
                                            <li><a class="dropdown-item" href="../HRMS/AdministrativeGenerateTransferOrder.aspx">Generate Transfer Order </a></li>
                                            <li><a class="dropdown-item" href="../HRMS/AdministrativePrintTransferOrder.aspx">Print Transfer Order</a></li>
                                        </ul>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link text-white " href="../HRMS/Trn_AdministrativePostCodeWithVacancies.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>View Post Code With Vacancies</b></a>
                                    </li>
                                    <li class="nav-item dropdown ">
                                        <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Report</b></a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="../Transaction/Rpt_DistWiseCounting.aspx">District Wise Counting</a></li>
                                            <li><a class="dropdown-item" href="../Transaction/Rpt_BlockWiseCounting.aspx">Block Wise Counting</a></li>

                                        </ul>
                                    </li>
                                </li>
                            </ul>

                        </div>
                    </div>
                </nav>

                <fieldset>
                    <legend>District Wise Counting Report / जिला वार सांख्यिकी रिपोर्ट</legend>
                    <div class="row form-group">
                        <div class="col-md-3">
                            <label class="font-bold" id="txtId">
                                District Name<br />
                                जिला का नाम<span style="color: red">*</span></label>
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School Name !'></i>" ControlToValidate="ddlDistrict" Display="Dynamic"></asp:RequiredFieldValidator><%--OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged" AutoPostBack="true"--%>
                            <asp:DropDownList runat="server" CssClass="form-control select2" ID="ddlDistrict">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                                <asp:ListItem Value="1">All</asp:ListItem>
                                <asp:ListItem Value="2">Bhopal</asp:ListItem>
                                <asp:ListItem Value="3">Guna</asp:ListItem>
                                <asp:ListItem Value="4">Dewas</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3 mt-5">
                            <asp:Button runat="server" class="btn btn-success btn-rounded" OnClick="btnSave_Click" ID="btnSave" Text="Search" />
                        </div>
                    </div>
                </fieldset>
                <fieldset runat="server" id="filedDetails" visible="false">
                    <legend>Details</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table text-center table-bordered">

                                    <tr class="card-header">
                                        <th>Sr. No.<br />
                                            सरल क्र.</th>
                                        <th>District<br />
                                            जिला</th>
                                        <th>Received Application<br />
                                            प्राप्त आवेदन</th>
                                        <th>Approved Application<br />
                                            स्वीकृत आवेदन</th>
                                        <th>Pending Application<br />
                                            लंबित आवेदन</th>
                                        <th>Reject Application<br />
                                            निराकृत आवेदन</th>
                                    </tr>

                                    <tr>
                                        <td>1</td>
                                        <td>Bhopal</td>
                                        <td>15</td>
                                        <td>10</td>
                                        <td>2</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Vidisha</td>
                                        <td>20</td>
                                        <td>15</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Ashta</td>
                                        <td>25</td>
                                        <td>10</td>
                                        <td>10</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>Betul</td>
                                        <td>65</td>
                                        <td>30</td>
                                        <td>20</td>
                                        <td>15</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>Rajgarh</td>
                                        <td>40</td>
                                        <td>10</td>
                                        <td>10</td>
                                        <td>10</td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>Harda</td>
                                        <td>25</td>
                                        <td>5</td>
                                        <td>5</td>
                                        <td>15</td>
                                    </tr>
                                    <tr>
                                        <td>7</td>
                                        <td>Morena</td>
                                        <td>36</td>
                                        <td>16</td>
                                        <td>5</td>
                                        <td>20</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>Panna</td>
                                        <td>20</td>
                                        <td>5</td>
                                        <td>15</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>9</td>
                                        <td>Dewas</td>
                                        <td>54</td>
                                        <td>45</td>
                                        <td>5</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>Shajapur</td>
                                        <td>24</td>
                                        <td>19</td>
                                        <td>4</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>Satna</td>
                                        <td>20</td>
                                        <td>10</td>
                                        <td>6</td>
                                        <td>4</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset runat="server" id="field" visible="false">
                    <legend>Details</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput1" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table text-center table-bordered">

                                    <tr class="card-header">
                                        <th>Sr. No.<br />
                                            सरल  क्र.</th>
                                        <th>District<br />
                                            जिला</th>
                                        <th>Received Application<br />
                                            प्राप्त आवेदन</th>
                                        <th>Approved Application<br />
                                            स्वीकृत आवेदन</th>
                                        <th>Pending Application<br />
                                            लंबित आवेदन</th>
                                        <th>Reject Application<br />
                                            निराकृत आवेदन</th>
                                    </tr>

                                    <tr>
                                        <td>1</td>
                                        <td>Bhopal</td>
                                        <td>15</td>
                                        <td>10</td>
                                        <td>2</td>
                                        <td>3</td>
                                    </tr>
                                    <%--<tr>
                                        <td>2</td>
                                        <td>Vidisha</td>
                                        <td>20</td>
                                        <td>15</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Sehore </td>
                                        <td>25</td>
                                        <td>10</td>
                                        <td>10</td>
                                        <td>5</td>
                                    </tr>--%>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset runat="server" id="details" visible="false">
                    <legend>Details</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
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
                            <div class="table-responsive">
                                <table class="table text-center  table-bordered">
                                    <tr class="card-header">
                                        <th>Sr. No.<br />
                                            सरल क्र.</th>
                                        <th>District<br />
                                            जिला</th>
                                        <th>Received Application<br />
                                            प्राप्त आवेदन</th>
                                        <th>Approved Application<br />
                                            स्वीकृत आवेदन</th>
                                        <th>Pending Application<br />
                                            लंबित आवेदन</th>
                                        <th>Reject Application<br />
                                            निराकृत आवेदन</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Guna</td>
                                        <td>15</td>
                                        <td>10</td>
                                        <td>2</td>
                                        <td>3</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>

                </fieldset>
                <fieldset runat="server" id="detailstbl" visible="false">
                    <legend>Details</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput5" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table text-center table-bordered">
                                    <tr class="card-header">
                                        <th>Sr. No.<br />
                                            सरल  क्र.</th>
                                        <th>District<br />
                                            जिला</th>
                                        <th>Received Application<br />
                                            प्राप्त आवेदन</th>
                                        <th>Approved Application<br />
                                            स्वीकृत आवेदन</th>
                                        <th>Pending Application<br />
                                            लंबित आवेदन</th>
                                        <th>Reject Application<br />
                                            निराकृत आवेदन</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Dewas</td>
                                        <td>15</td>
                                        <td>10</td>
                                        <td>2</td>
                                        <td>3</td>
                                    </tr>
                                    <%--<tr>
                                        <td>2</td>
                                        <td>Dewas</td>
                                        <td>20</td>
                                        <td>15</td>
                                        <td>0</td>
                                        <td>5</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Dewas </td>
                                        <td>25</td>
                                        <td>10</td>
                                        <td>10</td>
                                        <td>5</td>
                                    </tr>--%>
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

