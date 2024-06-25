<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_EmployeeJoining.aspx.cs" Inherits="mis_Transaction_Rpt_EmployeeJoining" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }
    </style>
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
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#EmployeeJoiningInOffice" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee Joining In Office</span></a>
                        </li>
                        <li class="breadcrumb-item">Employee Joining Report</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-9">
                    <h4 class="card-title">Employee Joining Report /
कर्मचारी ज्वाइनिंग रिपोर्ट</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset class="mt-4">
                <legend>Employee Joining Report / कर्मचारी ज्वाइनिंग रिपोर्ट</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select District Name
                                <br />
                                जिला का चयन करें <span style="color: red">*</span></label>
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School Name !'></i>" ControlToValidate="ddlDistrictN" Display="Dynamic"></asp:RequiredFieldValidator>

                            <asp:DropDownList runat="server" ID="ddlDistrictN" CssClass="select2">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                                <asp:ListItem>Bhopal</asp:ListItem>
                                <asp:ListItem>Raisen</asp:ListItem>
                                <asp:ListItem>Sehore</asp:ListItem>
                                <asp:ListItem>Gwalior</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">

                            <asp:Button runat="server" ID="btn" Text="Search" CssClass="btn btn-success btn w-lg btn-border" OnClick="btn_Click" />

                            <a href="Rpt_EmployeeJoining.aspx" class=" btn btn-outline-danger btn w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
        <fieldset visible="false" runat="server" id="tblDetail" class="mt-2">
            <legend>Details / विवरण </legend>
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
                            <thead>
                                <tr>
                                    <th rowspan="2">Sr.No.
                                        <br />
                                        सरल क्र.</th>
                                    <th rowspan="2">Employee ID-Name 
                                    <br />
                                        कर्मचारी आईडी-नाम</th>
                                    <th rowspan="2">Employee Designation
                                        <br />
                                        कर्मचारी के पद का नाम</th>
                                    <th rowspan="2">Panel
                                        <br />
                                        पैनल</th>
                                    <th colspan="3" class="text-center">Current Location
                                        <br />
                                        वर्तमान स्थान</th>

                                    <th colspan="3" class="text-center">New Location
                                        <br />
                                        नया स्थान</th>
                                </tr>
                                <tr>
                                    <td>District<br />
                                        जिला</td>
                                    <td>Block<br />
                                        ब्लॉक</td>
                                    <td>Sankul Code
                                        <br />
                                        संकुल कोड</td>
                                    <td>District<br />
                                        जिला</td>
                                    <td>Block<br />
                                        तहसील</td>
                                    <td>Sankul Code
                                        <br />
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

