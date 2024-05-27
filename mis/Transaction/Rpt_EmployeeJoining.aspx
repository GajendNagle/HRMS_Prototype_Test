<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_EmployeeJoining.aspx.cs" Inherits="mis_Transaction_Rpt_EmployeeJoining" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Employee Joining Report/कर्मचारी ज्वाइनिंग रिपोर्ट</h4>

            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                        <li class="breadcrumb-item active">Employee Joining Report</li>
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
                                <li>

                                    <a class="nav-link  text-white " href="EmployeeJoiningInOfficeNotes.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                                </li>
                                <li>

                                    <a class="nav-link  text-white " href="EmployeeJoiningInOffice.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Employee Joining In Office
                                    </b></a>


                                </li>

                                <li>

                                    <a class="nav-link  text-white " href="Rpt_EmployeeJoining.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>
                                        Report
                                    </b></a>

                                </li>
                            </ul>

                        </div>
                    </div>
                </nav>
                <fieldset class="mt-4">
                    <legend>Employee Joining Report/कर्मचारी ज्वाइनिंग रिपोर्ट</legend>
                    <div class="row">

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>District Name/ जिला का नाम<span style="color: red">*</span></label>

                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School Name !'></i>" ControlToValidate="ddlDistrictN" Display="Dynamic"></asp:RequiredFieldValidator>

                                <asp:DropDownList runat="server" ID="ddlDistrictN"  CssClass="select2">
                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                    <asp:ListItem>Bhopal</asp:ListItem>
                                    <asp:ListItem>Raisen</asp:ListItem>
                                    <asp:ListItem>Sehore</asp:ListItem>
                                    <asp:ListItem>Gwalior</asp:ListItem>

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
                <fieldset visible="false" runat="server" id="tblDetail" class="mt-2">

                    <legend>Details</legend>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead>
                                        <tr>

                                            <th rowspan="2">Sr.No.<br />
                                                सरल क्र.</th>
                                            <th rowspan="2">Employee ID-Name
                                    <br />
                                                कर्मचारी आईडी-नाम</th>
                                            <th rowspan="2">Employee Designation<br />
                                                कर्मचारी के पद का नाम</th>
                                            <th rowspan="2">Panel<br />
                                                पैनल</th>
                                            <th colspan="3" class="text-center">Current Location<br />
                                                वर्तमान स्थान</th>

                                            <th colspan="3" class="text-center">New Location<br />
                                                नया स्थान</th>

                                        </tr>
                                        <tr>
                                            <td>District<br />
                                                जिला</td>
                                            <td>Block<br />
                                                ब्लॉक</td>
                                            <td>Sankul Code<br />
                                                संकुल कोड</td>
                                            <td>District<br />
                                                जिला</td>
                                            <td>Block<br />
                                                तहसील</td>
                                            <td>Sankul Code<br />
                                                संकुल कोड</td>
                                        </tr>

                                    </thead>

                                    <tbody>
                                        <tr>

                                            <td>1</td>
                                            <td>U643545-Ram Prasad</td>
                                            <td>सहायक शिक्षक</td>
                                            <td>SSS-1 Hindi</td>
                                            <td>Bhopal</td>
                                            <td>Berasia</td>
                                            <td>23320400117-GOVT HSS Bhopal</td>
                                            <td>Raisen</td>
                                            <td>Badi</td>
                                            <td>22110612406-GOVT HSS KHAJURI KALAN</td>
                                        </tr>

                                        <tr>

                                            <td>2</td>
                                            <td>E644521-Shri Kant</td>
                                            <td>प्राथमिक अध्यापक(PRT)</td>
                                            <td>SSS-2 English</td>
                                            <td>Bhopal</td>
                                            <td>Phanda URBAN-New City</td>
                                            <td>23340603802-GAYANDEEP M S CHANDAN PIPALIYA</td>
                                            <td>Raisen</td>
                                            <td>Gairatganj</td>
                                            <td>23320110008-GOVT HSS GUNGA</td>
                                        </tr>

                                        <tr>

                                            <td>3</td>
                                            <td>M642821-Shekhar Yadav</td>
                                            <td>स्नातकोत्तर शिक्षक(PGT)"</td>
                                            <td>SSS-3 Sanskrit</td>
                                            <td>Bhopal</td>
                                            <td>Phanda URBAN-Old City</td>
                                            <td>23340202202-BEGUMGANJ- Girls H.S.S. BEGUMGANJ</td>
                                            <td>Raisen</td>
                                            <td>Begamganj</td>
                                            <td>23340101207-BEGUMGANJ- Girls H.S.S. BEGUMGANJ</td>
                                        </tr>

                                        <tr>

                                            <td>4</td>
                                            <td>B644521-Manohar Sharma</td>
                                            <td>स्नातकोत्तर शिक्षक (TCT)</td>
                                            <td>SSS-4 Mathematics</td>
                                            <td>Bhopal</td>
                                            <td>Phanda URBAN-New City</td>
                                            <td>23320400117-OBEDULLAGANJ-Govt. H.S.S. UMRAOGANJ</td>
                                            <td>Raisen</td>
                                            <td>Sanchi</td>
                                            <td>23340603802-SANCHI- Girls H.S.S. RAISEN</td>
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

