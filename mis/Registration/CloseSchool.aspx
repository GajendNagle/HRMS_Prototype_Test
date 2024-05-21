<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="CloseSchool.aspx.cs" Inherits="mis_Registration_Rpt_SchoolRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="a" ShowMessageBox="true" ShowSummary="false" />

    <script type="text/javascript">
        //function ShowReport() {
        //    $('#ReportModal').modal('show');
        //}
        //function Closeeport() {
        //    $('#ReportModal').modal('hide');
        //}
    </script>
    <div class="card">
        <div class="card-header">
            School Directory
              
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Close School</legend>

                <div class="row form-group">
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
                        <label class="font-bold">UDISE<span style="color: red">*</span></label>
                        <asp:TextBox runat="server" placeholder="UDISE" CssClass="form-control" />
                    </div>
                    <div class="col-md-4 mt-4 py-2">
                    <div class="form-group">
                        <asp:Button ID="btnSubmit" CssClass="btn btn-success btn-rounded" OnClick="View1_Click" runat="server" Text="Search" />
                  
                        <asp:Button ID="Button2" CssClass="btn btn-danger btn-rounded " runat="server" Text="Clear" />
                    </div>
                    </div>
                </div>


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

                        </div>
                        <table class="table table-responsive">
                            <tr>
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
                                                    <div class="row mt-3 m-l-5">
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
                                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-success" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2">Close</asp:LinkButton>
                                </td>
                            </tr>
                        </table>

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
                                            <li>User will be able to enter the<strong> UDISE Code</strong> and the text field will accept<strong> only numerical values.</strong></li>
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
            <!-- Add the Modal -->


        </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="server">

    <script>
        function FbotonOn() {
            debugger
            alert("Are you sure you want to Close this school");
            const element = document.getElementById("myDIV");
            element.className = "modal-header alert-success"
            document.getElementById('myLargeModalLabel1').innerHTML = "School Close Successfully";
            document.getElementById('data1').innerHTML = "UnMerged";

        }
    </script>
</asp:Content>

