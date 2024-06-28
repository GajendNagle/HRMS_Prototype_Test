<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_CancelTransfer.aspx.cs" Inherits="mis_Transaction_Rpt_CancelTransfer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        th{
            white-space:nowrap;
        }
        table th {
            font-weight: 400 !important;
            width: fit-content;
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
                            <a href="#CancelTransferOrder" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Cancel Transfer Order</span></a>
                        </li>
                        <li class="breadcrumb-item">Cancel Transfer Report</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-9">
                    <h4 class="card-title">Cancel Transfer Report / स्थानांतरण रिपोर्ट रद्द करें</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset class="mt-3">
                <legend>Cancel Transfer Details / स्थानांतरण विवरण रद्द करें</legend>
                <div class="row form-group align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                        <label id="txtId">
                            Select District Name<br />
                            जिला का चयन करें<span style="color: red">*</span></label>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School Name !'></i>" ControlToValidate="ddlDistrict" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:DropDownList runat="server" CssClass="form-control select2" ID="ddlDistrict">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                            <asp:ListItem Value="1">All</asp:ListItem>
                            <asp:ListItem Value="2">Bhopal</asp:ListItem>
                            <asp:ListItem Value="3">Guna</asp:ListItem>
                            <asp:ListItem Value="4">Datia</asp:ListItem>
                            <asp:ListItem Value="5">Dewas</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <asp:Button runat="server" class="btn btn-success btn w-lg btn-border" OnClick="btnSave_Click" ID="btnSave" Text="Search" />

                        <a href="Rpt_CancelTransfer.aspx" class=" btn btn-outline-danger btn w-lg btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>
            <div id="dv_info" runat="server" visible="false">
                <fieldset id="DetailsFill" runat="server">
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
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Sr. No.<br />
                                                सरल क्र.</th>
                                            <th>Current Location<br />
                                                वर्तमान स्थान</th>
                                            <th>ID-Employee Name<br />
                                                कर्मचारी का नाम-आई.डी.</th>
                                            <th>Promotion Order No.<br />
                                                पदोन्नति आदेश क्र.</th>
                                            <th>Promotion Order Date<br />
                                                पदोन्नति आदेश दिनांक</th>
                                            <th>New Location<br />
                                                नया स्थान</th>
                                            <th>Cancel Order No.<br />
                                                निरस्त आदेश क्र.</th>
                                            <th>Cancel Order Date<br />
                                                निरस्त आदेश दिनांक</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>1</td>
                                        <td>Bhopal</td>
                                        <td>TU4562-Udairam</td>
                                        <td>5455</td>
                                        <td>05/07/2023</td>
                                        <td>Betul</td>
                                        <td>55345</td>
                                        <td>09/05/2024</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Bhopal</td>
                                        <td>PS5548-Radha</td>
                                        <td>4512</td>
                                        <td>10/10/2023</td>
                                        <td>Gwalior</td>
                                        <td>58755</td>
                                        <td>20/08/2022</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Bhopal</td>
                                        <td>UT8852-Kailash</td>
                                        <td>5412</td>
                                        <td>05/05/2020</td>
                                        <td>Khandava</td>
                                        <td>38632</td>
                                        <td>29/08/2021</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>Bhopal</td>
                                        <td>TU6744-Sagar</td>
                                        <td>9554</td>
                                        <td>15/02/2024</td>
                                        <td>Singrauli</td>
                                        <td>32452</td>
                                        <td>24/10/2018</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>Bhopal</td>
                                        <td>VB1 963-Dhannalal</td>
                                        <td>6561</td>
                                        <td>25/08/2019</td>
                                        <td>Dewas</td>
                                        <td>65652</td>
                                        <td>25/04/2021</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <fieldset id="Detail" runat="server" visible="false">
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
                            <input type="text" id="searchInput1" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Sr. No.<br />
                                            सरल क्र.</th>
                                        <th>Current Location <br />
                                            वर्तमान स्थान</th>
                                        <th>Employee ID-Name<br />
                                            कर्मचारी का आई.डी-नाम</th>
                                        <th>Promotion Order No. <br />
                                            पदोन्नति आदेश क्र.</th>
                                        <th>Promotion Order Date <br />
                                            पदोन्नति आदेश दिनांक</th>
                                        <th>New Location<br />
                                            नया स्थान</th>
                                        <th>Cancel Order No. <br />
                                            निरस्त आदेश क्र.</th>
                                        <th>Cancel Order Date <br />
                                            निरस्त आदेश दिनांक</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>Bhopal</td>
                                    <td>UT4562-Udyaram</td>
                                    <td>5455</td>
                                    <td>05/07/2023</td>
                                    <td>Betul</td>
                                    <td>55345</td>
                                    <td>09/05/2024</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Jhaabua</td>
                                    <td>PS6548-Radha</td>
                                    <td>4512</td>
                                    <td>10/10/2023</td>
                                    <td>Gwalior</td>
                                    <td>58755</td>
                                    <td>20/08/2022</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Murena</td>
                                    <td>TU2852-Kailash</td>
                                    <td>5412</td>
                                    <td>05/05/2020</td>
                                    <td>Khandava</td>
                                    <td>38632</td>
                                    <td>29/08/2021</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Vidisha</td>
                                    <td>TS6744-Sagar</td>
                                    <td>9554</td>
                                    <td>15/02/2024</td>
                                    <td>Singrauli</td>
                                    <td>32452</td>
                                    <td>24/10/2018</td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Sagar</td>
                                    <td>VG2963-Dhannalal</td>
                                    <td>6561</td>
                                    <td>25/08/2019</td>
                                    <td>Dewas</td>
                                    <td>65652</td>
                                    <td>25/04/2021</td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>Gwalior</td>
                                    <td>SM5456-Mohan</td>
                                    <td>9632</td>
                                    <td>27/06/2017</td>
                                    <td>Indore</td>
                                    <td>46218</td>
                                    <td>04/01/2024</td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>Sanchi</td>
                                    <td>DS5512-Sohan</td>
                                    <td>5543</td>
                                    <td>16/08/2016</td>
                                    <td>Bhopal</td>
                                    <td>54121</td>
                                    <td>07/07/2021</td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td>Bhopal</td>
                                    <td>FR3512-Kailash</td>
                                    <td>5532</td>
                                    <td>06/08/2015</td>
                                    <td>Sanchi</td>
                                    <td>85234</td>
                                    <td>17/07/2021</td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td>Bhopal</td>
                                    <td>NE2812-Laxminarayan</td>
                                    <td>8523</td>
                                    <td>06/08/2015</td>
                                    <td>Ranchi</td>
                                    <td>23654</td>
                                    <td>07/09/2021</td>
                                </tr>
                                <tr>
                                    <td>10</td>
                                    <td>Jabalpur</td>
                                    <td>PL9612-Laxmi</td>
                                    <td>9635</td>
                                    <td>06/04/2015</td>
                                    <td>Ranchi</td>
                                    <td>74135</td>
                                    <td>27/05/2023</td>
                                </tr>
                                <tr>
                                    <td>11</td>
                                    <td>Jhaabua</td>
                                    <td>DA4412-Rachna</td>
                                    <td>7532</td>
                                    <td>16/08/2011</td>
                                    <td>Gwalior</td>
                                    <td>86541</td>
                                    <td>17/06/2021</td>
                                </tr>
                                <tr>
                                    <td>12</td>
                                    <td>Ranchi</td>
                                    <td>DFG6585-Rahul</td>
                                    <td>9512</td>
                                    <td>06/11/2019</td>
                                    <td>Gwalior</td>
                                    <td>12356</td>
                                    <td>07/11/2021</td>
                                </tr>
                                <tr>
                                    <td>13</td>
                                    <td>Murena</td>
                                    <td>SW5512-Rohan</td>
                                    <td>4568</td>
                                    <td>06/08/2015</td>
                                    <td>Khandava</td>
                                    <td>52369</td>
                                    <td>07/01/2021</td>
                                </tr>
                                <tr>
                                    <td>14</td>
                                    <td>Guna</td>
                                    <td>UL2512-Anil</td>
                                    <td>1236</td>
                                    <td>06/08/2015</td>
                                    <td>Khandava</td>
                                    <td>74125</td>
                                    <td>07/11/2022</td>
                                </tr>
                                <tr>
                                    <td>15</td>
                                    <td>Murena</td>
                                    <td>DR5852-Amit</td>
                                    <td>6547</td>
                                    <td>06/08/2015</td>
                                    <td>Vidisha</td>
                                    <td>96325</td>
                                    <td>11/07/2021</td>
                                </tr>
                                <tr>
                                    <td>16</td>
                                    <td>Jhaabua</td>
                                    <td>DU5582-Sagar</td>
                                    <td>78965</td>
                                    <td>06/08/2015</td>
                                    <td>Khandava</td>
                                    <td>53624</td>
                                    <td>07/07/2019</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset runat="server" id="detailGuna" visible="false">
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
                            <input type="text" id="searchInput2" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Sr. No.<br />
                                            सरल क्र.</th>
                                        <th>Current Location <br />
                                            वर्तमान स्थान</th>
                                        <th>ID-Employee Name <br />
                                            कर्मचारी का नाम-आई.डी.</th>
                                        <th>Promotion Order No. <br />
                                            पदोन्नति आदेश क्र.</th>
                                        <th>Promotion Order Date <br />
                                            पदोन्नति आदेश दिनांक</th>
                                        <th>New Location<br />
                                            नया स्थान</th>
                                        <th>Cancel Order No. <br />
                                            निरस्त आदेश क्र.</th>
                                        <th>Cancel Order Date <br />
                                            निरस्त आदेश दिनांक</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>Guna</td>
                                    <td>TU4562-Udairam</td>
                                    <td>5455</td>
                                    <td>05/07/2023</td>
                                    <td>Betul</td>
                                    <td>55345</td>
                                    <td>09/05/2024</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Guna</td>
                                    <td>PS5548-Radha</td>
                                    <td>4512</td>
                                    <td>10/10/2023</td>
                                    <td>Gwalior</td>
                                    <td>58755</td>
                                    <td>20/08/2022</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Guna</td>
                                    <td>UT8852-Kailash</td>
                                    <td>5412</td>
                                    <td>05/05/2020</td>
                                    <td>Khandava</td>
                                    <td>38632</td>
                                    <td>29/08/2021</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Guna</td>
                                    <td>TU6744-Sagar</td>
                                    <td>9554</td>
                                    <td>15/02/2024</td>
                                    <td>Singrauli</td>
                                    <td>32452</td>
                                    <td>24/10/2018</td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Guna</td>
                                    <td>VB1 963-Dhannalal</td>
                                    <td>6561</td>
                                    <td>25/08/2019</td>
                                    <td>Dewas</td>
                                    <td>65652</td>
                                    <td>25/04/2021</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset runat="server" id="detailDatia" visible="false">
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
                            <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Sr. No.<br />
                                            सरल क्र.</th>
                                        <th>Current Location <br />
                                            वर्तमान स्थान</th>
                                        <th>Employee ID-Name <br />
                                            कर्मचारी का आई.डी-नाम</th>
                                        <th>Promotion Order No. <br />
                                            पदोन्नति आदेश क्र.</th>
                                        <th>Promotion Order Date <br />
                                            पदोन्नति आदेश दिनांक</th>
                                        <th>New Location<br />
                                            नया स्थान</th>
                                        <th>Cancel Order No. <br />
                                            निरस्त आदेश क्र.</th>
                                        <th>Cancel Order Date <br />
                                            निरस्त आदेश दिनांक</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>Datia</td>
                                    <td>TU4562-Udairam</td>
                                    <td>5455</td>
                                    <td>05/07/2023</td>
                                    <td>Betul</td>
                                    <td>55345</td>
                                    <td>09/05/2024</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Datia</td>
                                    <td>PS5548-Radha</td>
                                    <td>4512</td>
                                    <td>10/10/2023</td>
                                    <td>Gwalior</td>
                                    <td>58755</td>
                                    <td>20/08/2022</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Datia</td>
                                    <td>UT8852-Kailash</td>
                                    <td>5412</td>
                                    <td>05/05/2020</td>
                                    <td>Khandava</td>
                                    <td>38632</td>
                                    <td>29/08/2021</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Datia</td>
                                    <td>TU6744-Sagar</td>
                                    <td>9554</td>
                                    <td>15/02/2024</td>
                                    <td>Singrauli</td>
                                    <td>32452</td>
                                    <td>24/10/2018</td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Datia</td>
                                    <td>VB1 963-Dhannalal</td>
                                    <td>6561</td>
                                    <td>25/08/2019</td>
                                    <td>Dewas</td>
                                    <td>65652</td>
                                    <td>25/04/2021</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset runat="server" id="detailDewas" visible="false">
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
                            <input type="text" id="searchInput4" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Sr. No.<br />
                                            सरल क्र.</th>
                                        <th>Current Location <br />
                                            वर्तमान स्थान</th>
                                        <th>Employee ID-Name <br />
                                            कर्मचारी का आई.डी-नाम</th>
                                        <th>Promotion Order No.<br />
                                            पदोन्नति आदेश क्र.</th>
                                        <th>Promotion Order Date <br />
                                            पदोन्नति आदेश दिनांक</th>
                                        <th>New Location<br />
                                            नया स्थान</th>
                                        <th>Cancel Order No. <br />
                                            निरस्त आदेश क्र.</th>
                                        <th>Cancel Order Date <br />
                                            निरस्त आदेश दिनांक</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>Dewas</td>
                                    <td>TU4562-Udairam</td>
                                    <td>5455</td>
                                    <td>05/07/2023</td>
                                    <td>Betul</td>
                                    <td>55345</td>
                                    <td>09/05/2024</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Dewas</td>
                                    <td>PS5548-Radha</td>
                                    <td>4512</td>
                                    <td>10/10/2023</td>
                                    <td>Gwalior</td>
                                    <td>58755</td>
                                    <td>20/08/2022</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Dewas</td>
                                    <td>UT8852-Kailash</td>
                                    <td>5412</td>
                                    <td>05/05/2020</td>
                                    <td>Khandava</td>
                                    <td>38632</td>
                                    <td>29/08/2021</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Dewas</td>
                                    <td>TU6744-Sagar</td>
                                    <td>9554</td>
                                    <td>15/02/2024</td>
                                    <td>Singrauli</td>
                                    <td>32452</td>
                                    <td>24/10/2018</td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Dewas</td>
                                    <td>VB1 963-Dhannalal</td>
                                    <td>6561</td>
                                    <td>25/08/2019</td>
                                    <td>Dewas</td>
                                    <td>65652</td>
                                    <td>25/04/2021</td>
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

