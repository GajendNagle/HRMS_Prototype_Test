<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_BlockWiseCounting.aspx.cs" Inherits="mis_Transaction_Rpt_BlockWiseCounting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Block Wise Counting Report/ब्लॉक वार सांख्यिकी रिपोर्ट</h4>

            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                        <li class="breadcrumb-item"><a href="../HRMS/Trn_AdministrativeTransfer.aspx" title="click to go on">Administrative Level Transfer</a></li>
                        <li class="breadcrumb-item active">Block Wise Counting Report</li>
                    </ol>
                </div>
            </div>
        </div>

        <div class="card mt-3 shadow">
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
                                    <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold">Transfer Process</b></a>
                                    <ul class="dropdown-menu">

                                        <li><a class="dropdown-item" href="../HRMS/Trn_AdministrativeTransferApply.aspx">Transfer</a></li>
                                        <li><a class="dropdown-item" href="../HRMS/AdministrativeTransferDraftLetter.aspx">Print Draft Transfer Or Update Application</a></li>
                                        <li><a class="dropdown-item" href="../HRMS/AdministrativeGenerateTransferOrder.aspx">Generate Transfer Order</a></li>
                                        <li><a class="dropdown-item" href="../HRMS/AdministrativePrintTransferOrder.aspx">Print Transfer Order</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-white " href="../HRMS/Trn_AdministrativePostCodeWithVacancies.aspx" role="button"><b class="font-16 font-bold">View Post Code With Vacancies</b></a>
                                </li>
                                <li class="nav-item dropdown ">
                                    <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold">Report</b></a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="../Transaction/Rpt_DistWiseCounting.aspx">District Wise Counting</a></li>
                                        <li><a class="dropdown-item" href="../Transaction/Rpt_BlockWiseCounting.aspx">Block Wise Counting</a></li>
                                    </ul>
                                </li>
                            </ul>

                        </div>
                    </div>
                </nav>
                <fieldset>

                    <legend>Block Wise Counting Report/ब्लॉक वार सांख्यिकी रिपोर्ट</legend>

                    <div class="row">

                        <div class="col-md-3">
                            <div class="form-group">


                                <label>District Name/ जिला का नाम<span style="color: red">*</span></label>

                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School Name !'></i>" ControlToValidate="ddlDistrictN" Display="Dynamic"></asp:RequiredFieldValidator>

                                <asp:DropDownList runat="server" ID="ddlDistrictN" CssClass="select2">
                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                    <asp:ListItem Value="1">Bhopal</asp:ListItem>
                                    <asp:ListItem Value="2">Raisen</asp:ListItem>
                                    <asp:ListItem Value="3">Sehore</asp:ListItem>
                                    <asp:ListItem Value="4">Vidisha</asp:ListItem>
                                    <asp:ListItem Value="5">Gwalior</asp:ListItem>
                                    <asp:ListItem Value="6">All</asp:ListItem>

                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="col-md-4 mt-4">
                            <div class="form-group">

                                <asp:Button runat="server" ID="btn" Text="Search" CssClass="btn btn-success btn-rounded" OnClick="btn_Click" />
                            </div>
                        </div>

                    </div>

                </fieldset>



                <fieldset id="table1" runat="server" visible="false">
                    <legend>Details</legend>
                    <div class="row">

                        <div class="col-md-12">

                            <div class="table-responsive">

                                <table class="table table-bordered text-center">
                                    <thead>

                                        <tr>
                                            <th>District<br />
                                                जिला</th>
                                            <th>Block
                                                <br />
                                                ब्लॉक</th>
                                            <th>Sankul Code
                                                <br />
                                                संकुल कोड</th>
                                            <th>Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th>Approved Application<br />
                                                स्वीकृत आवेदन</th>
                                            <th>Pending Application<br />
                                                लंबित आवेदन</th>
                                            <th>Reject Application<br />
                                                निराकृत आवेदन</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td rowspan="5" style="padding-top: 13%">Bhopal</td>
                                            <td>Phanda URBAN-Old City</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Phanda URBAN-New City</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>70</td>
                                            <td>40</td>
                                            <td>20</td>
                                            <td>10</td>
                                        </tr>
                                        <tr>
                                            <td>Phanda Gramin</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>50</td>
                                            <td>20</td>
                                            <td>20</td>
                                            <td>10</td>
                                        </tr>
                                        <tr>
                                            <td>Berasia</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>50</td>
                                            <td>30</td>
                                            <td>15</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Huzur</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>


                <fieldset id="table2" runat="server" visible="false">

                    <legend>Details</legend>
                    <div class="row">

                        <div class="col-md-12">

                            <div class="table-responsive">

                                <table class="table table-bordered text-center">
                                    <thead>

                                        <tr>

                                            <th>District<br />
                                                जिला</th>
                                            <th>Block
                <br />
                                                ब्लॉक</th>
                                            <th>Sankul Code
                <br />
                                                संकुल कोड</th>
                                            <th>Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th>Approved Application<br />
                                                स्वीकृत आवेदन</th>
                                            <th>Pending Application<br />
                                                लंबित आवेदन</th>
                                            <th>Reject Application<br />
                                                निराकृत आवेदन</th>

                                        </tr>
                                    </thead>

                                    <tbody>
                                        <tr>
                                            <td rowspan="6" style="padding-top: 15%">Raisen</td>
                                            <td>Badi</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Begamganj</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Gairatganj</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Obedullaganj</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Sanchi</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Silwani</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                    </tbody>

                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>


                <fieldset id="table3" runat="server" visible="false">

                    <legend>Details</legend>
                    <div class="row">

                        <div class="col-md-12">

                            <div class="table-responsive">

                                <table class="table table-bordered text-center">
                                    <thead>

                                        <tr>

                                            <th>District<br />
                                                जिला</th>
                                            <th>Block
                                                <br />
                                                ब्लॉक</th>
                                            <th>Sankul Code
                                                <br />
                                                संकुल कोड</th>
                                            <th>Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th>Approved Application<br />
                                                स्वीकृत आवेदन</th>
                                            <th>Pending Application<br />
                                                लंबित आवेदन</th>
                                            <th>Reject Application<br />
                                                निराकृत आवेदन</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td rowspan="5" style="padding-top: 15%">Sehore</td>
                                            <td>Ashta</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Budni</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Ichhawar</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Nasrullaganj</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Sehore</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>


                <fieldset id="table4" runat="server" visible="false">

                    <legend>Details</legend>
                    <div class="row">

                        <div class="col-md-12">

                            <div class="table-responsive">

                                <table class="table table-bordered text-center">
                                    <thead>

                                        <tr>

                                            <th>District<br />
                                                जिला</th>
                                            <th>Block
                                <br />
                                                ब्लॉक</th>
                                            <th>Sankul Code
                                <br />
                                                संकुल कोड</th>
                                            <th>Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th>Approved Application<br />
                                                स्वीकृत आवेदन</th>
                                            <th>Pending Application<br />
                                                लंबित आवेदन</th>
                                            <th>Reject Application<br />
                                                निराकृत आवेदन</th>

                                        </tr>
                                    </thead>

                                    <tbody>
                                        <tr>
                                            <td rowspan="6" style="padding-top: 15%">Vidisha</td>
                                            <td>Basoda</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Gyaraspur</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Kurwai</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Sironj</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Sanchi</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Vidisha</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>


                <fieldset id="table5" runat="server" visible="false">

                    <legend>Details</legend>
                    <div class="row">

                        <div class="col-md-12">

                            <div class="table-responsive">

                                <table class="table table-bordered text-center">
                                    <thead>

                                        <tr>

                                            <th>District<br />
                                                जिला</th>
                                            <th>Block
                                <br />
                                                ब्लॉक</th>
                                            <th>Sankul Code
                                <br />
                                                संकुल कोड</th>
                                            <th>Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th>Approved Application<br />
                                                स्वीकृत आवेदन</th>
                                            <th>Pending Application<br />
                                                लंबित आवेदन</th>
                                            <th>Reject Application<br />
                                                निराकृत आवेदन</th>

                                        </tr>
                                    </thead>

                                    <tbody>
                                        <tr>
                                            <td rowspan="4" style="padding-top: 11%">Gwalior</td>
                                            <td>Bhitarwar</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Dabra</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Ghatigaon</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Morar</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>

                <fieldset id="table6" runat="server" visible="false">

                    <legend>Details</legend>
                    <div class="row">

                        <div class="col-md-12">

                            <div class="table-responsive">

                                <table class="table table-bordered text-center">
                                    <thead>

                                        <tr>
                                            <th>District<br />
                                                जिला</th>
                                            <th>Block
                                                <br />
                                                ब्लॉक</th>
                                            <th>Sankul Code
                                                <br />
                                                संकुल कोड</th>
                                            <th>Received Application<br />
                                                प्राप्त आवेदन</th>
                                            <th>Approved Application<br />
                                                स्वीकृत आवेदन</th>
                                            <th>Pending Application<br />
                                                लंबित आवेदन</th>
                                            <th>Reject Application<br />
                                                निराकृत आवेदन</th>

                                        </tr>
                                    </thead>


                                    <tbody>
                                        <tr>
                                            <td rowspan="5" style="padding-top: 14%">Bhopal</td>
                                            <td>Phanda URBAN-Old City</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>

                                            <td>Phanda URBAN-New City</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Phanda Gramin</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Berasia</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Huzur</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td rowspan="6" style="padding-top: 16%">Raisen</td>
                                            <td>Badi</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>20</td>
                                            <td>10</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Begamganj</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>60</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>10</td>
                                        </tr>
                                        <tr>
                                            <td>Gairatganj</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Obedullaganj</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>55</td>
                                            <td>20</td>
                                            <td>20</td>
                                            <td>15</td>
                                        </tr>
                                        <tr>
                                            <td>Sanchi</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>50</td>
                                            <td>20</td>
                                            <td>10</td>
                                            <td>20</td>
                                        </tr>
                                        <tr>
                                            <td>Silwani</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>

                                        <tr>
                                            <td rowspan="5" style="padding-top: 17%">Sehore</td>
                                            <td>Ashta</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Budni</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Ichhawar</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Nasrullaganj</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Sehore</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>

                                        <tr>
                                            <td rowspan="6" style="padding-top: 20%">Vidisha</td>
                                            <td>Basoda</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>40</td>
                                            <td>20</td>
                                            <td>10</td>
                                            <td>10</td>
                                        </tr>
                                        <tr>
                                            <td>Gyaraspur</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Kurwai</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Sironj</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>20</td>
                                            <td>10</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Sanchi</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Vidisha</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>70</td>
                                            <td>40</td>
                                            <td>20</td>
                                            <td>10</td>
                                        </tr>

                                        <tr>
                                            <td rowspan="4" style="padding-top: 12%">Gwalior</td>
                                            <td>Bhitarwar</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>5</td>
                                            <td>5</td>
                                        </tr>
                                        <tr>
                                            <td>Dabra</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>60</td>
                                            <td>30</td>
                                            <td>20</td>
                                            <td>10</td>
                                        </tr>
                                        <tr>
                                            <td>Ghatigaon</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>50</td>
                                            <td>20</td>
                                            <td>10</td>
                                            <td>20</td>
                                        </tr>
                                        <tr>
                                            <td>Morar</td>
                                            <td>23320400117-MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</td>
                                            <td>40</td>
                                            <td>20</td>
                                            <td>10</td>
                                            <td>10</td>
                                        </tr>
                                    </tbody>
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

