<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_PublishSchoolDetails.aspx.cs" Inherits="mis_Masters_Office_Masters_Mst_SankulToschoolMapping" %>

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
                        <li class="breadcrumb-item"><a href="#SchoolDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School Directory</span></a></li>
                        <li class="breadcrumb-item"><a href="#SchoolReports" data-bs-toggle="collapse" onclick="SidebarToggle('SchoolDirectory')" role="button" aria-expanded="false"><span>School Reports</span></a></li>
                        <li class="breadcrumb-item">Publish School Report</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">Publish School Report / प्रकाशित स्कूल रिपोर्ट</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <asp:Label runat="server" ID="lblMsg"></asp:Label>

            <fieldset>
                <legend>Publish School Report / प्रकाशित स्कूल रिपोर्ट</legend>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
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
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
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
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
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
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select School Category<br />
                                स्कूल श्रेणी चुनें</label>
                            <span class="fa-pull-right">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="a"
                                    ErrorMessage="Select School Category" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School Category !'></i>"
                                    ControlToValidate="ddlSchoolCat" Display="Dynamic" runat="server">
                                </asp:RequiredFieldValidator>
                            </span>
                            <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlSchoolCat">
                                <asp:ListItem Value="0"> --Select--</asp:ListItem>
                                <asp:ListItem>1-Primary</asp:ListItem>
                                <asp:ListItem>2-Upper Primary</asp:ListItem>
                                <asp:ListItem>3-Higher Secondary</asp:ListItem>
                                <asp:ListItem>4-Upper Primary School</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select School<br />
                                स्कूल चुनें</label>
                            <span class="fa-pull-right">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="a"
                                    ErrorMessage="Select School" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School !'></i>"
                                    ControlToValidate="ddlSchool" Display="Dynamic" runat="server">
                                </asp:RequiredFieldValidator>
                            </span>
                            <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlSchool">
                                <asp:ListItem Value="0">All</asp:ListItem>
                                <asp:ListItem>121-Sarasvati Gyan Mandir</asp:ListItem>
                                <asp:ListItem>101-Gyan Ganga Vidhya Mandir</asp:ListItem>
                                <asp:ListItem>012-Reema Gyan Mandir</asp:ListItem>
                                <asp:ListItem>131-Sarasvati Vidhya Mandir</asp:ListItem>
                                <asp:ListItem>122-Bal Bharti Higher Secondary School</asp:ListItem>
                                <asp:ListItem>321-NIPANIYA JAAT GOVT. HS</asp:ListItem>
                                <asp:ListItem>123-GOVT PS BAL VIHAR</asp:ListItem>
                                <asp:ListItem>136-GOVT MS VICTORIYA</asp:ListItem>
                                <asp:ListItem>252-GOVT MS, SHISHU JEHANGIRABAD</asp:ListItem>
                                <asp:ListItem>152-GOVT PS RAVIDAS COLONEY</asp:ListItem>
                                <asp:ListItem>125-GOVT MS GIRLS GINNORI</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Management Group<br />
                                प्रबंधन समूह चुनें</label>
                            <span class="fa-pull-right">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="a"
                                    ErrorMessage="Select Management" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select Management !'></i>"
                                    ControlToValidate="ddlManagementGrp" Display="Dynamic" runat="server">
                                </asp:RequiredFieldValidator>
                            </span>
                            <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlManagementGrp">
                                <asp:ListItem Value="0"> --Select--</asp:ListItem>
                                <asp:ListItem>A-State Govt</asp:ListItem>
                                <asp:ListItem>B-Govt Aided</asp:ListItem>
                                <asp:ListItem>C-Private UnAided </asp:ListItem>
                                <asp:ListItem>D-Central Govt</asp:ListItem>
                                <asp:ListItem>E-Other</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Management Details<br />
                                प्रबंधन विवरण चुनें</label>
                            <span class="fa-pull-right">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="a"
                                    ErrorMessage="Select Management Details" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select Management Details !'></i>"
                                    ControlToValidate="ddlSchoolManagement" Display="Dynamic" runat="server">
                                </asp:RequiredFieldValidator>
                            </span>
                            <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlSchoolManagement">
                                <asp:ListItem Value="0"> --Select--</asp:ListItem>
                                <asp:ListItem>1-Department of Education (DOE)</asp:ListItem>
                                <asp:ListItem>2-Tribal walfare department(TWD)</asp:ListItem>
                                <asp:ListItem>3-Local Body </asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>From Date <br />दिनांक से </label>
                            <%--<asp:TextBox ID="TextBox1" placeholder="Select Date..." runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>--%>
                            <input type="date" class="form-control" placeholder="17/11/2023" />

                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>To Date<br />दिनांक तक </label>
                            <input type="date" class="form-control" placeholder="17/11/2023" />
                        </div>
                    </div>
                    <div class="col-md-4 mt-4">
                        <div class="form-group">
                            <asp:Button runat="server" Text="Search" OnClick="View1_Click" CssClass="btn btn-outline-success  btn-border w-lg" />
                            <a href="Rpt_PublishSchoolDetails.aspx" class="btn  btn-outline-danger btn-border w-lg">Clear</a>
                        </div>
                    </div>
                </div>

            </fieldset>

            <fieldset runat="server" id="data" visible="false">
                <legend>Report / विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..."/>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <tr class="card-header">
                                    <th>Sr. No. <br />सरल क्र.</th>
                                    <th>Division Name<br />संभाग का नाम</th>
                                    <th>District Name<br />जिले का नाम</th>
                                    <th>Block Name<br />ब्लॉक का नाम</th>
                                    <th>Management Group<br />प्रबंधन समूह</th>
                                    <th>Management Group Detail<br />प्रबंधन समूह विवरण</th>
                                    <th>School Category<br />स्कूल श्रेणी</th>
                                    <th>Sankul Name<br />संकुल का नाम</th>
                                    <th>School Name<br />स्कूल का नाम</th>
                                    <th>Status<br />स्थिति</th>
                                    <th>View More<br />अधिक देखें</th>

                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Bhopal</td>
                                    <td>Bhopal</td>
                                    <td>PHANDA URBAN NEW</td>
                                    <td>State Government- A</td>
                                    <td>Department of Education-1</td>
                                    <td>Upper Primary School - 2</td>
                                    <td>GOVT HSS MAHATMA GANDHI BHEL - 23320300049</td>
                                    <td>GOVT MS BOYS BARKHEDA (BHEL) - 23355854596 </td>
                                    <td>Close</td>
                                    <td>
                                        <asp:LinkButton ID="btndata1" runat="server" CssClass="btn btn-success" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">View</asp:LinkButton>
                                    </td>
                                </tr>

                                <tr>
                                    <td>2</td>
                                    <td>Bhopal</td>
                                    <td>Bhopal</td>
                                    <td>PHANDA URBAN NEW</td>
                                    <td>State Government- A</td>
                                    <td>Department of Education-1</td>
                                    <td>Higher Secondary School - 3</td>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>
