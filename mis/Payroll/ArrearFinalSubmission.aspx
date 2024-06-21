<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="false" CodeFile="ArrearFinalSubmission.aspx.cs" Inherits="mis_Payroll_ArrearFinalSubmission" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .hidden {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
   <%-- <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Arrear Final Submission</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=Payroll&SubID=ArrearCalculation" title="click to go on">Arrear</a></li>
                    <li class="breadcrumb-item active">Arrear Final Submission</li>
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
                          <a href="#ArrearCalculation" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('Payroll')">
                              <span>Arrear</span></a>
                      </li>
                      <li class="breadcrumb-item"><span>Arrear Final Submission</span></li>
                  </ol>
              </div>
          </div>
      </div>
  </div>
  <div class="card card-border-primary">
      <div class="card-header">
          <div class="row align-items-end">
              <div class="col-lg-12">
                  <h5 class="card-title">Arrear Final Submission/
बकाया अंतिम प्रस्तुति
                  </h5>
              </div>
          </div>
      </div>
      <div class="card-body">
            <fieldset>
                <legend>Arrear Final Submission/
बकाया अंतिम प्रस्तुति</legend>
                <div class="row">
                    <div class="col-md-2">
                        <div class="form-group">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="customRadio1" name="customRadio" class="form-check-input">
                                <label class="form-check-label" for="customRadio11">Delete Arrear<br />बकाया हटाएं</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="customRadio2" name="customRadio" class="form-check-input">
                                <label class="form-check-label" for="customRadio11">Generate Arrear <br />बकाया जनरेट  </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row ">

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Office Type<br />कार्यालय का प्रकार<span style="color: red">*</span></label>
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
                            <label>Year<br />वर्ष <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">2023</option>
                                <option value="Bhopal">2024</option>
                                <option value="Bhopal">2025</option>
                                <option value="Bhopal">2026</option>
                                <option value="Bhopal">2027</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Month<br /> माह<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">January</option>
                                <option value="2">February</option>
                                <option value="3">March</option>
                                <option value="4">April</option>
                                <option value="5">May</option>
                                <option value="6">June</option>
                                <option value="7">July</option>
                                <option value="8">August</option>
                                <option value="9">September</option>
                                <option value="10">October</option>
                                <option value="11">November</option>
                                <option value="12">December</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Arrear Type<br />बकाया प्रकार<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Salary Arrear</option>
                                <option value="Bhopal">DA Arrear</option>
                                <option value="Bhopal">Increment Arrear</option>
                                <option value="Bhopal">Other</option>
                            </select>
                        </div>
                    </div>
                    <%--<div class="col-md-2 mt-4">
                        <div class="form-group">
                            <button type="button" onclick="toggleDivs()" class=" btn-block btn btn-success  btn-rounded">Search</button>
                        </div>
                    </div>
                    <div class="col-md-2 mt-4">
                        <div class="form-group">
                            <a href="ArrearFinalSubmission.aspx" class=" btn-block btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>--%>
                       <hr />
   <div class="col-md-12">
       <div class="form-group">
           <!-- Search button triggers search and toggles divs -->
           <button type="button"  onclick="toggleDivs()" class="btn btn-success w-lg btn-border">Search</button>
           <!-- Clear button (link) -->
           <a href="ArrearFinalSubmission.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
       </div>
   </div>
                </div>
            </fieldset>
            <div id="DeleteArrear" class="hidden">
                <fieldset>
                    <legend>Delete Arrear Process/बकाया राशि हटाने की प्रक्रिया</legend>
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
                                        <th>Sr.No.<br />सरल क्र</th>
                                        <th>Employee Name<br />कर्मचारी नाम</th>
                                        <th>Total Earning ⟨₹⟩<br />कुल कमाई ⟨₹⟩</th>
                                        <th>Total Deduction ⟨₹⟩<br />कुल कटौती ⟨₹⟩</th>
                                        <th>Net Amount ⟨₹⟩<br />शुद्ध राशि ⟨₹⟩</th>
                                        <th>Arrear Type<br />
बकाया प्रकार</th>
                                        <th>Action<br />कार्रवाई</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Laxman Prasad Gautam</td>
                                        <td>2360.00</td>
                                        <td>284.00</td>
                                        <td>2076.00</td>
                                        <td>DA Arrear</td>
                                        <td><a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Brijmohan Patel</td>
                                        <td>2288.00</td>
                                        <td>274.00</td>
                                        <td>2014.00</td>
                                        <td>DA Arrear</td>
                                        <td><a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div id="GenerateArrear" class="hidden">
                <fieldset>
                    <legend>Generate Arrear Process/बकाया राशि उत्पन्न करने की प्रक्रिया</legend>
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
                                        <th>All <br />सभी

                                                    <br />
                                            <input id="ContentBody_ctls08" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                        </th>
                                                                             <th>Sr.No.<br />सरल क्र</th>
                                        <th>Employee Name<br />कर्मचारी नाम</th>
                                        <th>Total Earning ⟨₹⟩<br />कुल कमाई ⟨₹⟩</th>
                                        <th>Total Deduction ⟨₹⟩<br />कुल कटौती ⟨₹⟩</th>
                                        <th>Net Amount ⟨₹⟩<br />शुद्ध राशि ⟨₹⟩</th>
                                        <th>Arrear Type<br />
बकाया प्रकार</th>
                                       
                                    </tr>
                                    <tr>
                                        <td>
                                            <input id="ContentBody_ctl08" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                        </td>
                                        <td>1</td>
                                        <td>Laxman Prasad Gautam</td>
                                        <td>2360.00</td>
                                        <td>284.00</td>
                                        <td>2076.00</td>
                                        <td>DA Arrear</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input id="ContentBody_ctl09" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                        </td>
                                        <td>2</td>
                                        <td>Brijmohan Patel</td>
                                        <td>2288.00</td>
                                        <td>274.00</td>
                                        <td>2014.00</td>
                                        <td>DA Arrear</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div class="row justify-content-center">
                    <div class="col-md-2 mt-4">
                        <div class="form-group">
                            <button type="button" class="Alert-Generate  btn-block btn btn-success  btn-rounded">Generate</button>
                        </div>
                    </div>
                    <div class="col-md-2 mt-4">
                        <div class="form-group">
                            <a href="ArrearFinalSubmission.aspx" class=" btn-block btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </div>
            <!--Description-->
            <fieldset>
                <legend>Description</legend>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="main-ul">
                            <li><strong>Delete Arrear (Radio Button)</strong>
                                <ul>
                                    <li>To Delete Arrear, after clicking on the radio button and searching, the grid will be open, there click on delete button data will be deleted. </li>
                                </ul>
                            </li>
                            <li><strong>Generate Arrear (Radio Button)</strong>
                                <ul>
                                    <li>To Generate Arrear, after clicking on the radio button and searching, the grid will be open, there click on Generate Arrear button Arrear will be generated. </li>
                                </ul>
                            </li>
                            <li><strong>Office Type </strong>
                                <ul>
                                    <li>User will be able to select the <strong>Office Type </strong>from the dropdown which will automatically reflect from Office Type Master.</li>
                                </ul>
                            </li>
                            <li><strong>Office Name (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select the  <strong>Office Name</strong> from the dropdown which will automatically reflect from Office Master.</li>
                                </ul>
                            </li>
                            <li><strong>Year (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Year </strong>from dropdown. Year populated from <strong>Year Master</strong>. </li>
                                </ul>
                            </li>
                            <li><strong>Month (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Month </strong>from dropdown. Month populated from <strong>Month Master </strong>. </li>
                                </ul>
                            </li>
                            <li><strong>Arrear Type (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Arrear Type </strong>from dropdown. Data populated from <strong>Arrear Type Master </strong>. </li>
                                </ul>
                            </li>
                            <li><strong>Search (Button)</strong>
                                <ul>
                                    <li>User should be able to click on Search button.</li>
                                    <li>On Search button click <strong>selected radio button</strong> wise grid will be open </li>
                                </ul>
                            </li>
                            <li><strong>Clear (Button)</strong>
                                <ul>
                                    <li>User should be able to click on Clear button.</li>
                                    <li>After clicking on Clear button all the fields should be Clear or reload the same page</li>
                                </ul>
                            </li>
                            <li><strong>PDF (Button)</strong>
                                <ul>
                                    <li>PDF button should be visible and user should be able to click.</li>
                                    <li>After clicking on PDF button grid view data export in PDF.</li>
                                </ul>
                            </li>
                            <li><strong>Excel (Button)</strong>
                                <ul>
                                    <li>Excel button should be visible and user should be able to click.</li>
                                    <li>After clicking on the Excel button, showing the data will be export to Excel.</li>
                                </ul>
                            </li>
                            <li><strong>Delete Button(Gridview)</strong>
                                <ul>
                                    <li>Delete button should be visible and user should be able to click.</li>
                                    <li>After clicking on Delete button grid row data will be deleted.</li>
                                </ul>
                            </li>
                            <li><strong>Checkbox (Checkbox)</strong>
                                <ul>
                                    <li><strong>Checkbox</strong> is always be <strong>Unchecked</strong>.</li>
                                    <li>The user must have the right to check or uncheck the Checkbox. </li>
                                </ul>
                            </li>
                            <li><strong>Generate (Button)</strong>
                                <ul>
                                    <li>Generate button should be visible and user should be able to click.</li>
                                    <li>After clicking on Generate button selected grid row will be genereted.</li>
                                </ul>
                            </li>
                            <li><strong>Clear (Button)</strong>
                                <ul>
                                    <li>User should be able to click on Clear button.</li>
                                    <li>After clicking on Clear button all the fields should be Clear or reload the same page</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </fieldset>
            <!-- End Description -->
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function toggleDivs() {
            var checkbox1 = document.getElementById("customRadio1");
            var checkbox2 = document.getElementById("customRadio2");
            var DeleteArrear = document.getElementById("DeleteArrear");
            var GenerateArrear = document.getElementById("GenerateArrear");

            if (checkbox1.checked) {
                DeleteArrear.style.display = "block"; // Show the first div
                GenerateArrear.style.display = "none"; // Hide the second div
            } else if (checkbox2.checked) {
                DeleteArrear.style.display = "none"; // Hide the first div
                GenerateArrear.style.display = "block"; // Show the second div
            }
            else {
                DeleteArrear.style.display = "none"; // Hide the first div
                GenerateArrear.style.display = "none"; // Show the second div
            }
        }
    </script>
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                $('.Alert-Delete').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Delete Details?",
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
                                text: 'Details Deleted Successfully!',
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


    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                $('.Alert-Generate').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Generate Arrear?",
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
                                text: 'Arrear Generated Successfully!',
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




