<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="UnMeargingSchools.aspx.cs" Inherits="mis_Registration_RPT_MeargingSchools" %>

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

    <div class="card">
        <div class="card-header">
            Unmerge School Details           
            <asp:Label ID="lblMsg" runat="server" Text="" Visible="true"></asp:Label>
        </div>
        <div class="card-body">

            <fieldset>
                <legend>School Unmerge</legend>

                <div class="row">

                    <div class="col-md-2">
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
                    <div class="col-md-2">
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
                    <div class="col-md-2">
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
                    <div class="col-md-2">
                        <div class="form-group">
                            <label class="font-bold">UDISE Code</label>
                            <asp:TextBox ID="TextBox2" placeholder="UDISE Code" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label class="font-bold">From Date<span style="color: red;"> *</span></label>
                            <%--<asp:TextBox ID="TextBox1" placeholder="Select Date..." TextMode="Date" runat="server" CssClass="datepicker form-control"></asp:TextBox>--%>
                             <input type="date" class="form-control" Placeholder="17/11/2023"/>
                        </div>
                    </div>

                    <div class="col-md-2">
                        <div class="form-group">
                            <label class="font-bold">To Date<span style="color: red;"> *</span></label>
                            <%--<asp:TextBox ID="txtPurchase" placeholder="Select Date..." TextMode="Date" runat="server" CssClass="datepicker form-control"></asp:TextBox>--%>
                             <input type="date" class="form-control" Placeholder="17/11/2023"/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-5"></div>
                    <div class="col-md-1">
                        <asp:Button ID="View1" CssClass="btn btn-success btn-rounded" OnClick="View1_Click" runat="server" Text="Search" />
                    </div>
                    <div class="col-md-1">
                        <asp:Button CssClass="btn btn-danger btn-rounded" OnClick="View1_Click" runat="server" Text="Clear" />
                    </div>
                    <div class="col-md-5"></div>
                </div>
            </fieldset>
            <fieldset runat="server" id="report" visible="false">
                <legend>Details</legend>
                <div class="row">
                    <div class="col-md-10"></div>
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

                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <tbody>
                                    <tr>
                                        <th colspan="4">Parent School to be Merged (स्कूल जिसमे विलय करना हैं)</th>
                                        <th colspan="9">Child School to merge (स्कूल जिसका विलय करना हैं)</th>

                                    </tr>
                                    <tr>
                                        <th>Sr.No.</th>
                                        <th>UDISE Code</th>
                                        <th>School Name</th>
                                        <th>Category</th>
                                        <th>Sr.No.</th>
                                        <th>Effective Date</th>
                                        <th>UDISE Code</th>
                                        <th>School Name</th>
                                        <th>Category</th>
                                        <th>Merge Status</th>
                                        <th>Approve</th>
                                        <th>Reject</th>
                                        <th>View</th>

                                    </tr>
                                    <tr>
                                        <td rowspan="2">1</td>
                                        <td rowspan="2">46579</td>
                                        <td rowspan="2">Sarasvati Vidhya Mandir</td>
                                        <td rowspan="2">Primary</td>
                                        <td>1</td>
                                        <td>07/12/2023</td>
                                        <td>32165</td>
                                        <td>Crist Academy School</td>
                                        <td>Primary</td>
                                        <td>
                                            <label id="data1">Merged</label></td>
                                        <td>
                                            <asp:LinkButton ID="btndata1" runat="server" CssClass="btn btn-success" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">Approve</asp:LinkButton>
                                        </td>
                                        <td>
                                            <asp:LinkButton runat="server" CssClass="btn btn-danger" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">Reject</asp:LinkButton>
                                        </td>
                                        <td>
                                            <asp:LinkButton runat="server" CssClass="btn btn-info" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">View</asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>10/12/2023</td>
                                        <td>32166</td>
                                        <td>Rose Mary School</td>
                                        <td>Primary</td>
                                        <td>Merged</td>
                                        <td>
                                            <asp:LinkButton ID="LinkButton6" runat="server" CssClass="btn btn-success" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">Approve</asp:LinkButton>
                                        </td>
                                        <td>
                                            <asp:LinkButton runat="server" CssClass="btn btn-danger" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">Reject</asp:LinkButton>
                                        </td>
                                        <td>
                                            <asp:LinkButton runat="server" CssClass="btn btn-info" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">View</asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td rowspan="2">2</td>
                                        <td rowspan="2">312798</td>
                                        <td rowspan="2">Bal Bharti School</td>
                                        <td rowspan="2">Higher Secondary</td>
                                        <td>1</td>
                                        <td>07/12/2023</td>
                                        <td>32167</td>
                                        <td>Delhi Public School</td>
                                        <td>Primary</td>
                                        <td>Merged</td>
                                        <td>
                                            <asp:LinkButton ID="LinkButton5" runat="server" CssClass="btn btn-success" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">Approve</asp:LinkButton>
                                        </td>
                                        <td>
                                            <asp:LinkButton runat="server" CssClass="btn btn-danger" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">Reject</asp:LinkButton>
                                        </td>
                                        <td>
                                            <asp:LinkButton runat="server" CssClass="btn btn-info" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">View</asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>10/12/2023</td>
                                        <td>32168</td>
                                        <td>Priyanka Convent School</td>
                                        <td>Secondary</td>
                                        <td>Merged</td>
                                        <td>
                                            <asp:LinkButton ID="LinkButton4" runat="server" CssClass="btn btn-success" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">Approve</asp:LinkButton>
                                        </td>
                                        <td>
                                            <asp:LinkButton runat="server" CssClass="btn btn-danger" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">Reject</asp:LinkButton>
                                        </td>
                                        <td>
                                            <asp:LinkButton runat="server" CssClass="btn btn-info" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">View</asp:LinkButton>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td rowspan="3">3</td>
                                        <td rowspan="3">79465</td>
                                        <td rowspan="3">Geetanjali Public School</td>
                                        <td rowspan="3">Upper Primary</td>
                                        <td>1</td>
                                        <td>07/12/2023</td>
                                        <td>32169</td>
                                        <td>Modern Convent School</td>
                                        <td>Upper Primary</td>
                                        <td>Merged</td>
                                        <td>
                                            <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn btn-success" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">Approve</asp:LinkButton>
                                        </td>
                                        <td>
                                            <asp:LinkButton runat="server" CssClass="btn btn-danger" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">Reject</asp:LinkButton>
                                        </td>
                                        <td>
                                            <asp:LinkButton runat="server" CssClass="btn btn-info" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">View</asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>10/12/2023</td>
                                        <td>32160</td>
                                        <td>MVM Public School</td>
                                        <td>Primary</td>
                                        <td>Merged</td>
                                        <td>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">Approve</asp:LinkButton>
                                        </td>
                                        <td>
                                            <asp:LinkButton runat="server" CssClass="btn btn-danger" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">Reject</asp:LinkButton>
                                        </td>
                                        <td>
                                            <asp:LinkButton runat="server" CssClass="btn btn-info" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">View</asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>10/12/2023</td>
                                        <td>32174</td>
                                        <td>Reema Vidhya Mandir</td>
                                        <td>Upper Primary</td>
                                        <td>Merged</td>
                                        <td>
                                            <!-- sample modal content -->
                                            <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                                                <div class="modal-dialog modal-xl">
                                                    <div class="modal-content">
                                                        <div class="modal-header" id="myDIV">
                                                            <h4 class="modal-title" id="myLargeModalLabel1">Confirmation</h4>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                                                        </div>
                                                        <div class="modal-body">

                                                            <div class="row">
                                                                <div class="col-md-4">
                                                                    <label>Date</label>
                                                                    <asp:TextBox ID="TextBox3" placeholder="Select Date..." runat="server" CssClass="datepicker form-control"></asp:TextBox>
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <label>Order No</label>
                                                                    <asp:TextBox ID="TextBox4" placeholder="Order No" runat="server" CssClass=" form-control"></asp:TextBox>

                                                                </div>
                                                                <div class="col-md-4">
                                                                    <label>Upload Doc</label>
                                                                    <asp:FileUpload runat="server" CssClass="form-control" />
                                                                </div>
                                                            </div>
                                                            <div class="row m-l-5 mt-4">
                                                                <div class="col-md-12">
                                                                    <label class="form-check m-b-0">
                                                                        <input type="checkbox" class="form-check-input">

                                                                        <span class="form-check-label"><b>प्रबंधन द्वारा आज दिनांक 26/10/2023 को संबंधित विद्यालय को अनुमोदन उपरांत विलय किया गया |</b></span>
                                                                        <%--<asp:CheckBox ID="chkSatyapan" runat="server" CssClass="form-check-label" />--%>
                                                                    </label>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="modal-footer">

                                                            <button type="button" class="btn btn-success" onclick="FbotonOn()">Conform</button>
                                                            <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                                                        </div>
                                                    </div>
                                                    <!-- /.modal-content -->
                                                </div>
                                                <!-- /.modal-dialog -->
                                            </div>
                                            <!-- /.modal -->
                                            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-success" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">Approve</asp:LinkButton>
                                        </td>
                                        <td>
                                            <asp:LinkButton runat="server" CssClass="btn btn-danger" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">Reject</asp:LinkButton>
                                        </td>
                                        <td>
                                            <asp:LinkButton runat="server" CssClass="btn btn-info" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">View</asp:LinkButton>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Description</legend>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="main-ul">

                            <li><strong>Division Name</strong>
                                <ul>
                                    <li>User will be able to select <strong>Division name </strong>from dropdown. Data populated from <strong>Division master </strong>as cascade from <strong>State name.</strong> </li>
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

                            <li><strong>UDISE Code </strong>
                                <ul>
                                    <li>UDISE code will be auto populated data based on selected <strong>Division, District and Block name </strong></li>
                                </ul>
                            </li>

                            <li><strong>From Date </strong>
                                <ul>
                                    <li>User will be able to select From Date, the field should be in a calendar format</li>
                                </ul>
                            </li>

                            <li><strong>To Date </strong>
                                <ul>
                                    <li>User will be able to select To Date, the field should be in a calendar format</li>
                                </ul>
                            </li>


                            <li><strong>Search </strong>
                                <ul>
                                    <li>User will Search data as per selected field.</li>
                                    <li>After click on Search button data will be visible in grid view.</li>
                                </ul>

                            </li>
                            <li><strong>Clear</strong>
                                <ul>
                                    <li>User should be able to click on Clear button. </li>
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
</asp:Content>

