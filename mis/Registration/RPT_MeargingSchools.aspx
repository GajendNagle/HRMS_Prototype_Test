<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="RPT_MeargingSchools.aspx.cs" Inherits="mis_Registration_RPT_MeargingSchools" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .underline {
            text-decoration: underline;
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
                            <a href="#sidebarUserManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School Directory</span></a>
                        </li>
                        <li class="breadcrumb-item">Reports</li>
                        <li class="breadcrumb-item">School Reports</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

        <div class="card mt-3 shadow">
            <div class="card-header">
                <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">School Merge Report/स्कूल मर्ज रिपोर्ट
                    </h4>
                </div>
            </div>
            </div>
            <div class="card-body">

                <fieldset>
                    <legend>School Merge Report/स्कूल मर्ज रिपोर्ट</legend>

                    <div class="row align-items-end">

                        <div class="col-md-3">
                            <label class="font-bold">Select Division Name/संभाग का नाम चुनें<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" CssClass="form-control select2">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Bhopal</asp:ListItem>
                                <asp:ListItem>Gwalior</asp:ListItem>
                                <asp:ListItem>Narmadapuram</asp:ListItem>
                                <asp:ListItem>Indore</asp:ListItem>
                                <asp:ListItem>Jabalpur</asp:ListItem>
                                <asp:ListItem>Rewa</asp:ListItem>
                                <asp:ListItem>Sagar</asp:ListItem>
                                <asp:ListItem>Shahdol</asp:ListItem>
                                <asp:ListItem>Ujjain</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <label class="font-bold">Select District Name/ जिले का नाम चुनें<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" CssClass="form-control select2">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Bhopal</asp:ListItem>
                                <asp:ListItem>Raisen</asp:ListItem>
                                <asp:ListItem>Rajgarh</asp:ListItem>
                                <asp:ListItem>Sehore</asp:ListItem>
                                <asp:ListItem>Vidisha</asp:ListItem>
                                <asp:ListItem>Ashoknagar</asp:ListItem>
                                <asp:ListItem>Shivpuri</asp:ListItem>
                                <asp:ListItem>Datia</asp:ListItem>
                                <asp:ListItem>Guna</asp:ListItem>
                                <asp:ListItem>Gwalior</asp:ListItem>
                                <asp:ListItem>Harda</asp:ListItem>
                                <asp:ListItem>Hoshangabad</asp:ListItem>
                                <asp:ListItem>Betul</asp:ListItem>
                                <asp:ListItem>Morena</asp:ListItem>
                                <asp:ListItem>Sheopur</asp:ListItem>
                                <asp:ListItem>Bhind</asp:ListItem>
                                <asp:ListItem>Barwani</asp:ListItem>
                                <asp:ListItem>Burhanpur</asp:ListItem>
                                <asp:ListItem>Dhar</asp:ListItem>
                                <asp:ListItem>Indore</asp:ListItem>
                                <asp:ListItem>Jhabua</asp:ListItem>
                                <asp:ListItem>Khandwa</asp:ListItem>
                                <asp:ListItem>Khargone</asp:ListItem>
                                <asp:ListItem>Alirajpur</asp:ListItem>
                                <asp:ListItem>Balaghat</asp:ListItem>
                                <asp:ListItem>Chhindwara</asp:ListItem>
                                <asp:ListItem>Jabalpur</asp:ListItem>
                                <asp:ListItem>Katni</asp:ListItem>
                                <asp:ListItem>Mandla</asp:ListItem>
                                <asp:ListItem>Narsinghpur</asp:ListItem>
                                <asp:ListItem>Seoni</asp:ListItem>
                                <asp:ListItem>Rewa</asp:ListItem>
                                <asp:ListItem>Satna</asp:ListItem>
                                <asp:ListItem>Sidhi</asp:ListItem>
                                <asp:ListItem>Singroli</asp:ListItem>
                                <asp:ListItem>Chhatarpur</asp:ListItem>
                                <asp:ListItem>Damoh</asp:ListItem>
                                <asp:ListItem>Panna</asp:ListItem>
                                <asp:ListItem>Sagar</asp:ListItem>
                                <asp:ListItem>Tikamgarh</asp:ListItem>
                                <asp:ListItem>Shahdol</asp:ListItem>
                                <asp:ListItem>Umaria</asp:ListItem>
                                <asp:ListItem>Dindori</asp:ListItem>
                                <asp:ListItem>Anuppur</asp:ListItem>
                                <asp:ListItem>Dewas</asp:ListItem>
                                <asp:ListItem>Mandsaur</asp:ListItem>
                                <asp:ListItem>Neemuch</asp:ListItem>
                                <asp:ListItem>Ratlam</asp:ListItem>
                                <asp:ListItem>Shajapur</asp:ListItem>
                                <asp:ListItem>Ujjain</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <label class="font-bold">Select Block Name/ ब्लॉक का नाम चुनें</label>
                            <asp:DropDownList runat="server" CssClass="form-control select2">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Agar</asp:ListItem>
                                <asp:ListItem>Barod</asp:ListItem>
                                <asp:ListItem>Nalkheda</asp:ListItem>
                                <asp:ListItem>Susner</asp:ListItem>
                                <asp:ListItem>Alirajpur</asp:ListItem>
                                <asp:ListItem>Bhabra</asp:ListItem>
                                <asp:ListItem>Katthiwara</asp:ListItem>
                                <asp:ListItem>Sondwa</asp:ListItem>
                                <asp:ListItem>Udaygarh</asp:ListItem>
                                <asp:ListItem>Jobat</asp:ListItem>
                                <asp:ListItem>Anuppur</asp:ListItem>
                                <asp:ListItem>Jaithari</asp:ListItem>
                                <asp:ListItem>Kotma</asp:ListItem>

                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                                <label class="font-bold">Select Sankul Name/संकुल नाम का चयन करें</label>
                                <asp:DropDownList CssClass="form-control select2" runat="server">
                                    <asp:ListItem>All</asp:ListItem>
                                    <asp:ListItem>AKBARPUR GOVT. HS</asp:ListItem>
                                    <asp:ListItem>BERASIA (BOYS) GOVT.HSS</asp:ListItem>
                                    <asp:ListItem>DHAMARRA GOVT. HS</asp:ListItem>
                                    <asp:ListItem>EENT KHEDI GOVT. HSS</asp:ListItem>
                                    <asp:ListItem>BAIRAGARH (BOYS) GOVT.HSS</asp:ListItem>
                                    <asp:ListItem>BERAISA (GIRLS) SN HSS</asp:ListItem>
                                    <asp:ListItem>BAGRODA GOVT. HS</asp:ListItem>
                                    <asp:ListItem>BARKHEDI (GIRLS) GOVT.HSS</asp:ListItem>
                                    <asp:ListItem>GOVINDPURA (GIRLS) GO.HSS</asp:ListItem>
                                    <asp:ListItem>GUNGA GOVT. HSS</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">From Date/की तिथि से</label>
                                <%--<asp:TextBox ID="TextBox1" placeholder="Select Date..." runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>--%>
                                <input type="date" class="form-control" placeholder="17/11/2023" />

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">To Date/तारीख तक</label>
                                <%--<asp:TextBox ID="txtPurchase" placeholder="Select Date..." runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>--%>
                                <input type="date" class="form-control" placeholder="17/11/2023" />

                            </div>
                        </div>
                        <div class="col-md-4 mt-5">
                            <div class="form-group ">
                                <asp:Button runat="server" Text="Search" OnClick="View1_Click" CssClass="btn w-lg btn-outline-success btn-rounded" />

                                <a href="RPT_MeargingSchools.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                            </div>
                        </div>
                    </div>

                    <%--</div>--%>
                </fieldset>
                <fieldset runat="server" id="report" visible="false">
                    <legend>Details/विवरण</legend>
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
                            <table class="table table-bordered table-responsive-lg" style="border: 2px">

                                <tbody>
                                    <tr class="card-header">
                                        <th colspan="4">Anchor School to be Merged (स्कूल जिसमे विलय करना हैं)</th>
                                        <th colspan="5">School to merge (स्कूल जिसका विलय करना हैं)</th>

                                    </tr>
                                    <tr>
                                        <th style="width: 5%">Sr. No./क्रमांक</th>
                                        <th>UDISE Code/UDISE कोड</th>
                                    <th>School Name/स्कूल के नाम</th>
                                        <th>Category/वर्ग</th>
                                        <th>Sr.No./क्रमांक</th>
                                        <th>Effective Date/प्रभावी तिथि</th>
                                        <th>UDISE Code/UDISE कोड</th>
                                         <th>School Name/स्कूल के नाम</th>
                                        <th>Category/वर्ग</th>

                                    </tr>
                                    <tr>
                                        <td rowspan="2">1</td>
                                        <td rowspan="2">23354946579</td>
                                        <td rowspan="2">Sarasvati Vidhya Mandir</td>
                                        <td rowspan="2">Upper Primary</td>
                                        <td>1</td>
                                        <td>07/12/2023</td>
                                        <td>23354566851</td>
                                        <td>Crist Academy School</td>
                                        <td>Primary</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>10/12/2023</td>
                                        <td>23359924351</td>
                                        <td>Rose Mary School</td>
                                        <td>Upper Primary</td>
                                    </tr>
                                    <tr>
                                        <td rowspan="2">2</td>
                                        <td rowspan="2">23354912798</td>
                                        <td rowspan="2">Bal Bharti School</td>
                                        <td rowspan="2">Higher Secondary</td>
                                        <td>1</td>
                                        <td>07/12/2023</td>
                                        <td>23354932167</td>
                                        <td>Delhi Public School</td>
                                        <td>Primary</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>10/12/2023</td>
                                        <td>23321684564</td>
                                        <td>Priyanka Convent School</td>
                                        <td>Secondary</td>
                                    </tr>

                                    <tr>
                                        <td rowspan="3">3</td>
                                        <td rowspan="3">23247946556</td>
                                        <td rowspan="3">Geetanjali Public School</td>
                                        <td rowspan="3">Higher Secondary</td>
                                        <td>1</td>
                                        <td>07/12/2023</td>
                                        <td>23124568523</td>
                                        <td>Modern Convent School</td>
                                        <td>Primary</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>10/12/2023</td>
                                        <td>23154698521</td>
                                        <td>MVM Public School</td>
                                        <td>Primary</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>10/12/2023</td>
                                        <td>23654896523</td>
                                        <td>Reema Vidhya Mandir</td>
                                        <td>Upper Primary</td>
                                    </tr>


                                </tbody>
                            </table>
                        </div>
                    </div>

                </fieldset>
                <%-- <fieldset>
                    <legend>Description</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="main-ul">

                                <li><strong>Division Name</strong>
                                    <ul>
                                        <li>User will be able to select the <strong>Division Name</strong> from dropdown and the data will be populated from <strong>Division master </strong>and cascade from <strong>State name.</strong> </li>
                                        <li>Division field is mandatory.</li>
                                    </ul>
                                </li>

                                <li><strong>District Name</strong>
                                    <ul>
                                        <li>User will be able to select <strong>District Name </strong>from dropdown and data will be populated from <strong>District master </strong>and data cascade from <strong>Division Master.</strong> </li>
                                        <li>District field is mandatory.</li>
                                    </ul>
                                </li>
                                <li><strong>Block Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Block Name</strong> from the dropdown and the data will be populated from the <strong>Block Master</strong> and data cascade from <strong>Division Master </strong>and<strong> District Master.</strong></li>
                                        <li>Block field is mandatory.</li>
                                    </ul>
                                </li>

                                <li><strong>Sankul Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Sankul  Name </strong>from the dropdown and the data will be populated from the  <strong>School Registration</strong> and data cascade from  <strong>Division Master, District Master, Block Name </strong>and<strong> School Category</strong>.</li>
                                    </ul>
                                </li>

                                <li><strong>From Date  </strong>
                                    <ul>
                                        <li>User should be able to enter or select the <strong>From Date</strong> and the calendar field should accept <strong>only date format.</strong></li>
                                        <li>Enter the date from which you require details into the <strong>"from date"</strong> field.</li>
                                    </ul>
                                </li>

                                <li><strong>To Date </strong>
                                    <ul>
                                        <li>User should be able to enter or select the <strong>To Date</strong> and the calendar field should accept <strong>only date format</strong>.</li>
                                        <li>Enter the date up to which you require details in the <strong>“To Date”</strong> field.</li>
                                    </ul>
                                </li>


                                <li><strong>Search </strong>
                                    <ul>
                                        <li>User should be able to click on Search button.</li>
                                        <li>After clicking on Search button the School details will show on the screen according to the selected field.</li>
                                    </ul>

                                </li>
                                <li><strong>Clear</strong>
                                    <ul>
                                        <li>User should be able to click on Clear button.</li>
                                        <li>After clicking on Clear button all the dropdown should be Clear or reload the same page.</li>
                                    </ul>
                                </li>
                                <li><strong>Excel</strong>
                                    <ul>
                                        <li>Excel button should be visible and user should be able to click.</li>
                                        <li>After clicking on Excel button grid view data export in Excel.</li>
                                    </ul>
                                </li>
                                <li><strong>PDF</strong>
                                    <ul>
                                        <li>PDF button should be visible and user should be able to click.</li>
                                        <li>After clicking on PDF button grid view data export in PDF.</li>
                                    </ul>
                                </li>
                                <li><strong>Searchbox</strong>
                                    <ul>
                                        <li>Users can search for any text value, and only the relevant text related to the search will be <strong>displayed</strong> . </li>

                                    </ul>
                                </li>

                                <li><strong>View</strong>
                                    <ul>
                                        <li>User should be able to click on View button.</li>
                                        <li>After clicking on the View button selected School’s details will be shown on the pop up screen.</li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </fieldset>--%>
            </div>

        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <%--<script type="text/javascript">
        $(document).ready(function () {
            $('#<%= txtPurchase.ClientID %>').datepicker({
                format: 'dd-mm-yyyy',
                autoclose: true
            });
        });

        $(document).ready(function () {
            $('#<%= TextBox1.ClientID %>').datepicker({
                format: 'dd-mm-yyyy',
                autoclose: true
            });
        });
    </script>--%>
</asp:Content>

