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
    <div class="row page-titles" style="margin-bottom: -30px">
        <div class="col-md-4 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/OTTMS.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>
        </div>
        <div class="col-md-4 mt-4 ">
            <p style="font-style: oblique; color: brown; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; text-align: center">कर्मचारी पारस्परिक स्थानांतरण </p>
        </div>
        <div class="col-md-4 align-self-center">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>

                    <li class="breadcrumb-item active">Apply Mutual Transfer</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <nav class="navbar navbar-expand-lg topbar ">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse " id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                <li class="nav-item dropdown ">
                    <a class="nav-link  text-white " href="Trn_MutualTransferApplication.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle  font-16 text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><strong><b><i class="far fa-hand-point-right"></i>
                            Mutual Transfer Application</b></strong></a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="Trn_MutualTransferApply.aspx">Mutual Transfer Apply</a></li>
                            <li><a class="dropdown-item" href="MutualTransferDraftApplication.aspx">Print Draft Application or Update Application</a></li>
                            <li><a class="dropdown-item" href="MutualTransLockApplication.aspx">Lock Application</a></li>
                        </ul>
                    </li>
                    <a class="nav-link  text-white " href="MutualTransferApplicationStatus.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Mutual Transfer Application Status</b></a>
                </li>
            </ul>
        </div>
    </div>
</nav>
            <br />
            <br />
            <fieldset>
                <legend>Employee Personal Information / कर्मचारी की व्यक्तिगत जानकारी
                </legend>
                <div class="row mt-2">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Employee Name / कर्मचारी का नाम<span style="color: red">*</span></label>
                            <input name="txtEmpName" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Employee Name" value="Arjun Talwar" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Unique ID / यूनिक आई.डी<span style="color: red">*</span></label>
                            <input name="txtUniqueID" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Unique ID" value="AR4781" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Designation / पदनाम <span style="color: red">*</span></label>
                            <input name="txtDesignation" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Designation" value="Teacher (UDT)" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <label class="font-bold">
                            District / ज़िला<span style="color: red">*</span></label>
                        <input name="txtDistrict" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter District" value="Bhopal" />
                    </div>

                    <div class="col-md-3">
                        <label class="font-bold">
                            Block<br />
                            ब्लॉक<span style="color: red">*</span></label>
                        <input name="txtBlock" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Block" value="Govindapura" />
                    </div>

                    <div class="col-md-3">
                        <label class="font-bold">
                            Area<br />
                            क्षेत्र<span style="color: red">*</span></label>
                        <input name="txtBlock" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Area" value="Urban" />
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Sankul Code/ Name
                 <br />
                                संकुल कोड / नाम<span style="color: red">*</span></label>
                            <input name="txtSankulName" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Sankul Name" value="15151235256-PVT VINAYAK PUBLIC SCHOOL TARRAKHURD" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                School Code/ Name
                 <br />
                                स्कूल कोड / नाम<span style="color: red">*</span></label>
                            <input name="txtSchoolName" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter School Name" value="15151235256-PVT VINAYAK PUBLIC SCHOOL TARRAKHURD" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <label class="font-bold">
                            Subject
                            <br />
                            विषय <span style="color: red">*</span></label>
                        <input name="txtSubject" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Subject" value="Mathematics" />
                    </div>


                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Date of Birth
                                    <br />
                                जन्मतिथि<span style="color: red">*</span></label>
                            <input name="DOB" id="txtDOB1" class="form-control" readonly autocomplete="off" value="17/07/1992" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Age (As On 01.07.2024)<br />
                                आयु (वर्तमान की स्थिति में)<span style="color: red">*</span></label>
                            <input name="DOB" id="txtAgeCrrnt1" class="form-control" readonly autocomplete="off" value="32 years" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Professional Qualifications
                                <br />
                                शैक्षणिक योग्यता<span style="color: red">*</span></label>
                            <input name="txtQualification" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Educational And Professional Qualifications" value="B Tech" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Panel Group
                                <br />
                                पैनल समूह<span style="color: red">*</span></label>
                            <input name="txtPanel" type="text" class="form-control" readonly autocomplete="off" value="SSS-1 Mathematics" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Date Posted in Current Organization 
                              <br />
                                वर्तमान संस्था में पदस्थ दिनांक<span style="color: red">*</span></label>
                            <input name="DOB" id="txtDatePostedCrrnOrg1" class="form-control" readonly autocomplete="off" value="15/04/2002" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Total Duration in Years
                                <br />
                                कुल अवधि वर्षो में<span style="color: red">*</span></label>
                            <input name="txtTotalDurantionYears" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Total Duration in Years" value="4" />
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Unique Code of the Person With Whom Mutual Transfer is Desired
                </legend>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>
                                Unique code of the person with whom mutual transfer is desired
                                <br />
                                जिसके साथ पारस्परिक स्थानांतरण चाहा गया है उसका यूनिक कोड <span style="color: red">*</span></label>
                            <input name="txtTotalEnrolledCrrnPost" type="text" class="form-control" autocomplete="off" placeholder="Enter Unique code " />
                        </div>
                    </div>
                    <div class="col-md-3" style="margin-top: -20px;">
                        <button id="Button1" type="button" class="btn btn-success btn-rounded" style="margin-top: 70px" onclick="myFunction()">View Employee Information</button>
                        <%-- <a href="Trn_ApplyMutualTransfer.aspx" class="btn btn-info btn-rounded">Reset Details</a>--%>
                    </div>
                </div>

            </fieldset>
            <div id="empDetail">
                <fieldset>
                    <legend>Employee Personal Information whom mutual transfer is desired
                    </legend>
                    <div class="row mt-2">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Employee Name / कर्मचारी का नाम<span style="color: red">*</span></label>
                                <input name="txtEmpName" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Employee Name" value="Aman Patidar" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Unique ID / यूनिक आई.डी<span style="color: red">*</span></label>
                                <input name="txtUniqueID" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Unique ID" value="AR4890" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Designation / पदनाम <span style="color: red">*</span></label>
                                <input name="txtDesignation" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Designation" value="Teacher (UDT)" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label class="font-bold">
                                District / ज़िला<span style="color: red">*</span></label>
                            <input name="txtDistrict" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter District" value="Bhopal" />
                        </div>

                        <div class="col-md-3">
                            <label class="font-bold">
                                Block<br />
                                ब्लॉक<span style="color: red">*</span></label>
                            <input name="txtBlock" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Block" value="Govindapura" />
                        </div>

                        <div class="col-md-3">
                            <label class="font-bold">
                                Area<br />
                                क्षेत्र<span style="color: red">*</span></label>
                            <input name="txtBlock" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Area" value="Urban" />
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Sankul Code/ Name
                 <br />
                                    संकुल कोड / नाम<span style="color: red">*</span></label>
                                <input name="txtSankulName" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Sankul Name" value="15151236526-GOV VINAYAK PUBLIC SCHOOL TARRAKHURD" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    School Code/ Name
                 <br />
                                    स्कूल कोड / नाम<span style="color: red">*</span></label>
                                <input name="txtSchoolName" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter School Name" value="15151235256-PVT VINAYAK PUBLIC SCHOOL TARRAKHURD" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label class="font-bold">
                                Subject
                                <br />
                                विषय <span style="color: red">*</span></label>
                            <input name="txtSubject" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Subject" value="Mathematics" />
                        </div>


                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Date of Birth
                                    <br />
                                    जन्मतिथि<span style="color: red">*</span></label>
                                <input name="DOB" id="txtDOB" class="form-control" readonly autocomplete="off" value="17/07/1992" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Age (As On 01.07.2024)<br />
                                    आयु (वर्तमान की स्थिति में)<span style="color: red">*</span></label>
                                <input name="DOB" id="txtAgeCrrnt" class="form-control" readonly autocomplete="off" value="32 years" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Professional Qualifications
                                    <br />
                                    शैक्षणिक योग्यता<span style="color: red">*</span></label>
                                <input name="txtQualification" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Educational And Professional Qualifications" value="B Tech" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Panel Group
                                    <br />
                                    पैनल समूह<span style="color: red">*</span></label>
                                <input name="txtPanel" type="text" class="form-control" readonly autocomplete="off" value="SSS-1 Mathematics" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Date Posted in Current Organization 
                              <br />
                                    वर्तमान संस्था में पदस्थ दिनांक<span style="color: red">*</span></label>
                                <input name="DOB" id="txtDatePostedCrrnOrg" class="form-control" readonly autocomplete="off" value="15/04/2002" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Total Duration in Years
                                    <br />
                                    कुल अवधि वर्षो में<span style="color: red">*</span></label>
                                <input name="txtTotalDurantionYears" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Total Duration in Years" value="4" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5"></div>
                        <div class="col-md-6">
                            <button id="Button2" type="button" class="btn btn-success btn-rounded Alert-Save" onclick="myFunction()">Request Mutual Transfer</button>

                            <%-- <a href="Trn_ApplyMutualTransfer.aspx" class="btn btn-info btn-rounded">Reset Details</a>--%>
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

