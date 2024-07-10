<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_SetEarningDeductionOptionalHeadValue.aspx.cs" Inherits="mis_Payroll_Mst_SetEarningDeductionOptionalHeadValue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        #show {
            display: none;
        }

        legend {
            margin-top: -2.0rem;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row align-items-end">
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
                        <li class="breadcrumb-item"><span>Set Earning & Deduction Optional Head Value</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से नए Set Earning & Deduction Optional Head Value को  Registered किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </marquee>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h4 class="card-title">Set Earning & Deduction Optional Head Value<br />
                        कमाई और कटौती का वैकल्पिक प्रमुख मूल्य निर्धारित करें</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Set Earning & Deduction Optional Head Value<br />
                    कमाई और कटौती का वैकल्पिक प्रमुख मूल्य निर्धारित करें</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Office Type<br />
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
                                Select Office Name<br />
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
                                Select Type of Post<br />
                                पोस्ट प्रकार का चयन करे<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">All</option>
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
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Employee Name<br />
                                कर्मचारी के नाम का चयन करे<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl00" type="text" class="form-control" placeholder="Enter Employee  Name" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                               Select Head Type<br />
                                मुखिया प्रकार का चयन करे<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Earning</option>
                                <option value="Bhopal">Deduction</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Earning & Deduction Head<br />
                                कमाई एवं कटौती के मुखिया का चयन करे<span style="color: red">*</span></label>
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
                                Select Calculation<br />
                                गणना का चयन करे<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Amount(Rs)/(Month Day) * (Payable Day)</option>
                                <option value="Bhopal">Percentage (%) (Basic + DA)</option>
                                <option value="Bhopal">Amount</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Value<br />
                                कीमत दर्ज करे<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" autocomplete="off" placeholder="Enter Value" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Effective Date<br />
                                प्रभावी तिथि दर्ज करे<span style="color: red">*</span></label>
                            <input type="date" class="form-control" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <input class="form-check-input" checked="checked" type="checkbox" data-val="true" data-val-required="The IsActive field is required." id="IsActive" name="IsActive" value="true">
                            <label class="form-check-label">
                                Status
								<small>(Active/InActive)</small><br>
                                स्थिति (सक्रिय/निष्क्रिय)
                            </label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <button type="button" class="Alert-Save btn btn-outline-success w-lg btn-border">Save</button>
                        <a href="Mst_SetEarningDeductionOptionalHeadValue.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>
            <fieldset id="show">
                <legend style="margin-top:-1.3rem">Details / विवरण</legend>
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
                                        <th>Sr.No.<br />
                                            सरल क्र.</th>
                                        <th>Office Type<br />
                                            कार्यालय का प्रकार</th>
                                        <th>Office Name
                                            <br />
                                            कार्यालय  का नाम</th>
                                        <th>Type Of Post<br />
                                            पोस्ट का प्रकार</th>
                                        <th>Employee Name<br />
                                            कर्मचारी का नाम</th>
                                        <th>Head Type<br />
                                            मुखिया का प्रकार</th>
                                        <th>Head Name<br />
                                            मुखिया का  नाम</th>
                                        <th>Calculation<br />
                                            गणना</th>
                                        <th>Value ⟨₹⟩<br />
                                            कीमत ⟨₹⟩</th>
                                        <th>Effective Date<br />
                                            प्रभावी तिथि</th>
                                        <th>Action<br />
                                          कार्यवाहीं</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Division Office</td>
                                        <td>Head Office</td>
                                        <td>Regular</td>
                                        <td>Ramji</td>
                                        <td>Earning</td>
                                        <td>HRA</td>
                                        <td>Amount(Rs) / (Month Day) *(Payable Day)</td>
                                        <td>50</td>
                                        <td>01/01/2023</td>
                                        <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>District Office</td>
                                        <td>JD Office</td>
                                        <td>Deputation</td>
                                        <td>Bharat</td>
                                        <td>Deduction</td>
                                        <td>EPF</td>
                                        <td>Percentage (%) (Basic + DA)</td>
                                        <td>70</td>
                                        <td>01/01/2023</td>
                                        <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Division Office</td>
                                        <td>DEO Office</td>
                                        <td>Regular</td>
                                        <td>Poonam</td>
                                        <td>Deduction</td>
                                        <td>PT</td>
                                        <td>Amount</td>
                                        <td>90</td>
                                        <td>01/01/2023</td>
                                        <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
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

                        var x = document.getElementById("show");
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

