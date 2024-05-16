<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_PublishSchoolDetails.aspx.cs" Inherits="mis_Masters_Office_Masters_Mst_SankulToschoolMapping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Publish School Report</h4>

            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=Reports" title="click to go on">Reports</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=SchoolReports" title="click to go on">School Reports</a></li>
                        <li class="breadcrumb-item active">Publish School Report</li>
                    </ol>
                </div>
            </div>
        </div>

        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <asp:Label runat="server" ID="lblMsg"></asp:Label>

                <fieldset>
                    <legend>Publish School Report</legend>

                    <div class="row">

                        <div class="col-md-2">
                            <div class="form-group">
                                <label class="font-bold">Division Name <span style="color: red">*</span></label>
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
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label class="font-bold">District Name<span style="color: red">*</span></label>
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
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label class="font-bold">Block Name<span style="color: red">*</span></label>
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
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label class="font-bold">Management Group</label>
                                <asp:DropDownList runat="server" CssClass="form-control select2">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>State Government - A</asp:ListItem>
                                    <asp:ListItem>Govt. Aided - B</asp:ListItem>
                                    <asp:ListItem>Private Unaided - C</asp:ListItem>
                                    <asp:ListItem>Central Government - D</asp:ListItem>
                                    <asp:ListItem>Others - E</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label class="font-bold">Management Details</label>
                                <asp:DropDownList runat="server" CssClass="form-control select2">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>Department of Education-1</asp:ListItem>
                                    <asp:ListItem>Tribal Welfare Department -2</asp:ListItem>
                                    <asp:ListItem>Local Body-3</asp:ListItem>
                                    <asp:ListItem>Other State Govt. Managed -6</asp:ListItem>
                                    <asp:ListItem>Minority Affairs Dept.-89</asp:ListItem>
                                    <asp:ListItem>Social Welfare Department-90</asp:ListItem>
                                    <asp:ListItem>Ministry of Labour -91</asp:ListItem>
                                    <asp:ListItem>Government Aided -4</asp:ListItem>
                                    <asp:ListItem>Partially Govt. Aided -7</asp:ListItem>
                                    <asp:ListItem>Private Unaided (Recognized) -5</asp:ListItem>
                                    <asp:ListItem>Kendriya Vidyalaya -92</asp:ListItem>
                                    <asp:ListItem>Jawahar Navodaya Vidyalaya -93</asp:ListItem>
                                    <asp:ListItem>Sainik School -94</asp:ListItem>
                                    <asp:ListItem>Railway School -95</asp:ListItem>
                                    <asp:ListItem>Central Tibetan School-96</asp:ListItem>
                                    <asp:ListItem>Other Central Govt./PSU Schools-101</asp:ListItem>
                                    <asp:ListItem>Unrecognized-8</asp:ListItem>
                                    <asp:ListItem>Madrasa Private Unaided (Recognized)-97</asp:ListItem>
                                    <asp:ListItem>Madrasa Aided (Recognized) -99</asp:ListItem>
                                    <asp:ListItem>Madarsa Unrecognized -98</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label class="font-bold">School Category</label>
                                <asp:DropDownList runat="server" CssClass="form-control select2">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>Primary </asp:ListItem>
                                    <asp:ListItem>Upper Primary </asp:ListItem>
                                    <asp:ListItem>Secondary </asp:ListItem>
                                    <asp:ListItem>Higher Secondary</asp:ListItem>

                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>School Category Details</label>
                                <select class="form-control select2">
                                    <option value=" -Select-">-Select-</option>
                                    <option value="1-Primary only with grades 1 to 5 (PRY)">1-Primary only with grades 1 to 5 (PRY)</option>
                                    <option value="2-Upper Primary with grades 1 to 8 (PRY-UPR) ">2-Upper Primary with grades 1 to 8 (PRY-UPR) </option>
                                    <option value="3-Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)">3-Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)</option>
                                    <option value="4-Upper Primary only with grades 6 to 8 (UPR)">4-Upper Primary only with grades 6 to 8 (UPR)</option>
                                    <option value="5-Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)">5-Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)</option>
                                    <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">6-Secondary with grades 1 to 10 (PRY-UPR-SEC)</option>
                                    <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">7-Secondary with grades 6 to 10 (UPR-SEC)</option>
                                    <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">8-Secondary only with grades 9 & 10 (SEC)</option>
                                    <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">9-Higher Secondary  with grades 9 & 12 (SEC-HSEC)</option>
                                    <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">10-HR.Sec /Jr/Collageonly with grades 11 & 12 (HSEC)</option>
                                    <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">11-Pre-Primary Only (PRE)</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label class="font-bold">School Name</label>
                                <asp:DropDownList runat="server" CssClass="form-control select2">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>



                        <div class="col-md-2">
                            <div class="form-group">
                                <label class="font-bold">From Date</label>
                                <%--<asp:TextBox ID="TextBox1" placeholder="Select Date..." runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>--%>
                                <input type="date" class="form-control" placeholder="17/11/2023" />

                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label class="font-bold">To Date</label>
                                <%--<asp:TextBox ID="txtPurchase" placeholder="Select Date..." runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>--%>
                                <input type="date" class="form-control" placeholder="17/11/2023" />

                            </div>
                        </div>
                        <div class="col-md-4 mt-4">
                            <div class="form-group">
                                <asp:Button runat="server" Text="Search" OnClick="View1_Click" CssClass="btn btn-success  btn-rounded" />

                                <a href="Rpt_PublishSchoolDetails.aspx" class="btn  btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>

                </fieldset>

                <fieldset runat="server" id="data" visible="false">
                    <legend>Report</legend>
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
                                <table class="table">
                                    <tr>
                                        <th>Sr.No.</th>

                                        <th>Division Name</th>
                                        <th>District Name</th>
                                        <th>Block Name</th>
                                        <th>Management Group</th>
                                        <th>Management Group Detail</th>
                                        <th>School Category</th>
                                        <th>School Category Detail</th>
                                        <th>Sankul Name</th>
                                        <th>School Name</th>
                                        <th>Status</th>
                                        <th>View More</th>

                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>PHANDA URBAN NEW</td>
                                        <td>State Government- A</td>
                                        <td>Department of Education-1</td>
                                        <td>Upper Primary School - 2</td>
                                        <td>2-Upper Primary with grades 1 to 8 (PRY-UPR)</td>
                                        <td>GOVT HSS MAHATMA GANDHI BHEL - 23320300049</td>
                                        <td>GOVT MS BOYS BARKHEDA (BHEL) - 23355854596 </td>
                                        <td>Close</td>
                                        <td>
                                            <asp:LinkButton ID="btndata1" runat="server" CssClass="btn btn-success" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">View</asp:LinkButton>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>1</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>PHANDA URBAN NEW</td>
                                        <td>State Government- A</td>
                                        <td>Department of Education-1</td>
                                        <td>Higher Secondary School - 3</td>
                                        <td>3-Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)</td>
                                        <td>GOVT HSS MAHATMA GANDHI BHEL - 23568456321</td>
                                        <td>PVT HSS (1-12) ST. XAVIERS SR. SEC CO-ED SCHOOL, C SECTOR, BERKHERA, BHEL, BHOPAL (25431) - 23320303017</td>
                                        <td>Merge</td>
                                        <td>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">View</asp:LinkButton>
                                        </td>
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

                                <li><strong>School Category</strong>
                                    <ul>
                                        <li>User should be able to select the  <strong>School Category </strong>from the dropdown and the data will be populated from the <strong>School Category Master </strong>and data cascade from  <strong>Division Master, District Master </strong>and<strong> Block Name. </strong></li>
                                    </ul>
                                </li>

                                <li><strong>School Name</strong>
                                    <ul>
                                        <li>User should be able to select the  <strong>School Name </strong>from the dropdown and the data will be populated from the  <strong>School Registration</strong> and data cascade from  <strong>Division Master, District Master, Block Name </strong>and<strong> School Category</strong>.</li>
                                    </ul>
                                </li>

                                <li><strong>Management Group</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Management Group</strong> from the dropdown and the data will be populated from the <strong>School Management Group</strong> and data cascade from <strong>Division Master, District Master, Block Name, School Category </strong>and <strong>School Name.</strong></li>
                                    </ul>
                                </li>
                                <li><strong>Management Details  </strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Management Details</strong> from the dropdown and the data will be populated from the <strong>School Management Group Details</strong> and data cascade from <strong>Division Master, District Master, Block Name, School Category, School Name</strong> and<strong> Management Group.</strong></li>
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
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    >t>
</asp:Content>
