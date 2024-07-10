<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SameAmountSettheAllemployeeheadwise.aspx.cs" Inherits="mis_Payroll_SetHeadWiseEarningDeduction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <script>
        function myFunction() {
            var x = document.getElementById("show");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>
    <style>
        #show {
            display: none;
        }
    </style>
    <style>
        #Details {
            display: none;
        }
    </style>
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
                            <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Master Data</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#PayrollMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')"><span>Payroll Master</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Same Amount Set All the Employee Head Wise</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से नए Same Amount Set All the Employee Head Wise को  Registered किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </marquee>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h6 class="card-title">Same Amount Set All the Employee Head Wise<br />
                        सभी कर्मचारी शीर्षवार समान राशि निर्धारित करें</h6>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Set Head Wise Earning / Deduction / शीर्षवार कमाई/कटौती निर्धारित करें</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Office Type<br>
                                कार्यालय प्रकार का चयन करे<span style="color: red">*</span></label>
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
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Office Name<br>
                                कार्यालय नाम का चयन करे<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Head Office</option>
                                <option value="Bhopal">JOINT DIRECTORS</option>
                                <option value="Bhopal">DISTRICT EDUCATION OFFICERS</option>
                                <option value="Bhopal">BLOCK EDUCATION OFFICERS</option>
                                <option value="Bhopal">SANKUL/AEO</option>
                                <option value="Bhopal">SCHOOL</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Year<br>
                                वर्ष का चयन करे<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">2022</option>
                                <option value="Bhopal">2023</option>
                                <option value="Bhopal">2024</option>
                                <option value="Bhopal">2025</option>
                                <option value="Bhopal">2026</option>
                                <option value="Bhopal">2027</option>
                                <option value="Bhopal">2028</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Month<br>
                                माह का चयन करे<span style="color: red">*</span></label>
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
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Earning & Deduction Head<br>
                                कमाई एवं कटौती का मुखिया का चयन करे<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">HRA</option>
                                <option value="Bhopal">EPF</option>
                                <option value="Bhopal">PT</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                SelectType of Post<br>
                                पोस्ट प्रकार का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Regular/Permanent">Regular/Permanent</option>
                                <option value="Fixed Employee">Fixed Employee</option>
                                <option value="Contigent Employee">Contigent Employee</option>
                                <option value="Samvida Employee">Samvida Employee</option>
                                <option value="Theka Shramik">Theka Shramik</option>
                                <option value="Outsource Employee">Outsource Employee</option>
                                <option value="Deputation Employee">Deputation Employee</option>
                                <option value="Contractual Employee">Contractual Employee</option>
                                <option value="Daily Wage's Employee">Daily Wage's Employee</option>
                                <option value="Dally Wages Federation">Dally Wages Federation</option>
                                <option value="Job Rate Employee">Job Rate Employee</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <button type="button" onclick="myFunction()" class="btn btn-outline-success w-lg btn-border">Save</button>
                        <a href="SameAmountSettheAllemployeeheadwise.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>
            <div id="show">
                <fieldset>
                    <legend>Details / विवरण </legend>
                    <div class="row justify-content-end">
                        <div class="col-md-4">
                            <div class="form-group">
                                <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" placeholder="Set Amount" autocomplete="off" style="position: relative; left: 300px;" />
                            </div>
                        </div>
                        <div class="col-md-6 justify-content-end" style="position: relative; left: 300px;">
                            <div class="form-group">
                                <button type="button" class=" btn btn-outline-success fs-6 w-lg btn-border">
                                    Set Same Amount
                                    <br />
                                    for All Employee</button>
                            </div>
                        </div>
                        <div class="table-responsive col-md-12">
                            <table class="table">
                                <tr>
                                    <th>All<br />
                                        <input id="ContentBody_cstl08" type="checkbox" name="ctl00$ContentBody$ctl06" /></th>
                                    <th>Sr.No.<br>
                                        सरल क्र</th>
                                    <th>Employee Name<br>
                                        कर्मचारी का नाम</th>
                                    <th>Designation<br />
                                        पद का नाम</th>
                                    <th>Amount⟨₹⟩<br>
                                        राशि ⟨₹⟩</th>
                                </tr>
                                <tr>
                                    <td>
                                        <input id="ContentBody_ctl08" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                    </td>
                                    <td>1</td>
                                    <td>Ram Ji Pandey</td>
                                    <td>Class Teacher</td>
                                    <td>250</td>
                                </tr>
                                <tr>
                                    <td>
                                        <input id="ContentBody_ctl07" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                    </td>
                                    <td>2</td>
                                    <td>Swaroop Dubey</td>
                                    <td>Principle</td>
                                    <td>360</td>
                                </tr>
                                <tr>
                                    <td>
                                        <input id="ContentBody_ctl09" type="checkbox" name="ctl00$ContentBody$ctl06" />
                                    </td>
                                    <td>3</td>
                                    <td>Poonam Sharma</td>
                                    <td>Asst. Manager</td>
                                    <td>500</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <hr />
                    <div class="col-md-12">
                        <button type="button" onclick="myFunction()" class="Alert-Save btn btn-outline-success w-lg btn-border">Save</button>
                        <a href="SameAmountSettheAllemployeeheadwise.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </fieldset>
                <fieldset id="Details">
                    <legend>Set Head Wise Amount Details (Report) / शीर्षवार राशि विवरण निर्धारित करें (रिपोर्ट)</legend>
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
                                <table class="table table-bordered text-center">
                                    <thead class="nowrap">
                                        <tr>
                                            <th>Sr.No.<br>
                                                सरल क्र</th>
                                            <th>Office Type<br>
                                                कार्यालय का प्रकार</th>
                                            <th>Office Name<br>
                                                कार्यालय का नाम</th>
                                            <th>Year<br>
                                                वर्ष </th>
                                            <th>Month<br>
                                                महीना </th>
                                            <th>Head Name<br>
                                                मुखिया का नाम </th>
                                            <th>Type Of Post
                                            <br>
                                                पोस्ट का प्रकार</th>
                                            <th>Action<br>
                                                कार्यवाहीं</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>1</td>
                                        <td>Division Office</td>
                                        <td>Head Office</td>
                                        <td>2023 </td>
                                        <td>Jan</td>
                                        <td>DA</td>
                                        <td>Regular</td>
                                        <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>District Office</td>
                                        <td>JDO </td>
                                        <td>2023 </td>
                                        <td>April</td>
                                        <td>House Rent</td>
                                        <td>Regular</td>
                                        <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Save Details?",
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
                                text: 'Details Saved Successfully!',
                                timer: 2000

                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )

                        }

                        var x = document.getElementById("Details");
                        if (x.style.display === "none") {
                            x.style.display = "block";
                        } else {
                            x.style.display = "block";
                        }
                    })
                });
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
                $('.Alert-Edit').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Edit Details?",
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
                        //if (result.value) {
                        //    Swal.fire({
                        //        type: 'success',
                        //        title: 'Success!',
                        //        text: 'Salary Generated Successfully!',
                        //        timer: 2000
                        //        // animation: false,
                        //        // customClass: {
                        //        //     popup: 'animated tada'
                        //        // }
                        //    }
                        //    )
                        //}
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

