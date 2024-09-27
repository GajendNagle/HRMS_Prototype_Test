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
                                <span>Transfer Request</span></a>
                        </li>
                        <li class="breadcrumb-item">Apply Mutual Transfer</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <%-- <div class="row mb-1">
        <div class="col-md-4 ">

            <img src="../../img/OTTMS.png" style="height: 70px" itle="Compassionate Appointment Facilitation &amp; Monitoring System (CAFMS)">
            <p></p>
        </div>
    </div>--%>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-10 col-md-12">
                    <div class="marqueecontainer border-0">
                        <div class="headertext btn btn-primary rounded-pill py-2 d-flex align-items-center">
                            &#x92A;&#x93E;&#x930;&#x938;&#x94D;&#x92A;&#x930;&#x93F;&#x915; &#x938;&#x94D;&#x925;&#x93E;&#x928;&#x93E;&#x902;&#x924;&#x930;&#x923;  &#x915;&#x947; &#x932;&#x93F;&#x90F; &#x906;&#x935;&#x947;&#x926;&#x928; &#x915;&#x930;&#x947;&#x902;,
                        विवरण
                        </div>
                        <div>
                            <marquee style="width: 100%;"
                                onmouseover="this.stop();" onmouseout="this.start();"
                                direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black mt-1">
                                कर्मचारी इस पेज के माध्यम से पारस्परिक स्थानांतरण  के लिए आवेदन कर सकता  हैं।
                            </marquee>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend class="border border-dark border-2">Employee Personal Information / कर्मचारी की व्यक्तिगत जानकारी
                </legend>
                <div class="row align align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                        <div class="form-group">
                            <label>
                                Employee Name (Code)/<br />
                                कर्मचारी का नाम (कोड)</label>
                            <input name="txtEmpName" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="Enter Employee Name" value="Sajeda  Hameed (AA1142)" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                        <div class="form-group">
                            <label>
                                Unique ID/<br />
                                यूनिक आई.डी</label>
                            <input name="txtUniqueID" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="Enter Unique ID" value="AA1142" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                        <div class="form-group">
                            <label>
                                Designation/<br />
                                पदनाम</label>
                            <input name="txtDesignation" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="Enter Designation" value="Prathmik Shikshak" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                        <div class="form-group">
                            <label>
                                District Name (Code)/<br />
                                जिले का नाम (कोड)</label>
                            <input name="txtDistrict" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="Enter District" value="Bhopal (32)" />
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                        <div class="form-group">
                            <label>
                                Block Name (Code)/<br />
                                विकासखण्ड का नाम (कोड)</label>
                            <input name="txtBlock" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="Enter Block" value="Phanda URBAN- New City (211)" />
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                        <div class="form-group">
                            <label>
                                Sankul Name (Code)/<br />
                                संकुल का नाम (कोड)</label>
                            <input name="txtSankulName" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="Enter Area" value="0" />
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                        <div class="form-group">
                            <label>
                                Present OIS (UDISE Code)/<br />
                                वर्तमान ओ.आई.एस.(कोड)</label>
                            <input name="txtOIScode" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="GOVT HSS BAGH SEVANIA (23320302539)" value="GOVT HSS BAGH SEVANIA (23320302539)" />
                        </div>
                    </div>




                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                        <div class="form-group">
                            <label>
                                Area (Urban/Rural)/<br />
                                क्षेत्र (शहरी/ग्रामीण)</label>
                            <input name="txtArea" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="Enter Sankul Name" value="NA" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                        <div class="form-group">
                            <label>
                                Date of Birth/<br />
                                जन्मतिथि</label>
                            <input name="txtDob" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="Enter School Name" value="05/10/1962" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                        <div class="form-group">
                            <label>
                                Age (Current age in years )/<br />
                                आयु (वर्तमान आयु वर्षों में)</label>
                            <input name="txtAge" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="Enter Subject" value="61" />
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                        <div class="form-group">
                            <label>
                                Panel Name/<br />
                                पैनल का नाम</label>
                            <input name="txtPanel" id="txtDOB1" class="form-control" disabled style="color: black" autocomplete="off" value="SSS-2 Social Science" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                        <div class="form-group">
                            <label>
                                Subject of Teaching/<br />
                                शिक्षण का विषय</label>
                            <input name="txtSubject" id="txtAgeCrrnt1" class="form-control" disabled style="color: black" autocomplete="off" value="HM-PS" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                        <div class="form-group">
                            <label>
                                Professional Qualification/<br />
                                व्यावसायिक योग्यता</label>
                            <input name="txtQualification" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="Enter Educational And Professional Qualifications" value="NA" />
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                        <div class="form-group">
                            <label>
                                Posting Date in Current Organization/<br />
                                वर्तमान संस्था में पदस्थी दिनांक</label>
                            <input name="txtPostingDate" type="text" class="form-control" disabled style="color: black" autocomplete="off" value="04/09/2024" />
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                        <div class="form-group">
                            <label>
                                Total Service Duration in Current Organization(In Years)/<br />
                                वर्तमान संस्था में कुल सेवा अवधि (वर्षो में)</label>
                            <input name="DOB" id="txtDatePostedCrrnOrg1" class="form-control" disabled style="color: black" autocomplete="off" value="0" />
                        </div>
                    </div>

                </div>
            </fieldset>
            <fieldset>
                <legend  class="border border-dark border-2">Unique ID of the Second Employee is Required For Mutual Transfer / पारस्परिक स्थानांतरण हेतु द्वितीय कर्मचारी की यूनिक आई.डी.आवश्यक है|
                </legend>
                <div class="row align-items-end">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>
                                Enter Unique Id With Whom Mutual Transfer is Desired/<br />
                                जिसके साथ पारस्परिक स्थान्तरण चाहा गया है उसकी यूनिक आई.डी.<span style="color: red">*</span></label>
                            <input name="txtTotalEnrolledCrrnPost" id="txtMutualUniqueId" type="text" class="form-control" autocomplete="off" placeholder="Enter Unique Id With Whom Mutual Transfer is Desired " />
                            <%--<div id="autocomplete-list" class="autocomplete-items"></div>--%>
                            <span id="mutualEmpUniqueIdError" style="display:none; color:red;">Data Required*</span>



                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <button id="Button1" type="button" class="btn btn-outline-info btn-border w-lg" onclick="myFunction()">View Employee Information</button>

                        </div>
                    </div>
                </div>

            </fieldset>
            <div id="empDetail">
                <fieldset>
                    <legend class="border border-dark border-2">Employee Personal Information whom Mutual Transfer is Desired / कर्मचारी की व्यक्तिगत जानकारी जिसका पारस्परिक स्थानांतरण वांछित है
                    </legend>
                    <div class="row align align-items-baseline">
                        <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                            <div class="form-group">
                                <label>
                                    Employee Name (Code)/<br />
                                    कर्मचारी का नाम (कोड)<span style="color: red">*</span></label>
                                <input name="txtEmpName" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="Dinesh Kumar Baghel Kumar Baghel (BL5715)" value="Dinesh Kumar Baghel Kumar Baghel (BL5715) " />
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                            <div class="form-group">
                                <label>
                                    Unique ID/<br />
                                    यूनिक आई.डी.<span style="color: red">*</span></label>
                                <input name="txtUniqueID" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="BL5715" value="BL5715" />
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                            <div class="form-group">
                                <label>
                                    Designation/
                                    <br />
                                    पदनाम<span style="color: red">*</span></label>
                                <input name="txtDesignation" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="Asstt Teacher(LDT)" value="Asstt Teacher(LDT)" />
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                            <div class="form-group">
                                <label>
                                    District Name(Code)/<br />
                                    जिले का नाम(कोड)<span style="color: red">*</span></label>
                                <input name="txtDistrict" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="Jhabua (24)" value="Jhabua (24)" />
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                            <div class="form-group">
                                <label>
                                    Block Name(Code)/<br />
                                    विकासखण्ड का नाम(कोड)<span style="color: red">*</span></label>
                                <input name="txtBlock" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="Jhabua (150)" value="Jhabua (150)" />
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                            <div class="form-group">
                                <label>
                                    Sankul Name(Code)/<br />
                                    संकुल का नाम(कोड)<span style="color: red">*</span></label>
                                <input name="txtBlock" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="BRC, JHABUA (232408OBs02)" value="BRC, JHABUA (232408OBs02)" />
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                            <div class="form-group">
                                <label>
                                   Present OIS(UDISE Code)/<br />
                                    वर्तमान ओ.आई.एस.(कोड)<span style="color: red">*</span></label>
                                <input name="txtSankulName" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="BRC, JHABUA (232408OBs02)" value="BRC, JHABUA (232408OBs02)" />
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                            <div class="form-group">
                                <label>
                                    Area (Urban/Rural)/<br />
                                    क्षेत्र (शहरी/ग्रामीण)<span style="color: red">*</span></label>
                                <input name="txtSchoolName" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="NA" value="NA" />
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                            <div class="form-group">
                                <label>
                                    Date of Birth/<br />
                                    जन्मतिथि<span style="color: red">*</span></label>
                                <input name="txtSubject" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="07/08/1973" value="07/08/1973" />
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                            <div class="form-group">
                                <label>
                                   Current Age (in years )/<br />
                                    वर्तमान आयु (वर्षों में)<span style="color: red">*</span></label>
                                <input name="DOB" id="txtDOB" class="form-control" disabled style="color: black" autocomplete="off" value="51" />
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                            <div class="form-group">
                                <label>
                                    Panel Panel/<br />
                                    शिक्षण का पैनल<span style="color: red">*</span></label>
                                <input name="DOB" id="txtAgeCrrnt" class="form-control" disabled style="color: black" autocomplete="off" value="SSS-2 Social Science" />
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                            <div class="form-group">
                                <label>
                                    Subject of Teaching/<br />
                                    शिक्षण का विषय<span style="color: red">*</span></label>
                                <input name="txtQualification" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="Social Science  - MS Teacher" value="Social Science  - MS Teacher" />
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                            <div class="form-group">
                                <label>
                                   Professional Qualification/<br />
                                    शैक्षणिक योग्यता<span style="color: red">*</span></label>
                                <input name="txtPanel" type="text" class="form-control" disabled style="color: black" autocomplete="off" value="NA" />
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                            <div class="form-group">
                                <label>
                                   Posting Date in Current Organization/<br />
                                    वर्तमान संस्था में पदस्थी दिनांक<span style="color: red">*</span></label>
                                <input name="DOB" id="txtDatePostedCrrnOrg" class="form-control" disabled style="color: black" autocomplete="off" value="21/10/2010" />
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                            <div class="form-group">
                                <label>
                                    Total Service Duration in Current Organization(In Years)/<br />
                                    वर्तमान संस्था में कुल सेवा अवधि (वर्षो में)<span style="color: red">*</span></label>
                                <input name="txtTotalDurantionYears" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="Enter Total Duration in Years" value="13" />
                            </div>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <button id="Button2" type="button" class="btn btn-success btn w-lg btn-border Alert-Save" onclick="myFunction()">Request Mutual Transfer</button>

                            <a href="Trn_MutualTransferApply.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

     <script>
         function myFunction() {
             var txtMutualUniqueId = document.getElementById("txtMutualUniqueId").value; // Get the value of the input field
             var empDetail = document.getElementById("empDetail");
             var mutualEmpUniqueIdError = document.getElementById("mutualEmpUniqueIdError");

             if (txtMutualUniqueId === "") {
                 empDetail.style.display = "none"; // hide empDetail if input is empty
                 mutualEmpUniqueIdError.style.display = "block";

             } else {
                 empDetail.style.display = "block"; // show empDetail if input is not empty
                 mutualEmpUniqueIdError.style.display = "none";
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

