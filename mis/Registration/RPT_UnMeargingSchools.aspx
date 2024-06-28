<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="RPT_UnMeargingSchools.aspx.cs" Inherits="mis_Registration_RPT_MeargingSchools" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .underline {
            text-decoration: underline;
        }

        .alert-success {
            color: white !important;
            background-color: #069570 !important;
            border-color: #b3edde !important;
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
                        <li class="breadcrumb-item"><a href="#SchoolDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School Directory</span></a></li>
                        <li class="breadcrumb-item"><a href="#SchoolReports" data-bs-toggle="collapse" onclick="SidebarToggle('SchoolDirectory')" role="button" aria-expanded="false"><span>School Reports</span></a></li>
                        <li class="breadcrumb-item">School Unmerge Reports</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">School Unmerge Report / स्कूल अनमर्ज रिपोर्ट
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <asp:Label runat="server" ID="lblMsg"></asp:Label>
            <fieldset>
                <legend>School Unmerge Report / स्कूल अनमर्ज रिपोर्ट</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            Select Division<br />
                            संभाग चुनें<span style="color: red">*</span></label>
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
                        <label>
                            Select District<br />
                            जिला चुनें<span style="color: red">*</span></label>
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
                        <label>
                            Select Block<br />
                            ब्लॉक चुनें</label>
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
                        <label>
                            UDISE Code<br />
                            यूडाईस कोड</label>
                        <asp:DropDownList CssClass="form-control select2" runat="server">
                            <asp:ListItem>All</asp:ListItem>
                            <asp:ListItem>23450404101</asp:ListItem>
                            <asp:ListItem>23320300062</asp:ListItem>
                            <asp:ListItem>23271000593</asp:ListItem>
                            <asp:ListItem>23450900404</asp:ListItem>
                            <asp:ListItem>23450300635</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                From Date<br />
                                दिनांक से</label>
                            <input type="date" class="form-control" placeholder="17/11/2023" />

                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                To Date<br />
                                दिनांक तक</label>
                            <input type="date" class="form-control" placeholder="17/11/2023" />
                        </div>
                    </div>
                </div>
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <div class="form-group ">
                            <asp:Button ID="View1" CssClass="btn w-lg btn-outline-success btn-border" OnClick="View1_Click" runat="server" Text="Search" />
                            <a href="RPT_UnMeargingSchools.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset runat="server" id="report" visible="false">
                <legend>Details / विवरण</legend>
                <div class="row justify-content-end align-items-end">
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
                <div class="row align-items-end">
                    <div class="col-md-6">
                    </div>
                    <table class="table table-bordered table-responsive-lg" style="border: 2px">
                        <tbody>
                            <tr class="text-center">
                                <th colspan="4">Parent School to be Merged<br />
                                    स्कूल जिसमे विलय करना हैं</th>
                                <th colspan="7">School to Merged<br />
                                    स्कूल जिसका विलय करना हैं</th>

                            </tr>
                            <tr>
                                <th>Sr. No.<br />
                                    सरल क्र.</th>
                                <th>UDISE Code<br />
                                    UDISE कोड</th>
                                <th>School Name<br />
                                    स्कूल के नाम</th>
                                <th>Category<br />
                                    वर्ग</th>
                                <th>Sr. No.<br />
                                    क्रमांक</th>
                                <th>Effective Date<br />
                                    प्रभावी तिथि</th>
                                <th>UDISE Code<br />
                                    UDISE कोड</th>
                                <th>School Name<br />
                                    स्कूल का नाम</th>
                                <th>Category<br />
                                    वर्ग</th>
                                <th>Merge Status<br />
                                    मर्ज स्थिति</th>
                                <th>Action<br />
                                    कार्रवाई</th>

                            </tr>
                            <tr>
                                <td rowspan="2">1</td>
                                <td rowspan="2">23568546215</td>
                                <td rowspan="2">Sarasvati Vidhya Mandir</td>
                                <td rowspan="2">Primary</td>
                                <td>1</td>
                                <td>07/12/2023</td>
                                <td>23356245856</td>
                                <td>Crist Academy School</td>
                                <td>Primary</td>
                                <td>
                                    <label id="data1">Merged</label></td>
                                <td>
                                    <asp:LinkButton ID="btndata1" runat="server" CssClass="btn btn-success" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">View Details</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>10/12/2023</td>
                                <td>23156548965</td>
                                <td>Rose Mary School</td>
                                <td>Primary</td>
                                <td>Merged</td>
                                <td>
                                    <asp:LinkButton ID="LinkButton6" runat="server" CssClass="btn btn-success" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">View Details</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">2</td>
                                <td rowspan="2">23569852134</td>
                                <td rowspan="2">Bal Bharti School</td>
                                <td rowspan="2">Higher Secondary</td>
                                <td>1</td>
                                <td>07/12/2023</td>
                                <td>23548965123</td>
                                <td>Delhi Public School</td>
                                <td>Primary</td>
                                <td>Merged</td>
                                <td>
                                    <asp:LinkButton ID="LinkButton5" runat="server" CssClass="btn btn-success" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">View Details</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>10/12/2023</td>
                                <td>23658954123</td>
                                <td>Priyanka Convent School</td>
                                <td>Secondary</td>
                                <td>Merged</td>
                                <td>
                                    <asp:LinkButton ID="LinkButton4" runat="server" CssClass="btn btn-success" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">View Details</asp:LinkButton>
                                </td>
                            </tr>

                            <tr>
                                <td rowspan="3">3</td>
                                <td rowspan="3">23589648521</td>
                                <td rowspan="3">Geetanjali Public School</td>
                                <td rowspan="3">Upper Primary</td>
                                <td>1</td>
                                <td>07/12/2023</td>
                                <td>23987586321</td>
                                <td>Modern Convent School</td>
                                <td>Upper Primary</td>
                                <td>Merged</td>
                                <td>
                                    <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn btn-success" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">View Details</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>10/12/2023</td>
                                <td>23569852145</td>
                                <td>MVM Public School</td>
                                <td>Primary</td>
                                <td>Merged</td>
                                <td>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">View Details</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>10/12/2023</td>
                                <td>23651235894</td>
                                <td>Reema Vidhya Mandir</td>
                                <td>Upper Primary</td>
                                <td>Merged</td>
                                <td>
                                    <!-- sample modal content -->
                                    <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                                        <div class="modal-dialog modal-xl">
                                            <div class="modal-content">
                                                <div class="modal-header" id="myDIV">
                                                    <h4 class="modal-title" id="myLargeModalLabel1">Unmerge Details / अनमर्ज र्विवरण</h4>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                                                </div>
                                                <div class="modal-body">

                                                    <div class="row form-group align-items-end">
                                                        <div class="col-md-4">
                                                            <label>Date<br />दिनांक</label>
                                                            <asp:TextBox ID="TextBox3" ReadOnly="true" placeholder="Select Date..." runat="server" Text="09/01/2024" CssClass="datepicker form-control"></asp:TextBox>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <label>Order No. <br />आदेश संख्या</label>
                                                            <asp:TextBox ID="TextBox4" ReadOnly="true" placeholder="Order No" runat="server" Text="2365" CssClass=" form-control"></asp:TextBox>

                                                        </div>
                                                        <div class="col-md-1 mt-2">
                                                            <asp:LinkButton ID="LinkButton7" runat="server" CssClass="btn view-but border" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2" OnClientClick="openPDF()"><i class="fas fa-eye"></i>Document</asp:LinkButton>


                                                        </div>
                                                    </div>
                                                    <%--    <div class="row m-l-5">
                                                            <div class="col-md-12">
                                                                <label class="form-check m-b-0">
                                                                    <input type="checkbox" class="form-check-input">

                                                                    <span class="form-check-label"><b>प्रबंधन द्वारा आज दिनांक 26/10/2023 को संबंधित विद्यालय को अनुमोदन उपरांत विलय किया गया |</b></span>
                                                                </label>
                                                            </div>
                                                        </div>--%>
                                                </div>
                                                <div class="modal-footer">

                                                    <button type="button" class="btn w-lg btn-outline-success btn-border" onclick="FbotonOn()">Confirm</button>
                                                    <button type="button" class="btn w-lg btn-outline-danger btn-border" data-bs-dismiss="modal">Close</button>
                                                </div>
                                            </div>
                                            <!-- /.modal-content -->
                                        </div>
                                        <!-- /.modal-dialog -->
                                    </div>
                                    <!-- /.modal -->
                                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-success" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">View Details</asp:LinkButton>
                                </td>
                            </tr>
                        </tbody>
                    </table>
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

                                <li><strong>UDISE Code </strong>
                                    <ul>
                                        <li>User should be able to select the <strong>UDISE Code</strong> from the dropdown and the data will be populated from the <strong>School Registration Master</strong> and data cascade from <strong>Division Master, District Master </strong>and<strong> Block Master.</strong></li>
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
    <%--    <script type="text/javascript">
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

    <script>
        function FbotonOn() {
            debugger
            alert("Are you sure you want to UnMerge school");
            const element = document.getElementById("myDIV");
            element.className = "modal-header alert-success"
            document.getElementById('myLargeModalLabel1').innerHTML = "School UnMerged Successfully";
            document.getElementById('data1').innerHTML = "UnMerged";

        }
    </script>
    <script>
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/HRMS_Document%20(1).pdf';

            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
    </script>
</asp:Content>

