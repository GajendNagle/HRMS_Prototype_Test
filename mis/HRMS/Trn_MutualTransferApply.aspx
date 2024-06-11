<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_MutualTransferApply.aspx.cs" Inherits="mis_HRMS_Trn_ApplMutualTransfer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #empDetail {
            display: none;
        }

        th {
            white-space: nowrap;
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
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#EmployeeMutualTransfer" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee Mutual Transfer</span></a>
                        </li>
                        <li class="breadcrumb-item">Apply Mutual Transfer</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-7">
                    <h4 class="card-title">Apply Mutual Transfer / पारस्परिक स्थानांतरण लागू करें</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Employee Personal Information / कर्मचारी की व्यक्तिगत जानकारी
                </legend>
                <div class="row align align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Employee Name /<br />
                                कर्मचारी का नाम<span style="color: red">*</span></label>
                            <input name="txtEmpName" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Employee Name" value="Arjun Talwar" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Unique ID /<br />
                                यूनिक आई.डी<span style="color: red">*</span></label>
                            <input name="txtUniqueID" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Unique ID" value="AR4781" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Designation /<br />
                                पदनाम<span style="color: red">*</span></label>
                            <input name="txtDesignation" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Designation" value="Teacher (UDT)" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                District /<br />
                                ज़िला<span style="color: red">*</span></label>
                            <input name="txtDistrict" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter District" value="Bhopal" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Block /<br />
                                विकासखण्ड<span style="color: red">*</span></label>
                            <input name="txtBlock" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Block" value="Govindapura" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Area /<br />
                                क्षेत्र<span style="color: red">*</span></label>
                            <input name="txtBlock" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Area" value="Urban" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Sankul Code/ Name /
                 <br />
                                संकुल कोड / नाम<span style="color: red">*</span></label>
                            <input name="txtSankulName" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Sankul Name" value="15151235256-PVT VINAYAK PUBLIC SCHOOL TARRAKHURD" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                School Code/ Name /
                 <br />
                                स्कूल कोड / नाम<span style="color: red">*</span></label>
                            <input name="txtSchoolName" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter School Name" value="15151235256-PVT VINAYAK PUBLIC SCHOOL TARRAKHURD" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Subject /
                            <br />
                                विषय<span style="color: red">*</span></label>
                            <input name="txtSubject" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Subject" value="Mathematics" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Date of Birth /
                                    <br />
                                जन्मतिथि<span style="color: red">*</span></label>
                            <input name="DOB" id="txtDOB1" class="form-control" readonly autocomplete="off" value="17/07/1992" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Age (As On 01.07.2024) /<br />
                                आयु (वर्तमान की स्थिति में)<span style="color: red">*</span></label>
                            <input name="DOB" id="txtAgeCrrnt1" class="form-control" readonly autocomplete="off" value="32 years" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Professional Qualifications /
                                <br />
                                शैक्षणिक योग्यता<span style="color: red">*</span></label>
                            <input name="txtQualification" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Educational And Professional Qualifications" value="B Tech" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Panel Group /
                                <br />
                                पैनल समूह<span style="color: red">*</span></label>
                            <input name="txtPanel" type="text" class="form-control" readonly autocomplete="off" value="SSS-1 Mathematics" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Date Posted in Current Organization /
                              <br />
                                वर्तमान संस्था में पदस्थ दिनांक<span style="color: red">*</span></label>
                            <input name="DOB" id="txtDatePostedCrrnOrg1" class="form-control" readonly autocomplete="off" value="15/04/2002" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Total Duration in Years /
                                <br />
                                कुल अवधि वर्षो में<span style="color: red">*</span></label>
                            <input name="txtTotalDurantionYears" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Total Duration in Years" value="4" />
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Unique Code of the Person With Whom Mutual Transfer is Desired
                    <br />
                    जिसके साथ पारस्परिक स्थानांतरण चाहा गया है उसका यूनिक कोड
                </legend>
                <div class="row align-items-end">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>
                                Unique code of the person with whom mutual transfer is desired / 
                                <br />
                                जिसके साथ पारस्परिक स्थानांतरण चाहा गया है उसका यूनिक कोड<span style="color: red">*</span></label>
                            <input name="txtTotalEnrolledCrrnPost" type="text" class="form-control" autocomplete="off" placeholder="Enter Unique code " />
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <button id="Button1" type="button" class="btn w-lg btn-success btn-border" onclick="myFunction()">View Employee Information</button>

                        </div>
                    </div>
                </div>

            </fieldset>
            <div id="empDetail">
                <fieldset>
                    <legend>Employee Personal Information whom mutual transfer is desired
                        <br />
                        कर्मचारी की व्यक्तिगत जानकारी जिसका पारस्परिक स्थानांतरण चाहा गया है
                    </legend>
                    <div class="row align align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Employee Name /<br />
                                    कर्मचारी का नाम<span style="color: red">*</span></label>
                                <input name="txtEmpName" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Employee Name" value="Aman Patidar" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Unique ID /<br />
                                    यूनिक आई.डी<span style="color: red">*</span></label>
                                <input name="txtUniqueID" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Unique ID" value="AR4890" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Designation /<br />
                                    पदनाम<span style="color: red">*</span></label>
                                <input name="txtDesignation" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Designation" value="Teacher (UDT)" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    District /<br />
                                    ज़िला<span style="color: red">*</span></label>
                                <input name="txtDistrict" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter District" value="Bhopal" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Block /<br />
                                    ब्लॉक<span style="color: red">*</span></label>
                                <input name="txtBlock" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Block" value="Govindapura" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Area /<br />
                                    क्षेत्र<span style="color: red">*</span></label>
                                <input name="txtBlock" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Area" value="Urban" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Sankul Code/ Name /
                 <br />
                                    संकुल कोड / नाम<span style="color: red">*</span></label>
                                <input name="txtSankulName" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Sankul Name" value="15151236526-GOV VINAYAK PUBLIC SCHOOL TARRAKHURD" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    School Code/ Name /
                 <br />
                                    स्कूल कोड / नाम<span style="color: red">*</span></label>
                                <input name="txtSchoolName" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter School Name" value="15151235256-PVT VINAYAK PUBLIC SCHOOL TARRAKHURD" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Subject /
                                <br />
                                    विषय <span style="color: red">*</span></label>
                                <input name="txtSubject" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Subject" value="Mathematics" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Date of Birth /
                                    <br />
                                    जन्मतिथि<span style="color: red">*</span></label>
                                <input name="DOB" id="txtDOB" class="form-control" readonly autocomplete="off" value="17/07/1992" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Age (As On 01.07.2024) /<br />
                                    आयु (वर्तमान की स्थिति में)<span style="color: red">*</span></label>
                                <input name="DOB" id="txtAgeCrrnt" class="form-control" readonly autocomplete="off" value="32 years" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Professional Qualifications /
                                    <br />
                                    शैक्षणिक योग्यता<span style="color: red">*</span></label>
                                <input name="txtQualification" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Educational And Professional Qualifications" value="B Tech" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Panel Group /
                                    <br />
                                    पैनल समूह<span style="color: red">*</span></label>
                                <input name="txtPanel" type="text" class="form-control" readonly autocomplete="off" value="SSS-1 Mathematics" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Date Posted in Current Organization /
                              <br />
                                    वर्तमान संस्था में पदस्थ दिनांक<span style="color: red">*</span></label>
                                <input name="DOB" id="txtDatePostedCrrnOrg" class="form-control" readonly autocomplete="off" value="15/04/2002" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Total Duration in Years /
                                    <br />
                                    कुल अवधि वर्षो में<span style="color: red">*</span></label>
                                <input name="txtTotalDurantionYears" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Total Duration in Years" value="4" />
                            </div>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-md-12">
                            <button id="Button2" type="button" class="btn btn-success btn w-lg btn-border Alert-Save" onclick="myFunction()">Request Mutual Transfer</button>

                            <a href="Trn_MutualTransferApply.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
    <script>
        function myFunction() {
            document.getElementById("empDetail").style.display = "block";

        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Save This Record?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'

                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Tour Apply Successfully!',
                                timer: 2000
                            }
                            )
                            var x = document.getElementById("EmployeeDetails2");

                            if (x.style.display === "none") {
                                x.style.display = "block";
                            }
                            else {
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

