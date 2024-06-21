<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="IncrementOrders.aspx.cs" Inherits="mis_Transaction_IncrementOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #showsavebtn {
            display: none;
        }
    </style>
    <style>
        #showdetails {
            display: none;
        }

        #showEmpdetails2 {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

 <%--   <div id="dv_Masters_LocationMasters" runat="server">

        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Increment Order</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Increment" title="click to go on">Increment</a></li>
                        <li class="breadcrumb-item active">Increment Order</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">--%>
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
                        <a href="#Payroll" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Payroll</span></a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="#Increment" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('Payroll')">
                            <span>Increment</span></a>
                    </li>
                    <li class="breadcrumb-item"><span>Increment Order</span></li>
                </ol>
            </div>
        </div>
    </div>
</div>
<div class="card card-border-primary">
    <div class="card-header">
        <div class="row">
            <div class="col-lg-12">
                <h5 class="card-title">Increment Order/वेतन वृद्धि आदेश
                </h5>
            </div>
        </div>
    </div>
    <div class="card-body">
                <fieldset>
                    <legend>Generate Increment Orders/वृद्धि आदेश उत्पन्न करें</legend>

                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Division <br /> संभाग <span style="color: red">*</span></label>
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
                            <label>District<br />ज़िला<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
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
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Designation Type<br />पदनाम का प्रकार <span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Indore">Ministry (मंत्रालय)</option>
                                    <option value="Gwalior">Executive (कार्यकारी)</option>
                                    <option value="Jabalpur">Teaching (शिक्षण)</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Designation Name<br />पदनाम<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
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
                                <label>
                                    Employee Name-Code 
                                    <br />
                                    कर्मचारी का नाम-कोड<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Yes">Rohan-20562</option>
                                    <option value="No">Aalok-03265</option>
                                    <option value="No">Sahil-95865</option>
                                </select>
                            </div>
                        </div>
                       <%-- <div class="col-md-5 mt-5 ">
                            <div class="form-group ">
                                <button type="button" class="btn btn-success btn-rounded" onclick="Hideshow()">Search</button>
                                <a id="clearfirst" href="IncrementOrders.aspx" class="btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>--%>
                        <hr />
                                               
<div class="col-md-12">
    <div class="form-group">
        <!-- Search button triggers search and toggles divs -->
        <button type="button" onclick="Hideshow()" class="btn btn-success w-lg btn-border ">Search</button>
        <!-- Clear button (link) -->
        <a id="A1" href="IncrementOrders.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
    </div>
</div>
                    </div>
                </fieldset>
                <fieldset id="showdetails">
                    <legend>Details/विवरण</legend>
                                             <div class="row justify-content-end">
    <div class="col-md-4 text-end">
        <div class="form-group">
            <button class="btn btn-info btn-rounded w-55">Excel</button>
            <button class="btn btn-info btn-rounded w-55">PDF</button>
        </div>
    </div>
    <div class="col-md-3">
        <div class="form-group">
            <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
        </div>
    </div>
</div>
                      
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table">
                                    <tr>
                                        <th>Sr.No.<br />सं.क्र.</th>
                                        <th>Action<br />कार्रवाई</th>
                                        <th>Employee Name<br />कर्मचारी का नाम</th>
                                        <th>File No./<br />दस्तावेज संख्या</th>
                                        <th>Existing Level<br />मौजूदा स्तर</th>
                                        <th>Existing Basic Salary<br />मौजूदा मूल वेतन</th>
                                        <th>New Level<br />
नया स्तर</th>
                                        <th>New Basic Salary<br />नया मूल वेतन</th>

                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td scope="col">
                                            <input id="checkbox1" onclick="showhidesavebtn()" type="checkbox" /></td>
                                        <td>Shri Rajesh Tiwari</td>
                                        <td>58965</td>
                                        <td>Level-1</td>
                                        <td>9650</td>
                                        <td>Level-2</td>
                                        <td>15000</td>
                                    </tr>
                                    <%--    <tr>
                                        <td>2</td>
                                        <td scope="col">
                                            <input id="checkbox2" onclick="showhidesavebtn()" type="checkbox" /></td>
                                        <td>Shri S.S. Soni</td>
                                        <td>58963</td>
                                        <td>05/04/2023</td>
                                        <td>Level-3</td>
                                        <td>25000</td>
                                        <td>Level-6</td>
                                        <td>30000</td>
                                        <td>05/04/2023</td>
                                    </tr>--%>
                                </table>
                            </div>
                        </div>

                        <div class="col-md-12" id="showsavebtn">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Order No. <br /> आदेश नंबर<span style="color: red">*</span></label>
                                        <input name="ename" type="text" class="form-control" autocomplete="off" value="58965" readonly placeholder="Enter Order No." />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Order Date <br /> आदेश तारीख<span style="color: red">*</span></label>
                                        <input name="ename" type="date" class="form-control" autocomplete="off" placeholder="Enter Basic Salary" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Effective Date <br />प्रभावी तारीख<span style="color: red">*</span></label>
                                        <input name="ename" type="date" class="form-control" autocomplete="off" placeholder="Enter Basic Salary" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Upload Documents<br />
दस्तावेज़ अपलोड करें<span style="color: red">*</span></label>
                                        <input name="ename" type="file" class="form-control" autocomplete="off" placeholder="Enter Basic Salary" />
                                    </div>
                                </div>
                            </div><hr />
                            <div class="row">
                                <div class="col-md-2 mt-2">
                                    <button type="button" onclick="showdetails2" class="Alert-Save btn btn-success btn-rounded w-100 btn-block">Save</button>
                                </div>
                            </div>
                        </div>

                    </div>
                </fieldset>

                <fieldset id="showEmpdetails2">
                    <legend>Details</legend>

                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table">
                                <tr>
                                    <th>Sr.No.</th>
                                    <th>Order No.</th>
                                    <th>Order Date</th>
                                    <th>Effective Date</th>
                                    <th>Generate Letter</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>58965</td>
                                    <td>04/04/2023</td>
                                    <td>05/02/2023</td>
                                    <td>
                                        <button onclick="openPDF()" type="button" class=" btn "><i class="fa fa-download dnldIcon"></i></button>
                                </tr>
                                <%-- <tr>
                                    <td>2</td>
                                    <td scope="col">
                                        <input type="checkbox" /></td>
                                    <td>Shri S.S. Soni</td>
                                    <td>58963</td>
                                    <td>05/04/2023</td>
                                    <td>Level-3</td>
                                    <td>25000</td>
                                    <td>Level-6</td>
                                    <td>30000</td>
                                    <td>05/04/2023</td>
                                </tr>--%>
                            </table>
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
                                        <li>User should be able to select the <strong>Division Name </strong>from the dropdown and the data will be populated from the <strong>Division Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>District Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>District Name </strong>from the dropdown and the data will be populated from the <strong>District Master</strong> and data cascade from <strong>Division Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Designation Type</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Designation Type </strong>from the dropdown and the data will be populated from the <strong>Designation Type Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Designation Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Designation Name </strong>from the dropdown and the data will be populated from the <strong>Designation Name Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Employee Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Employee Name </strong>from the dropdown and the data will be populated from the <strong>Employee Master</strong>.</li>
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
                                        <li>Users can search for any text value, and only the relevant text related to the search will be displayed .</li>
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
    <script>
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/Increment-1.pdf';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
    </script>
    <script>
        function Hideshow() {

            var x = document.getElementById("showdetails");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>


    <script>
        function showhidesavebtn() {
            var checkbox1 = document.getElementById("checkbox1");
            var checkbox2 = document.getElementById("checkbox2");
            var showsavebtn = document.getElementById("showsavebtn");
            if (checkbox1.checked || checkbox2.checked) {
                showsavebtn.style.display = "block"
            }
            else if (checkbox2.checked === false && checkbox1.checked === false) {
                showsavebtn.style.display = "none"
            }
            else {
                showsavebtn.style.display = "block"
            }
        }
    </script>
    <script>
        debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to save this record ?",
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
                                text: 'Record Saved Successfully!',
                                timer: 2000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
                            var x = document.getElementById("showEmpdetails2");
                            if (x.style.display === "none") {
                                x.style.display = "block";
                            } else {
                                x.style.display = "block";
                            }
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

