<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_SetEarningDeductionValueHeadWise.aspx.cs" Inherits="mis_Payroll_Mst_SetEarningDeductionValueHeadWise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .deschide {
            display: none;
        }
    </style>
    <style>
        #show {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
   <%-- <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Set Earning & Deduction Value Head Wise</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=Masters" title="click to go on">Masters</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=Masters&SubID=PayrollMaster" title="click to go on">Payroll Master</a></li>
                    <li class="breadcrumb-item active">Set Earning & Deduction Optional Value Head Wise</li>
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
                        <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Master Data</span></a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="#PayrollMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')"><span>Payroll Master</span></a>
                    </li>
                    <li class="breadcrumb-item"><span>Set Earning & Deduction Optional Value Head Wise</span></li>
                </ol>
            </div>
        </div>
    </div>
</div>
<div class="marqueecontainer">
    <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
    <div>
        <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
            इस पेज के माध्यम से नए Set Earning & Deduction Optional Value Head Wise को  Registered किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
        </marquee>
    </div>
</div>
<div class="card card-border-primary">
    <div class="card-header">
        <div class="row align-items-end">
            <div class="col-lg-12">
                <h6 class="card-title">Set Earning & Deduction Optional Value Head Wise/कमाई और कटौती का वैकल्पिक मूल्य शीर्ष के अनुसार निर्धारित करें</h6>
            </div>
        </div>
    </div>
    <div class="card-body">
        <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Set Earning & Deduction Head Values/कमाई और कटौती का वैकल्पिक मूल्य शीर्ष के अनुसार निर्धारित करें</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Office Type/<br />कार्यालय का प्रकार<span style="color: red">*</span></label>
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
                            <label>Office Name/<br />कार्यालय का नाम<span style="color: red">*</span></label>
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
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Type of Post/<br />पोस्ट का प्रकार<span style="color: red">*</span></label>
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
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Head Type/<br />मुखिया का प्रकार<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Earning</option>
                                <option value="Bhopal">Deduction</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Earning/Deduction Head/<br />कमाई एवं कटौती का मुखिया<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">HRA</option>
                                <option value="Bhopal">EPF</option>
                                <option value="Bhopal">PT</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Calculation/<br />गणना<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Amount(Rs)/(Month Day) * (Payable Day)</option>
                                <option value="Bhopal">Percentage (%) (Basic + DA)</option>
                                <option value="Bhopal">Amount</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Value/<br />कीमत<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" autocomplete="off" placeholder="Enter Value" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Effective Date/<br />प्रभावी तिथि<span style="color: red">*</span></label>
                            <input type="date" class="form-control" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Order No./<br />आदेश संख्या<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" autocomplete="off" placeholder="Enter Order No." />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Order Date/<br />आर्डर की तारीख<span style="color: red">*</span></label>
                            <input type="date" class="form-control" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Upload Document (In PDF)/<br />दस्तावेज़ अपलोड करें (पीडीएफ में)</label>
                            <input type="file" name="name" class="form-control" value="" />
                        </div>
                    </div>
                </div>
                <%--<div class="row justify-content-center">
                    <div class="col-md-2 mt-4">
                        <div class="form-group">
                            <button type="button" class="btn-block Alert-Save btn btn-success  btn-rounded">Save</button>
                        </div>
                    </div>
                    <div class="col-md-2 mt-4">
                        <div class="form-group">
                            <a href="Mst_SetEarningDeductionValueHeadWise.aspx" class="btn-block btn btn-danger  btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>--%>
                                    <hr />
<div class="col-md-12">
    <button type="button" class="Alert-Save btn btn-outline-success w-lg btn-border">Save</button>
    <a href="Mst_SetEarningDeductionValueHeadWise.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
</div>
            </fieldset>
            <fieldset id="show">
                <legend>Details/विवरण</legend>
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
                                <tr style="white-space:nowrap!important;">
                                    <th>Sr.No./<br />सरल क्र</th>
                                    <th>Office Type/<br />कार्यालय का प्रकार</th>
                                    <th>Office Name/<br /> कार्यालय का नाम</th>
                                    <th>Type Of Post/<br />पोस्ट का प्रकार</th>
                                    <th>Head Type/<br />मुखिया का प्रकार</th>
                                    <th>Head Name/<br />मुखिया का नाम</th>
                                    <th>Calculation/<br />गणना</th>
                                    <th>Value/<br />कीमत</th>
                                    <th>Effective Date/<br />प्रभावी तिथि</th>
                                    <th>Order No/<br />आदेश संख्या</th>
                                    <th>Order Date/<br />आर्डर की तारीख</th>
                                    <th>Document/<br />दस्तावेज़ </th>
                                    <th>Action/<br />सक्रिय है</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Division Office</td>
                                    <td>Head Office</td>
                                    <td>Regular</td>
                                    <td>Earning</td>
                                    <td>HRA</td>
                                    <td>Amount(Rs) / (Month Day) * (Payable Day)</td>
                                    <td>100</td>
                                    <td>01/01/2023</td>
                                    <td>13566</td>
                                    <td>10/01/2023</td>
                                    <td>
                                        <a onclick="openPDF()" class="btn" onclientclick="return false;"><i class="fas fa-eye"></i>View</a>
                                    </td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>District Office</td>
                                    <td>JD Office</td>
                                    <td>Deputation</td>
                                    <td>Deduction</td>
                                    <td>EPF</td>
                                    <td>Percentage (%) (Basic + DA)</td>
                                    <td>200</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td>
                                        <a onclick="openPDF()" class="btn" onclientclick="return false;"><i class="fas fa-eye"></i>View</a>
                                    </td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Division Office</td>
                                    <td>DEO Office</td>
                                    <td>Regular</td>
                                    <td>Deduction</td>
                                    <td>PT</td>
                                    <td>Amount</td>
                                    <td>150</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td>-</td>
                                    <td>
                                        <a class="btn" onclientclick="openPDF()"><i class="fas fa-eye"></i>View</a>

                                    </td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <!--Description-->
            <fieldset id="dcp" runat="server">
                <legend>Description</legend>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="main-ul">
                            <li><strong>Office Type </strong>
                                <ul>
                                    <li>User will be able to select the <strong>Office Type </strong>from the dropdown and the data will be populated from the<strong> Office Type Master.</strong></li>
                                </ul>
                            </li>
                            <li><strong>Office Name (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Office Name </strong>from dropdown. Data populated from <strong>Office Master </strong>. </li>
                                </ul>
                            </li>
                            <li><strong>Type of Post (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Type of Post </strong>from dropdown. Data populated from <strong>Post Master </strong>. </li>
                                </ul>
                            </li>
                            <li><strong>Head Type (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select Head Type from dropdown. Data populated from Head Type master. </li>
                                </ul>
                            </li>
                            <li><strong>Earning/Deduction Head (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Earning/Deduction Head </strong>from dropdown. Data populated from <strong>Earning/Decuction Head Master </strong>. </li>
                                </ul>
                            </li>

                            <li><strong>Calculation (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select Calculationfrom dropdown. Data populated from Calculation Process Master.</li>
                                </ul>
                            </li>
                            <li><strong>Value (Textbox)</strong>
                                <ul>
                                    <li>User will be able to Enter <strong>Value </strong>in textbox.</li>
                                </ul>
                            </li>
                            <li><strong>Effective Date (Textbox)</strong>
                                <ul>
                                    <li>User will be able to select Date, the field should be in a calendar format</li>
                                </ul>
                            </li>
                            <li><strong>Order No. (Textbox)</strong>
                                <ul>
                                    <li>User will be able to Enter <strong>Order No. </strong>in textbox.</li>
                                </ul>
                            </li>
                            <li><strong>Order Date (Textbox)</strong>
                                <ul>
                                    <li>User will be able to Enter <strong>Order Date </strong>in textbox.</li>
                                </ul>
                            </li>

                            <li><strong>Upload Document (In PDF) (File Upload)</strong>
                                <ul>
                                    <li>User will be able to Upload Document</li>
                                </ul>
                            </li>
                            <li><strong>Save (Button)</strong>
                                <ul>
                                    <li>User should be able to click on save button.</li>
                                    <li>Click on save button form all mandatory filed should be validate in process.</li>
                                    <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to save this record?").</li>
                                    <li>If click on Yes – Data will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!")..</li>
                                    <li>If click on NO the record will not be saved and will return to the same page.</li>
                                </ul>
                            </li>
                            <li><strong>Clear (Button)</strong>
                                <ul>
                                    <li>User should be able to click on Clear button.</li>
                                    <li>After clicking on Clear button all the fields should be Clear or reload the same page</li>
                                </ul>
                            </li>
                            <li><strong>Excel (Button)</strong>
                                <ul>
                                    <li>Excel button should be visible and user should be able to click.</li>
                                    <li>After clicking on the Excel button, showing the data will be export to Excel.</li>
                                </ul>
                            </li>
                            <li><strong>PDF (Button)</strong>
                                <ul>
                                    <li>PDF button should be visible and user should be able to click.</li>
                                    <li>After clicking on PDF button grid view data export in PDF.</li>
                                </ul>
                            </li>
                            <li><strong>View (Button)</strong>
                                <ul>
                                    <li>The uploaded PDF file can be viewed by clicking on the View button.</li>
                                </ul>
                            </li>

                            <li><strong>Action Gridview(Edit)</strong>
                                <ul>
                                    <li>Click The Edit Icon - A Pop Up Message Will Open -Popup Message - Do You Want To Update The details?</li>
                                    <li>On Choose Yes Button option, The Form Will Come In The Editable format.</li>
                                    <li>After Editing The details in the from,  On Click The Update Button,( A Pop Up Message Will Open. )- Message- Do You Want To Update details.</li>
                                    <li>Choose YES - Popup Message - Data Updated Successfully.</li>
                                    <li>Choose No - Data will be not Update.</li>
                                </ul>
                            </li>
                            <li><strong>Action Gridview(Delete)</strong>
                                <ul>
                                    <li>If the user wants to delete a record – the user can click on the delete icon. Will permanently delete the record.</li>
                                    <li>A Pop Up Message Will Be Shown - Popup Message - Do You Want To Delete The record ?</li>
                                    <li>On Doing YES,</li>
                                    <li>The record Will Be Deleted And The Popup Message Will Be Shown</li>
                                    <li>Popup Message - Record Deleted Successfully.</li>
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
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/TEXTFILE.pdf';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
    </script>

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

