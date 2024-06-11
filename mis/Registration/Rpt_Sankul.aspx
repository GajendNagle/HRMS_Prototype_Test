<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_Sankul.aspx.cs" Inherits="mis_Masters_Office_Masters_Mst_Sankul" %>

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
                            <a href="#sidebarUserManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School Directory</span></a>
                        </li>
                        <li class="breadcrumb-item">Reports</li>
                        <li class="breadcrumb-item">School Reports</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


    <div class="card">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">Sankul Detail Report/संकुल विस्तृत रिपोर्ट
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">

            <asp:Label runat="server" ID="lblMsg"></asp:Label>
            <fieldset>
                <legend>Sankul Detail Report/संकुल विस्तृत रिपोर्ट</legend>

                <div class="row form-group align-items-end">
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
                        <label class="font-bold">Select Block Name/ ब्लॉक का नाम चुनें<span style="color: red">*</span></label>
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
                    
                            <label class="font-bold">From Date/की तिथि से</label>
                            <%--<asp:TextBox ID="TextBox1" placeholder="Select Date..." runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>--%>
                            <input type="date" class="form-control" placeholder="17/11/2023" />
                    </div>
                    <div class="col-md-3">
                        <label class="font-bold">To Date/तारीख तक</label>
                        <input type="date" class="form-control" placeholder="17/11/2023" />
                    </div>
                    <div class="col-md-6 mt-5">
                            <asp:Button ID="View1" CssClass="btn w-lg btn-outline-success btn-rounded" OnClick="View1_Click" runat="server" Text="Search" />
                            <a href="RPT_UnMeargingSchools.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                        </div>
                </div>
            </fieldset>
            <fieldset runat="server" id="data" visible="false">
                <legend>Sankul Detail Reports /संकुल विस्तृत रिपोर्ट</legend>
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
                                <tr class="card-header">
                                    <th>Sr. No./क्रमांक</th>
                                    <th>Division Name/संभाग का नाम</th>
                                    <th>District Name/जिले का नाम </th>
                                    <th>Block Name/ब्लॉक का नाम </th>
                                    <th>Sankul Name/संकुल का नाम </th>
                                    <th>Sankul UDISE Code/संकुल UDISE कोड</th>
                                    <th>Sankul Code No./संकुल कोड संख्या</th>
                                    <th>View More/और देखें</th>


                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Bhopal</td>
                                    <td>Bhopal</td>
                                    <td>Phanda</td>
                                    <td>ABC</td>
                                    <td>23325566452</td>
                                    <td>03</td>
                                    <td>
                                        <!-- sample modal content -->
                                        <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                                            <div class="modal-dialog modal-xl">
                                                <div class="modal-content">
                                                    <div class="modal-header" id="myDIV">
                                                        <h4 class="modal-title" id="myLargeModalLabel1">Sankul Detail/संकुल विवरण</h4>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <table class="table table-bordered table-responsive-lg" style="border: 2px">
                                                                    <%-- <thead>
        <tr>
            <th class="underline" colspan="4"><b>Child School to merge (स्कूल जिसमे विलय करना हैं)</b></th>
        </tr>
    </thead>--%>
                                                                    <tbody>
                                                                        <tr>
                                                                            <th colspan="2">Sankul Name/संकुल नाम</th>
                                                                            <th colspan="5">School Name/स्कूल के नाम</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <th style="width: 5%">Sr. No./क्रमांक</th>
                                                                            <th>Sankul Name/संकुल नाम</th>
                                                                            <th>Sr.No./क्रमांक</th>
                                                                            <th>School Name/स्कूल के नाम</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td rowspan="2">1</td>
                                                                            <td rowspan="2">Sarasvati Vidhya Mandir[23322154876]</td>
                                                                            <td>1</td>
                                                                            <td>Crist Academy School[23325986548]</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>2</td>
                                                                            <td>Rose Mary School[23322598658
                                                                                            ]</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td rowspan="2">2</td>
                                                                            <td rowspan="2">Bal Bharti School[23324589658]</td>
                                                                            <td>1</td>
                                                                            <td>Delhi Public School[2332154895]</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>2</td>
                                                                            <td>Priyanka Convent School[23324584579]</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td rowspan="3">3</td>
                                                                            <td rowspan="3">Geetanjali Public School[23325848598]</td>
                                                                            <td>1</td>
                                                                            <td>Modern Convent School[23324456658]</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>2</td>
                                                                            <td>MVM Public School[23324957652]</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>3</td>
                                                                            <td>Reema Vidhya Mandir[23323256987]</td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">


                                                        <button type="button" class="btn w-lg btn-outline-danger btn-border" data-bs-dismiss="modal">Close</button>
                                                    </div>
                                                </div>
                                                <!-- /.modal-content -->
                                            </div>
                                            <!-- /.modal-dialog -->
                                        </div>
                                        <!-- /.modal -->
                                        <%--<asp:Button runat="server" Text="View" CssClass="btn btn-info btn-rounded" /></td>--%>
                                        <asp:LinkButton ID="btndata1" runat="server" CssClass="btn w-lg btn-outline-success btn-rounded" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">View Detail</asp:LinkButton>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Chambal</td>
                                    <td>SHEOPUR</td>
                                    <td>VIJAYPUR</td>
                                    <td>DEF</td>
                                    <td>23328546454</td>
                                    <td>04</td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn w-lg btn-outline-success btn-rounded" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">View Detail</asp:LinkButton></td>
                                </tr>

                            </table>
                        </div>
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
</asp:Content>

