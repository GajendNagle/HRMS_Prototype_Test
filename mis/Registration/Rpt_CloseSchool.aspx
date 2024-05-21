<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_CloseSchool.aspx.cs" Inherits="mis_Registration_Rpt_SchoolRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Close School Report</h4>

            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=Reports" title="click to go on">Reports</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=SchoolReports" title="click to go on">School Reports</a></li>
                        <li class="breadcrumb-item active">Close School Report</li>
                    </ol>
                </div>
            </div>
        </div>

        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <fieldset>
                    <legend>Close School Report</legend>

                    <div class="row">
                        <div class="col-md-3">
                            <label class="font-bold">Division Name<span style="color: red">*</span></label>
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
                        <div class="col-md-3">
                            <label class="font-bold">Block Name</label>
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
                            <div class="form-group">
                                <label class="font-bold">From Date</label>
                                <%--<asp:TextBox ID="TextBox1" placeholder="Select Date..." runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>--%>
                                <input type="date" class="form-control" placeholder="17/11/2023" />

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">To Date</label>
                                <input type="date" class="form-control" placeholder="17/11/2023" />

                            </div>
                        </div>
                        <div class="col-md-4 mt-4">
                            <div class="form-group">
                                <asp:Button ID="View1" CssClass="btn btn-success btn-rounded" OnClick="View1_Click" runat="server" Text="Search" />
                                <a href="RPT_UnMeargingSchools.aspx" class="btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>
                    <%--<div class="row justify-content-center">
                    </div>--%>
                </fieldset>
                <div class="row form-group">
                    <div class="col-md-12">
                        <fieldset runat="server" id="report" visible="false">
                            <legend>Details</legend>
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
                                                <th>Sr. No</th>
                                                <th>Division</th>
                                                <th>District</th>
                                                <th>Block</th>
                                                <th>Dise Code</th>
                                                <th>School Name</th>
                                                <th>Management</th>
                                                <th>Category</th>
                                                <th>Sankul(DDO)</th>
                                                <th>Incharge Name</th>
                                                <th>Functional</th>

                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>Chambal</td>
                                                <td>SHEOPUR</td>
                                                <td>VIJAYPUR</td>
                                                <td>23010804504</td>
                                                <td>GOVT. HSS Rose</td>
                                                <td>Govt_SED</td>
                                                <td>Higher Secodary</td>
                                                <td>GOVT. HSS Rose</td>
                                                <td>Mr.Rammohan Yadav</td>
                                                <td>Closed</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Bhopal</td>
                                                <td>Bhopal</td>
                                                <td>Berasia</td>
                                                <td>23010804523</td>
                                                <td>GOVT. HSS SHYAMPUR</td>
                                                <td>Govt_SED</td>
                                                <td>Higher Secodary</td>
                                                <td>GOVT. HSS SHYAMPUR</td>
                                                <td>Mr.Rammohan Yadav</td>
                                                <td>Closed</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </fieldset>

                        <%--  <fieldset>
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
                <!-- Add the Modal -->


            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="server">
</asp:Content>

