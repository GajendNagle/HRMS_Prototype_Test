<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SchoolVerification.aspx.cs" Inherits="mis_Registration_Rpt_SchoolRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .alert-success {
            color: white !important;
            background-color: #069570 !important;
            border-color: #b3edde !important;
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="card">
        <div class="card-header">
            School Verification
             
        </div>
        <div class="card-body">
            <fieldset>
                <legend>School Verification</legend>

                <div class="row">
                    <div class="col-md-3">
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
                    <div class="col-md-3">
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
                    <div class="col-md-3">
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
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">School Dise Code<span style="color: red;"> *</span></label>
                            <asp:DropDownList CssClass="form-control select2" runat="server">
                                <asp:ListItem> -Select-</asp:ListItem>
                                <asp:ListItem>2345040410</asp:ListItem>
                                <asp:ListItem>2332030006</asp:ListItem>
                                <asp:ListItem>2327100059</asp:ListItem>
                                <asp:ListItem>2345090040</asp:ListItem>
                                <asp:ListItem>23450300631</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>




                    <div class="col-md-1">
                        <div class="form-group">
                            <asp:Button ID="btnSubmit" CssClass="btn btn-success btn-rounded w-100" runat="server" OnClick="btnSubmit_Click" Text="Search" />
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="form-group">
                            <a href="Mst_SchoolRegistration.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>

                </div>
            </fieldset>


            <fieldset runat="server" id="datatable" visible="false">
                <legend>Details</legend>
                <div class="row justify-content-end">
                    <div class="col-md-1">
                        <div class="form-group">
                            <asp:Button ID="Button2" CssClass="btn btn-info btn-rounded w-100" runat="server" Text="Excel" />
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="form-group">
                            <asp:Button ID="Button3" CssClass="btn btn-info btn-rounded w-100" runat="server" Text="PDF" />
                        </div>
                    </div>
                </div>
                <div class="row ">
                    <div class="col-md-12">
                        <div class="form-group">
                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <th>Sr. No.</th>
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
                                            <th>Action</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Bhopal</td>
                                            <td>Bhopal</td>
                                            <td>Huzur</td>
                                            <td>23445656546</td>
                                            <td>Delhi Public School</td>
                                            <td>DOE</td>
                                            <td>Primary</td>
                                            <td>Kendriya Vidhyalaya</td>
                                            <td>Jams</td>
                                            <td>Yes/No</td>
                                            <td>
                                                <!-- sample modal content -->
                                                <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                                                    <div class="modal-dialog modal-xl">
                                                        <div class="modal-content">
                                                            <div class="modal-header" id="myDIV">
                                                                <h4 class="modal-title" id="myLargeModalLabel1">Verification </h4>
                                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                                                            </div>
                                                            <fieldset>
                                                                <legend>School Basic Information</legend>
                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">School UDISE Code<span style="color: red;"> *</span></label>
                                                                            <asp:TextBox ID="ir" runat="server" CssClass="form-control" placeholder="Enter UDISE Code"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
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
                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Location<span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                                <asp:ListItem> -Select-</asp:ListItem>
                                                                                <asp:ListItem>1-Rural</asp:ListItem>
                                                                                <asp:ListItem>2-Urban</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Assembly <span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                                <asp:ListItem> -Select-</asp:ListItem>
                                                                                <asp:ListItem>Govindpura</asp:ListItem>
                                                                                <asp:ListItem>Huzur</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Parliamentary<span style="color: red;"> *</span></label>
                                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                                <asp:ListItem> -Select-</asp:ListItem>
                                                                                <asp:ListItem>Bhopal</asp:ListItem>

                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Habitation </label>
                                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                                <asp:ListItem> -Select-</asp:ListItem>
                                                                                <asp:ListItem>Berasia</asp:ListItem>

                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Board Type<span style="color: red;"> *</span></label>
                                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                                <asp:ListItem> -Select-</asp:ListItem>
                                                                                <asp:ListItem>1-CBSE</asp:ListItem>
                                                                                <asp:ListItem>2-State Board</asp:ListItem>
                                                                                <asp:ListItem>3-ICSE </asp:ListItem>
                                                                                <asp:ListItem>4-International</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">School Type<span style="color: red;"> *</span></label>
                                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                                <asp:ListItem> -Select-</asp:ListItem>
                                                                                <asp:ListItem>1-Boy</asp:ListItem>
                                                                                <asp:ListItem>2-Girls</asp:ListItem>
                                                                                <asp:ListItem>3-Co-Ed</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">School Category<span style="color: red;"> *</span></label>
                                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                                <asp:ListItem> -Select-</asp:ListItem>
                                                                                <asp:ListItem>1-Primary</asp:ListItem>
                                                                                <asp:ListItem>2-Upper Primary</asp:ListItem>
                                                                                <asp:ListItem>3-Higher Secondary</asp:ListItem>
                                                                                <asp:ListItem>4-Upper Primary School</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Lowest Class<span style="color: red;">*</span></label>
                                                                            <%--<asp:TextBox ID="txtclass" runat="server" placeholder="Enter Lowest Class" CssClass="form-control"></asp:TextBox>--%>
                                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                                <asp:ListItem> -Select-</asp:ListItem>
                                                                                <asp:ListItem>Nursary</asp:ListItem>
                                                                                <asp:ListItem>LKG</asp:ListItem>
                                                                                <asp:ListItem>UKG</asp:ListItem>
                                                                                <asp:ListItem>1st</asp:ListItem>
                                                                                <asp:ListItem>2nd</asp:ListItem>
                                                                                <asp:ListItem>3rd</asp:ListItem>
                                                                                <asp:ListItem>4th</asp:ListItem>
                                                                                <asp:ListItem>5th</asp:ListItem>
                                                                                <asp:ListItem>6th</asp:ListItem>
                                                                                <asp:ListItem>7th</asp:ListItem>
                                                                                <asp:ListItem>8th</asp:ListItem>
                                                                                <asp:ListItem>9th</asp:ListItem>
                                                                                <asp:ListItem>10th</asp:ListItem>
                                                                                <asp:ListItem>11th</asp:ListItem>
                                                                                <asp:ListItem>12th</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Highest Class<span style="color: red;">*</span></label>
                                                                            <%-- <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Highest Class" CssClass="form-control"></asp:TextBox>--%>
                                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                                <asp:ListItem> -Select-</asp:ListItem>
                                                                                <asp:ListItem>Nursary</asp:ListItem>
                                                                                <asp:ListItem>LKG</asp:ListItem>
                                                                                <asp:ListItem>UKG</asp:ListItem>
                                                                                <asp:ListItem>1st</asp:ListItem>
                                                                                <asp:ListItem>2nd</asp:ListItem>
                                                                                <asp:ListItem>3rd</asp:ListItem>
                                                                                <asp:ListItem>4th</asp:ListItem>
                                                                                <asp:ListItem>5th</asp:ListItem>
                                                                                <asp:ListItem>6th</asp:ListItem>
                                                                                <asp:ListItem>7th</asp:ListItem>
                                                                                <asp:ListItem>8th</asp:ListItem>
                                                                                <asp:ListItem>9th</asp:ListItem>
                                                                                <asp:ListItem>10th</asp:ListItem>
                                                                                <asp:ListItem>11th</asp:ListItem>
                                                                                <asp:ListItem>12th</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Management Group<span style="color: red;"> *</span></label>
                                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                                <asp:ListItem> -Select-</asp:ListItem>
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
                                                                            <label class="font-bold">School Management<span style="color: red;"> *</span></label>
                                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem>1-Department of Education (DOE)</asp:ListItem>
                                                                                <asp:ListItem>2-Tribal walfare department(TWD)</asp:ListItem>
                                                                                <asp:ListItem>3-Local Body </asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">In Charge Type<span style="color: red;"> *</span></label>
                                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                                <asp:ListItem> -Select-</asp:ListItem>
                                                                                <asp:ListItem>1-Head Master / Principal </asp:ListItem>
                                                                                <asp:ListItem>2-Asst. head Master  / VP</asp:ListItem>
                                                                                <asp:ListItem>3-Acting Head Teacher </asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">In Charge Unique Id<span style="color: red;">*</span></label>
                                                                            <asp:TextBox runat="server" placeholder="Enter In Charge Unique ID" CssClass="form-control"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">In Charge Name<span style="color: red;"> *</span></label>
                                                                            <asp:TextBox runat="server" placeholder="Enter In Charge Name" CssClass="form-control"></asp:TextBox>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">In Charge Mobile Number <span style="color: red;">*</span></label>
                                                                            <asp:TextBox runat="server" placeholder="Enter In Charge Mobile Number" CssClass="form-control"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Year of Establishment<span style="color: red;">*</span></label>
                                                                            <%-- <asp:TextBox runat="server" placeholder="Enter Year of Establishment" CssClass="form-control"></asp:TextBox>--%>
                                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem>2015</asp:ListItem>
                                                                                <asp:ListItem>2016</asp:ListItem>
                                                                                <asp:ListItem>2017</asp:ListItem>
                                                                                <asp:ListItem>2018</asp:ListItem>
                                                                                <asp:ListItem>2019</asp:ListItem>
                                                                                <asp:ListItem>2020</asp:ListItem>
                                                                                <asp:ListItem>2021</asp:ListItem>
                                                                                <asp:ListItem>2022</asp:ListItem>
                                                                                <asp:ListItem>2023</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Minority Community <span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem>1-Muslim</asp:ListItem>
                                                                                <asp:ListItem>2-Sikh</asp:ListItem>
                                                                                <asp:ListItem>3-Jain</asp:ListItem>
                                                                                <asp:ListItem>4-Christian</asp:ListItem>
                                                                                <asp:ListItem>5-Parsi</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">School Medium<span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem>19-English</asp:ListItem>
                                                                                <asp:ListItem>04-Hindi</asp:ListItem>
                                                                                <asp:ListItem>18-Urdu</asp:ListItem>
                                                                                <asp:ListItem>10-Marathi</asp:ListItem>
                                                                                <asp:ListItem>99-Other</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">School Name (In English)<span style="color: red;">*</span></label>
                                                                            <asp:TextBox runat="server" Placeholder="Enter School Name (In English)" CssClass="form-control"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">स्कूल का नाम (हिंदी में)<span style="color: red;"> *</span></label>
                                                                            <asp:TextBox runat="server" Placeholder="स्कूल का नाम दर्ज करे|" CssClass="form-control"></asp:TextBox>
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                            </fieldset>
                                                            <fieldset>
                                                                <legend>School Address Information</legend>
                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">School Address (Line 1)<span style="color: red;">*</span></label>
                                                                            <asp:TextBox runat="server" Placeholder="Enter School Address (Line 1)" CssClass="form-control"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">School Address (Line 2)</label>
                                                                            <asp:TextBox runat="server" Placeholder="Enter School Address (Line 2)" CssClass="form-control"></asp:TextBox>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Pin Code<span style="color: red;">*</span></label>
                                                                            <asp:TextBox runat="server" Placeholder="Enter Pin Code" CssClass="form-control"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Landline Number<span style="color: red;">*</span></label>
                                                                            <asp:TextBox runat="server" Placeholder="Enter Landline Number" CssClass="form-control"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Email ID<span style="color: red;">*</span></label>
                                                                            <asp:TextBox runat="server" Placeholder="Enter Email ID" CssClass="form-control"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">School Website</label>
                                                                            <asp:TextBox runat="server" Placeholder="Enter School Website" CssClass="form-control"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">School Shift <span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem>Morning</asp:ListItem>
                                                                                <asp:ListItem>Afternoon</asp:ListItem>
                                                                                <asp:ListItem>Both</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Is School Residential<span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem>Yes</asp:ListItem>
                                                                                <asp:ListItem Selected="True">No</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Special School<span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                                <asp:ListItem> -Select-</asp:ListItem>
                                                                                <asp:ListItem>CM Rise</asp:ListItem>
                                                                                <asp:ListItem>Model</asp:ListItem>
                                                                                <asp:ListItem>CM Rise / Model (Both)</asp:ListItem>
                                                                                <asp:ListItem>District Excellence</asp:ListItem>
                                                                                <asp:ListItem>Block Excellence</asp:ListItem>
                                                                                <asp:ListItem>PM Shri </asp:ListItem>
                                                                                <asp:ListItem>EFA (Education for all)</asp:ListItem>
                                                                                <asp:ListItem>Urdu</asp:ListItem>
                                                                                <asp:ListItem>Marathi</asp:ListItem>
                                                                                <asp:ListItem>Sanskrit</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">School Status<span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem>Functional</asp:ListItem>
                                                                                <asp:ListItem>Closed</asp:ListItem>
                                                                                <asp:ListItem>Merged</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Hostel Facility<span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem>Yes</asp:ListItem>
                                                                                <asp:ListItem>No</asp:ListItem>

                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </fieldset>
                                                            <fieldset>
                                                                <legend>School Bank Information</legend>
                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">School Bank Account Name<span style="color: red;">*</span></label>
                                                                            <asp:TextBox ID="TextBox2" placeholder="Enter Bank Name" runat="server" CssClass="form-control"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">School Bank Account Number<span style="color: red;">*</span></label>
                                                                            <asp:TextBox ID="TextBox3" Placeholder="Enter Account Number" runat="server" CssClass="form-control"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3 mt-4">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">IFSC Code<span style="color: red;">*</span></label>
                                                                            <asp:TextBox ID="TextBox4" Placeholder="Enter IFSC Code" runat="server" CssClass="form-control"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <asp:CheckBox runat="server" Text="प्रबंधन द्वारा आज दिनांक 26/10/2023 को संबंधित विद्यालय को अनुमोदन उपरांत विलय किया गया |" />

                                                            </fieldset>


                                                            <div class="modal-footer">
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <button type="button" class="btn btn-success" onclick="alert('School Verification Successfully');">Verified</button>

                                                                    </div>
                                                                    <div class="col-md-5">
                                                                        <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- /.modal-content -->
                                                    </div>
                                                    <!-- /.modal-dialog -->
                                                </div>
                                                <!-- /.modal -->
                                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2" OnClientClick="return false;"><i class="fas fa-eye"></i>View</asp:LinkButton>

                                            </td>


                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group text-end">
                            <h4 class=" mt-2" style="color: black; font-family: ui-rounded;">Note -:  स्कूल को सत्यापित करने के लिए व्यू बटन पर क्लिक करें।</h4>
                        </div>
                    </div>
                </div>
            </fieldset>
            <!-- Add the Modal -->

            <fieldset>
                <legend>Description</legend>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="main-ul">
                         
                            <li><strong>Division Name</strong>
                                <ul>
                                    <li>User will be able to select <strong>Division name </strong>from dropdown. Data populated from <strong>Division master </strong>as cascade from <strong>state name.</strong> </li>
                                </ul>
                            </li>

                            <li><strong>District Name</strong>
                                <ul>
                                    <li>User will be able to select <strong>District name </strong>from dropdown. Data populated from <strong>District master </strong>as cascade from <strong>State and  Division Name.</strong> </li>
                                </ul>
                            </li>
                            <li><strong>Block Name</strong>
                                <ul>
                                    <li>User will be able to select <strong>Block name </strong>from dropdown. Data populated from <strong>Block master </strong>as cascade <strong>State, Division and District name.</strong> </li>
                                </ul>
                            </li>

                            <li><strong>School UDISE Code  </strong>
                                <ul>
                                    <li>School UDISE code will be auto populated data based on selected <strong> Division, District and Block name </strong></li>
                                </ul>
                            </li>

                           
                            <li><strong>Search </strong>
                                <ul>
                                    <li>After click on Search button data will be visible in grid view.</li>
                                </ul>

                            </li>
                            <li><strong>Clear</strong>
                                <ul>
                                    <li>Click on the clear button to clear all field page data and reload the same page. </li>
                                </ul>
                            </li>
                            <li><strong>PDF</strong>
                                <ul>
                                    <li>PDF button should be visible and user should be able to click.</li>
                                    <li>After clicking on PDF button grid view data export in PDF.</li>
                                </ul>
                            </li>
                            <li><strong>Excel</strong>
                                <ul>
                                    <li>Excel button should be visible and user should be able to click.</li>
                                    <li>After clicking on Excel button grid view data export in Excel.</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="server">
    <script>
        function FbotonOn() {
            debugger
            const element = document.getElementById("myDIV");
            element.className = "modal-header alert-success"
            document.getElementById('myLargeModalLabel1').innerHTML = "School Verification Successfully";

        }
    </script>
</asp:Content>

