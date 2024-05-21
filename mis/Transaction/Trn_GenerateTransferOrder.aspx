<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_GenerateTransferOrder.aspx.cs" Inherits="mis_Transaction_Trn_GenerateTransferOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #EmployeeDetails1 {
            display: none;
        }


        #showsavebtn {
            display: none;
        }

        #btnGenerateOrder {
            display: none;
        }

        #idGeneratedDetails {
            display: none;
        }

        #note {
            color: red;
        }

        #btnwidth {
            width: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Generate Transfer Order</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                        <li class="breadcrumb-item active">Generate Transfer Order</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <fieldset>
                    <legend>Transfer Approval</legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Division / संभाग <span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Bhopal">Bhopal</option>
                                    <option value="Indore">Indore</option>
                                    <option value="Gwalior">Gwalior</option>
                                    <option value="Jabalpur">Jabalpur</option>
                                    <option value="Ujjain">Ujjain</option>
                                    <option value="Sagar">Sagar</option>
                                    <option value="Rewa">Rewa</option>
                                    <option value="Chambal">Chambal</option>
                                    <option value="Shahdol">Shahdol</option>
                                    <option value="Hoshangabad">Hoshangabad</option>
                                    <option value="Narmadapuram">Narmadapuram</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>District / जिला <span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Bhopal">Bhopal</option>
                                    <option value="Raisen">Raisen</option>
                                    <option value="Rajgarh">Rajgarh</option>
                                    <option value="Sehore">Sehore</option>
                                    <option value="Vidisha">Vidisha</option>
                                    <option value="Ashoknagar">Ashoknagar</option>
                                    <option value="Shivpuri">Shivpuri</option>
                                    <option value="Datia">Datia</option>
                                    <option value="Guna">Guna</option>
                                    <option value="Gwalior">Gwalior</option>
                                    <option value="Harda">Harda</option>
                                    <option value="Hoshangabad">Hoshangabad</option>
                                    <option value="Betul">Betul</option>
                                    <option value="Morena">Morena</option>
                                    <option value="Sheopur">Sheopur</option>
                                    <option value="Bhind">Bhind</option>
                                    <option value="Barwani">Barwani</option>
                                    <option value="Burhanpur">Burhanpur</option>
                                    <option value="Dhar">Dhar</option>
                                    <option value="Indore">Indore</option>
                                    <option value="Jhabua">Jhabua</option>
                                    <option value="Khandwa">Khandwa</option>
                                    <option value="Khargone">Khargone</option>
                                    <option value="Alirajpur">Alirajpur</option>
                                    <option value="Balaghat">Balaghat</option>
                                    <option value="Chhindwara">Chhindwara</option>
                                    <option value="Jabalpur">Jabalpur</option>
                                    <option value="Katni">Katni</option>
                                    <option value="Mandla">Mandla</option>
                                    <option value="Narsinghpur">Narsinghpur</option>
                                    <option value="Seoni">Seoni</option>
                                    <option value="Rewa">Rewa</option>
                                    <option value="Satna">Satna</option>
                                    <option value="Sidhi">Sidhi</option>
                                    <option value="Singroli">Singroli</option>
                                    <option value="Chhatarpur">Chhatarpur</option>
                                    <option value="Damoh">Damoh</option>
                                    <option value="Panna">Panna</option>
                                    <option value="Sagar">Sagar</option>
                                    <option value="Tikamgarh">Tikamgarh</option>
                                    <option value="Shahdol">Shahdol</option>
                                    <option value="Umaria">Umaria</option>
                                    <option value="Dindori">Dindori</option>
                                    <option value="Anuppur">Anuppur</option>
                                    <option value="Dewas">Dewas</option>
                                    <option value="Mandsaur">Mandsaur</option>
                                    <option value="Neemuch">Neemuch</option>
                                    <option value="Ratlam">Ratlam</option>
                                    <option value="Shajapur">Shajapur</option>
                                    <option value="Ujjain">Ujjain</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Block / विकासखंड<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Agar">Agar</option>
                                    <option value="Barod">Barod</option>
                                    <option value="Nalkheda">Nalkheda</option>
                                    <option value="Susner">Susner</option>
                                    <option value="Alirajpur">Alirajpur</option>
                                    <option value="Bhabra">Bhabra</option>
                                    <option value="Katthiwara">Katthiwara</option>
                                    <option value="Sondwa">Sondwa</option>
                                    <option value="Udaygarh">Udaygarh</option>
                                    <option value="Jobat">Jobat</option>
                                    <option value="Anuppur">Anuppur</option>
                                    <option value="Jaithari">Jaithari</option>
                                    <option value="Kotma">Kotma</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Office Type/कार्यालय का प्रकार<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Bhopal">Head Office</option>
                                    <option value="Bhopal">JOINT DIRECTORS</option>
                                    <option value="Bhopal">DISTRICT EDUCATION OFFICERS</option>
                                    <option value="Bhopal">BLOCK EDUCATION OFFICERS</option>
                                    <option value="Bhopal">SANKUL/AEO</option>
                                    <option value="Bhopal">SCHOOL</option>
                                    <option value="Principal Secretary">Principal Secretary</option>
                                    <option value="Secretary">Secretary</option>
                                    <option value="Deputy Secretary">Deputy Secretary</option>
                                    <option value="CPI">CPI</option>
                                    <option value="CRSK">CRSK</option>
                                    <option value="DPI">DPI</option>
                                    <option value="Collector">Collector</option>
                                    <option value="CEO, ZP">CEO, ZP</option>
                                    <option value="DPC">DPC</option>
                                    <option value="BRC">BRC</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Designation Name/पदनाम<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="--Select--">Commissioner</option>
                                    <option value="--Select--">Director</option>
                                    <option value="Additional Director">Additional Director</option>
                                    <option value="Joint Director">Joint Director</option>
                                    <option value="Deputy Director">Deputy Director</option>
                                    <option value="Asstt Director">Asstt Director</option>
                                    <option value="Regional Librarian">Regional Librarian</option>
                                    <option value="Planning Officer">Planning Officer</option>
                                    <option value="Director (ELTI)">Director (ELTI)</option>
                                    <option value="Director(SISE)">Director(SISE)</option>
                                    <option value="Principal (PGBT)">Principal (PGBT)</option>
                                    <option value="Principal (DIET)">Principal (DIET)</option>
                                    <option value="Principal HSS">Principal HSS</option>
                                    <option value="Principal HS">Principal HS</option>
                                    <option value="Lecturer">Lecturer</option>
                                    <option value="HM(MS)">HM(MS)</option>
                                    <option value="Teacher (UDT)">Teacher (UDT)</option>
                                    <option value="Music Teacher">Music Teacher</option>
                                    <option value="Tabla Teacher">Tabla Teacher</option>
                                    <option value="Craft Teacher">Craft Teacher</option>
                                    <option value="HM(PS)">HM(PS)</option>
                                    <option value="Asstt Teacher(LDT)">Asstt Teacher(LDT)</option>
                                    <option value="Varistha Adhyapak">Varistha Adhyapak</option>
                                    <option value="Adhyapak">Adhyapak</option>
                                    <option value="Sahayak Adhyapak">Sahayak Adhyapak</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Employee ID/कर्मचारी आईडी<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="--Select--">543545</option>
                                    <option value="--Select--">234343</option>
                                    <option value="--Select--">453445</option>
                                    <option value="--Select--">435452</option>
                                    <option value="--Select--">234343</option>
                                    <option value="--Select--">453445</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>From Date<span style="color: red">*</span></label>
                                <input name="ename" id="firstDate" type="date" class="form-control" autocomplete="off" onchange="updateSecondDate()" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>To Date<span style="color: red">*</span></label>
                                <input name="ename" id="5" type="date" class="form-control" autocomplete="off" onchange="updateSecondDate()" />
                            </div>
                        </div>

                    </div>

                    <div class="row justify-content-center">
                        <div class="col-md-4 text-center">
                            <div class="form-group ">
                                <button type="button" onclick="HideShow()" class=" btn btn-success btn-rounded ">Search</button>
                                <a href="DO_TransferApproval.aspx" class=" btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div id="EmployeeDetails1">
                    <fieldset>
                        <legend>Employee Transfer Details</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <tr>
                                            <th>Action</th>
                                            <th>Sr.No.</th>
                                            <th>Employee Name</th>
                                            <th>Order No.</th>
                                            <th>Order Date</th>
                                            <th>Esixting Office Name</th>
                                            <th>Existing Designation Name</th>
                                            <th>Existing Posting Date</th>
                                            <th>New Office Name</th>
                                            <th>New Designation Name</th>
                                            <th>New Effective Date</th>
                                        </tr>
                                        <tr>

                                            <td>
                                                <input id="checkbox1" onclick="showhidesavebtn()" type="checkbox" /></td>
                                            <th>1</th>
                                            <td>Ashok Kumar</td>
                                            <td>1276</td>
                                            <td>14-12-23</td>
                                            <td>Head Office</td>
                                            <td>Teacher</td>
                                            <td>14-01-22</td>
                                            <td>Head Office</td>
                                            <td>Principal</td>
                                            <td>14-09-23</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input id="checkbox2" onclick="showhidesavebtn()" type="checkbox" /></td>
                                            <th>2</th>
                                            <td>Sanjay Kumar</td>
                                            <td>1295</td>
                                            <td>02-09-23</td>
                                            <td>Head Office</td>
                                            <td>Teacher</td>
                                            <td>05-01-24</td>
                                            <td>Head Office</td>
                                            <td>Principal</td>
                                            <td>14-09-23</td>
                                        </tr>
                                        <%--   <tr>
                                            <td>1</td>
                                            <td>
                                                <input id="checkbox1" onclick="showhidesavebtn()" type="checkbox" /></td>
                                            <td>Head Office</td>
                                            <td>Shri Rajesh Tiwari</td>
                                            <td>Teacher</td>
                                            <td>DPI</td>
                                            <td>Hindi</td>
                                            <td>15000.00</td>
                                        </tr>--%>
                                    </table>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div>
                                    <p id="note"><b>Approve The Application After Clicking On The Checkbox/चेक बॉक्स पर क्लिक करने के उपरांत आवेदन का अनुमोदन करें |</b></p>
                                </div>
                                <br />
                            </div>
                        </div>

                    </fieldset>
                    <fieldset>
                        <br />
                        <div id="btnGenerateOrder">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Order No./आदेश नंबर<span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option value="--Select--">--Select--</option>
                                            <option value="Tabla Teacher">1276</option>
                                            <option value="Craft Teacher">23</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Order Date/आदेश तारीख<span style="color: red">*</span></label>
                                        <input name="ename" id="firstDate1" type="date" class="form-control" autocomplete="off" onchange="updateSecondDate()" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Upload Document</label>
                                        <input type="file" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-2 mt-4">
                                    <button type="button" class=" btn btn-block btn-success btn-rounded Alert-OrderSave">Save</button>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="idGeneratedDetails">
                        <legend>Employee Details</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <tr>
                                            <th>Sr.No.</th>
                                            <th>Employee Name</th>
                                            <th>Order No.</th>
                                            <th>Order Date</th>
                                            <th class="btnwidth">Action</th>
                                        </tr>
                                        <tr>
                                            <th>2</th>
                                            <td>Ashok Kumar</td>
                                            <td>1276</td>
                                            <td>14-12-23</td>
                                            <td>
                                                <button type="button" onclick="()" class=" btn btn-success Alert-GenerateL">Generate Order</button></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>

                <fieldset>
                    <legend>Description</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="main-ul">

                                <li><strong>Division Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Division Name </strong>from the dropdown and the data will be populated from the <strong>Division Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>District Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>District Name </strong>from the dropdown and the data will be populated from the <strong>District Master</strong> and data cascade from <strong>Division Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Block </strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Block</strong>from the dropdown and the data will be populated from the <strong>Block Master</strong>and data cascade from <strong>District Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Office Type</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Office Type </strong>from the dropdown and the data will be populated from the <strong>Office Type Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Designation Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Designation Name </strong>from the dropdown and the data will be populated from the <strong>Designation Name Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Employee ID</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Employee ID </strong>from the dropdown and the data will be populated from the <strong>Employee Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>From Date & To Date</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>From Date and To Date</strong>from Calender.</li>
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
                                <li><strong>Action</strong>
                                    <ul>
                                        <%--   <li>To approve the application, after clicking on the checkbox, the user can fill Order details like <strong>Order number(Order number is auto generated), Order Date, and Document</strong>.</li>--%>
                                        <li>To approve the application, after clicking on the checkbox, Order No., Order Date, Upload Document and Save Button wil be shown</li>
                                    </ul>
                                </li>

                                <li><strong>Order No.</strong>
                                    <ul>
                                        <%--   <li>To approve the application, after clicking on the checkbox, the user can fill Order details like <strong>Order number(Order number is auto generated), Order Date, and Document</strong>.</li>--%>
                                        <li>User should be able to select the <strong>Order No.</strong>from the dropdown.</li>
                                    </ul>
                                </li>
                                <li><strong>Order Date</strong>
                                    <ul>
                                        <%--   <li>To approve the application, after clicking on the checkbox, the user can fill Order details like <strong>Order number(Order number is auto generated), Order Date, and Document</strong>.</li>--%>
                                        <li>User should be able to select the <strong>Order Date</strong>from Calender.</li>
                                    </ul>
                                </li>

                                <li><strong>Upload Document</strong>
                                    <ul>
                                        <%--   <li>To approve the application, after clicking on the checkbox, the user can fill Order details like <strong>Order number(Order number is auto generated), Order Date, and Document</strong>.</li>--%>
                                        <li>User should be able to Upload the <strong>Document</strong>in PDF formate.</li>
                                    </ul>
                                </li>
                                <li><strong>Save</strong>
                                    <ul>
                                        <li>User Can Click Save Button.</li>
                                        <li>On Save button click form field should be validated.</li>
                                        <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to save this record?").</li>
                                        <li>If click on Yes – Data will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!")</li>
                                        <li>If click on NO the data will not be saved and will return to the same page.</li>
                                    </ul>
                                </li>
                                <li><strong>Generate Order</strong>
                                    <ul>
                                        <li>User Can Click Generate Order Button.</li>
                                        <li>On Generate Order button click, Order will be Generated.</li>
                                    </ul>
                                </li>

                            </ul>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function HideShow() {

            var x = document.getElementById("EmployeeDetails1");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>
    <script>
        function ShowGeneratedDetails() {

            var x = document.getElementById("idGeneratedDetails");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>
    <script>
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/EServiceBook-01.pdf';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
    </script>

    <script>
        function showhidesavebtn() {
            var checkbox1 = document.getElementById("checkbox1");
            var checkbox2 = document.getElementById("checkbox2");
            var btnGenerateOrder = document.getElementById("btnGenerateOrder");
            if (checkbox1.checked || checkbox2.checked) {
                btnGenerateOrder.style.display = "block"
            }
            else if (checkbox2.checked === false && checkbox1.checked === false) {
                btnGenerateOrder.style.display = "none"
            }
            else {
                btnGenerateOrder.style.display = "block"
            }
        }
    </script>
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-OrderSave').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Save this Detail?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes',

                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Detail Saved Successfully!',
                                timer: 2000

                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )

                            var x = document.getElementById("idGeneratedDetails");
                            if (x.style.display === "none") {
                                x.style.display = "block";
                            } else {
                                x.style.display = "block";
                            }

                        }
                    })
                });

                $('.Alert-GenerateL').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Generate Order?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Order Generate Successfully!',
                                timer: 2000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
                        }
                    })
                });
            },
                //init
                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>
</asp:Content>
