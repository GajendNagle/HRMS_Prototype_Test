<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="HigherOfficeCharge.aspx.cs" Inherits="mis_Transaction_HigherOfficeCharge" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #div1 {
            display: none;
        }

        #div2 {
            display: none;
        }

        #div3 {
            display: none;
        }

        #sel1 {
            display: none;
        }

        #second {
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
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#Promotion" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Promotion</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Employee Higher Designation Charge</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


    <%--  <div class="row page-titles mb-4">--%>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">Employee Higher Designation Charge /
                  कर्मचारी उच्च पद प्रभार
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">


            <fieldset>
                <legend>Employee Higher Designation Charge / कर्मचारी उच्च पद प्रभार
                </legend>
                <div class="row align-items-end">
                    <div class="col-md-3" style="display: none;">
                        <div class="form-group">
                            <label>
                                Promotion with Transfer<br />
                                स्थानांतरण के साथ पदोन्नति<span style="color: red">*</span></label>
                            <select id="dropdown" class="form-control">
                                <option value="0">Select</option>
                                <option value="1">Yes</option>
                                <option value="2">No</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Employee Unique ID /
                                <br />
                                कर्मचारी का यूनिक आई.डी<span style="color: red">*</span></label>
                            <input class="form-control" id="txtempluniqueid" autocomplete="off" maxlength="11" required data-msg="Enter Unique Id" type="text" name="EmpUniqueId" value="" />
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <div class="form-group">
                            <input type="button" value="Search" class=" btn w-lg btn-success btn-border" id="searchButton" onclick="checkDropdown(); return false;" />
                            <a href="PromotionProcess.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>

            </fieldset>
            <div id="div1">
                <fieldset>
                    <legend>CURRENT INFORMATION / वर्तमान जानकारी</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Employee Name 
                                    <br />
                                    कर्मचारी का नाम<span style="color: red">*</span>
                                    <br />
                                </label>
                                <input name="ename" type="text" value="AU4336-Ashok Patidar" disabled class="form-control" autocomplete="off" placeholder="" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Department<br />
                                    विभाग<span style="color: red">*</span></label>
                                <input name="txtdepartment" type="text" class="form-control" readonly autocomplete="off" placeholder="" value="Department of Education" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Designation Type<br />
                                    पदनाम का प्रकार<span style="color: red">*</span></label>
                                <input name="txtSankulName" type="text" class="form-control" readonly autocomplete="off" placeholder="" value="Teaching" />
                            </div>
                        </div>


                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Designation<br />
                                    पद<span style="color: red">*</span></label>
                                <input name="txtDesignation" type="text" class="form-control" readonly autocomplete="off" placeholder="" value="Prathmik Shikshak" />
                            </div>
                        </div>


                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Current Office 
                                    <br />
                                    वर्तमान कार्यालय<span style="color: red">*</span></label>
                                <input name="ename" type="text" value="Govt MS UNDRAI - 2451259865" disabled class="form-control" autocomplete="off" placeholder="" />
                            </div>
                        </div>

                    </div>
                </fieldset>
            </div>
            <div id="div2">
                <fieldset>
                    <legend>OIS Data / ओ.आई.एस विवरण</legend>
                    <div class="row align-items-end">

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    OIS Code /
              <br />
                                    ओ.आई.एस. कोड<span style="color: red">*</span></label>
                                <input class="form-control" id="txtemplOIS" autocomplete="off" maxlength="11" required data-msg="Enter Unique Id" type="text" name="EmpUniqueId" value="" />
                            </div>
                        </div>



                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="button" value="Search" class=" btn w-lg btn-success btn-border" id="secondsearch" onclick="secondgrid(); return false;" />

                                <a href="PromotionProcess.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>



                        <%--   <div class="col-md-3" id="second">
                            <div class="form-group">
                                <label>
                                    Level<br />
                                    स्तर<span style="color: red">*</span></label>
                                <select class="form-select select2" name="LevelId">
                                    <option value="0">Select</option>
                                    <option value="1">Level-1</option>
                                    <option value="2">Level-2</option>
                                    <option value="3">Level-3</option>
                                    <option value="4">Level-4</option>
                                    <option value="5">Level-5</option>
                                    <option value="6">Level-6</option>
                                    <option value="7">Level-7</option>
                                    <option value="8">Level-8</option>
                                </select>
                            </div>
                        </div>--%>
                    </div>
                </fieldset>


                <div id="second">
                    <fieldset>
                        <legend>Higher Office Charge Location / उच्च पद प्रभार स्थान </legend>
                        <div class="row align-items-end">

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Sankul<br />
                                        संकुल<span style="color: red">*</span></label>
                                    <select class="form-control select2" disabled>
                                        <option value="--Select--">--Select--</option>
                                        <option selected value="BILHA">BILHA-4596584525</option>
                                        <option value="BELTARA">BELTARA</option>
                                        <option value="BITKULI">BITKULI</option>
                                        <option value="DAGANIYA">DAGANIYA</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        School<br />
                                        विद्यालय<span style="color: red">*</span></label>
                                    <select class="form-control select2" disabled>
                                        <option value="--Select--">--Select--</option>
                                        <option selected value="1">HS GOVT.GIRLS BAIMA(22070304405)-5845965845</option>
                                        <option value="2">GOVT. HIGH SCHOOL BIRKONA(22070304710)</option>
                                        <option value="3">H S SHRI SAI, SILPAHARI(22070305303)</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Division<br />
                                        संभाग<span style="color: red">*</span></label>
                                    <select class="form-control select2" disabled>
                                        <option value="--Select--">--Select--</option>
                                        <option value="Bhopal">Bhopal</option>
                                        <option value="Indore">Indore</option>
                                        <option selected value="Gwalior">Gwalior-78528695868</option>
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
                                    <label>
                                        District<br />
                                        जिला<span style="color: red">*</span></label>
                                    <select class="form-control select2" disabled>
                                        <option value="--Select--">--Select--</option>
                                        <option value="Bhopal">Bhopal</option>
                                        <option selected value="Indore">Indore-5869685754</option>
                                        <option value="Gwalior">Gwalior</option>
                                        <option value="Jabalpur">Jabalpur</option>
                                        <option value="Ujjain">Ujjain</option>
                                        <option value="Sagar">Sagar</option>
                                        <option value="Rewa">Rewa</option>
                                        <option value="Satna">Satna</option>
                                        <option value="Guna">Guna</option>
                                        <option value="Chhindwara">Chhindwara</option>
                                        <option value="Morena">Morena</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Block<br />
                                        ब्लॉक<span style="color: red">*</span></label>
                                    <select class="form-control select2" disabled>
                                        <option value="--Select--">--Select--</option>
                                        <option value="Agar">Agar</option>
                                        <option selected value="Barod">Barod-5869685754</option>
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
                                    <label>
                                        Post Code<br />
                                        पोस्ट कोड<span style="color: red">*</span>
                                    </label>
                                    <select id="ddlpostalcode" class="form-control select2" onchange="handlePostCodeChange()">
                                        <option value="0">--Select--</option>
                                        <option value="1">43512</option>
                                        <option value="2">2312</option>
                                        <option value="3">23231</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3" id="ddldesignation" style="display: none">

                                <div class="form-group">
                                    <label>
                                        Designation
            <br />
                                        पद<span style="color: red">*</span>
                                    </label>
                                    <select class="form-control select2" disabled>
                                        <option value="0">--Select--</option>
                                        <option selected>उच्च माध्यमिक शिक्षक</option>
                                        <option value="2">23</option>
                                        <option value="3">2</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-3" id="vacent" style="display: none">
                                <div class="form-group">
                                    <label>
                                        Vacant Post 
                                        <br />
                                        रिक्त पद<span style="color: red">*</span>
                                    </label>
                                    <select class="form-control select2" disabled>
                                        <option value="0">--Select--</option>
                                        <option value="1">43</option>
                                        <option value="2">23</option>
                                        <option selected value="3">2</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>

                <hr />
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <div class="form-group">

                            <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                            <a href="PromotionProcess.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>

                <%--                        <div class="row justify-content-center">
                            <div class="col-md-2">
                                <div class="form-group">
                                    <button type="button" class="Alert-Confirmation btn btn-success  btn-rounded">Save</button>
                                    <a href="PromotionProcess.aspx" class=" btn btn-danger  btn-rounded">Clear</a>
                                </div>
                            </div>
                        </div>
                --%>
            </div>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function toggleDivs() {
            var checkbox1 = document.getElementById("customRadio1");
            var checkbox2 = document.getElementById("customRadio2");
            var customRadio3 = document.getElementById("customRadio3");
            var customRadio4 = document.getElementById("customRadio4");
            var divNewPromotion = document.getElementById("divNewPromotion");
            var radioCode = document.getElementById("radioCode");
            var OfficeCode = document.getElementById("OfficeCode");
            var SchoolCode = document.getElementById("SchoolCode");
            var fileno = document.getElementById("fileno");
            var checkbox = document.getElementById("checkbox");

            if (checkbox1.checked) {
                divNewPromotion.style.display = "block"
                radioCode.style.display = "block"
            } else if (checkbox2.checked) {
                divNewPromotion.style.display = "none";
                radioCode.style.display = "none";
                OfficeCode.style.display = "none";
                fileno.style.display = "none";
                checkbox.style.display = "none";
                SchoolCode.style.display = "none";
                customRadio3.checked = false;
                customRadio4.checked = false;
            } else {
                divNewPromotion.style.display = "none";
                radioCode.style.display = "none";
                OfficeCode.style.display = "none";
                fileno.style.display = "none";
                checkbox.style.display = "none";
                SchoolCode.style.display = "none";
            }
        }




        function handlePostCodeChange() {
            var postCode = document.getElementById("ddlpostalcode");
            var vacantPostDropdown = document.getElementById('ddldesignation'); // Get vacant post dropdown


            var vacent = document.getElementById('vacent'); // Get vacant post dropdown
            // Enable the vacant post dropdown
            vacantPostDropdown.style.display = "block";
            vacent.style.display = "block";

        }
        function toggleDropdown() {
            var checkbox1 = document.getElementById("customRadio3");
            var checkbox2 = document.getElementById("customRadio4");
            var OfficeCode = document.getElementById("OfficeCode");
            //var fileno = document.getElementById("fileno");
            var checkbox = document.getElementById("checkbox");
            var SchoolCode = document.getElementById("SchoolCode");

            if (checkbox1.checked) {
                OfficeCode.style.display = "block"
                //fileno.style.display = "block"
                checkbox.style.display = "block"
                SchoolCode.style.display = "none"
            } else if (checkbox2.checked) {
                OfficeCode.style.display = "none"
                SchoolCode.style.display = "block"
                //fileno.style.display = "block"
                checkbox.style.display = "block"
            }
            else {
                OfficeCode.style.display = "none"
                SchoolCode.style.display = "none"
                //fileno.style.display = "none"
                checkbox.style.display = "none"
            }
        }

        function ShowPopUP() {
            var OfficeCode = document.getElementById("ddlOfficeCode");
            var SchoolCode = document.getElementById("ddlSchoolCode");
            if (OfficeCode.value > 0 || SchoolCode.value > 0) {
                $('#popup').modal('show');
            } else if (OfficeCode.value == 0 || SchoolCode.value === 0) {
                $('#popup').modal('hide');
            }
            else {
                $('#popup').modal('hide');
            }
        }

        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/E-Service Book.pdf';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }

        function openPDF1() {
            var pdfUrl = '../Document/Promotion-1.pdf';
            window.open(pdfUrl, '_blank');
        }

        function checkClick() {
            var chckTransfer = document.getElementById("chckTransfer");
            var divTransfer = document.getElementById("divTransfer");

            if (chckTransfer.checked) {
                divTransfer.style.display = "block";
            } else {
                divTransfer.style.display = "none";
            }
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
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Save').click(function () {
                    //Swal.fire({
                    //    title: 'Are you sure?',
                    //    text: "Do you want to save this record ?",
                    //    type: 'warning',
                    //    showCancelButton: true,
                    //    confirmButtonColor: '#3085D6',
                    //    cancelButtonColor: '#d33',
                    //    confirmButtonText: 'Yes'
                    //    // animation: false,
                    //    // customClass: {
                    //    //     popup: 'animated tada'
                    //    // }
                    //}).then((result) => {
                    //    if (result.value) {
                    //        Swal.fire({
                    //            type: 'success',
                    //            title: 'Success!',
                    //            text: 'Record Saved Successfully!',
                    //            timer: 2000
                    //            // animation: false,
                    //            // customClass: {
                    //            //     popup: 'animated tada'
                    //            // }
                    //        }
                    //        )
                    //        var x = document.getElementById("divEnteredDetails");
                    //        if (x.style.display === "none") {
                    //            x.style.display = "block";
                    //        } else {
                    //            x.style.display = "block";
                    //        }
                    //    }
                    //})

                    var x = document.getElementById("divEnteredDetails");
                    if (x.style.display === "none") {
                        x.style.display = "block";
                    } else {
                        x.style.display = "block";
                    }

                });

                $('.Alert-Save2').click(function () {
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
            }(window.jQuery)

    </script>
    <script>
        function checkDropdown() {
            //var selectedValue = document.getElementById("dropdown").value;
            //console.log(selectedValue);
            var div1 = document.getElementById("div1");
            var div2 = document.getElementById("div2");
            var div3 = document.getElementById("div3");

            div1.style.display = "block";
            div2.style.display = "block";
            div3.style.display = "block";
        }

        function secondgrid() {

            var second = document.getElementById("second");


            second.style.display = "block";

        }

        function ShowHidePayDiv() {


            var selectElement = document.getElementById("PayCommissionId").value;
            var sel1 = document.getElementById("sel1");
            var sel3 = document.getElementById("sel3");
            //console.log(selectElement);
            if (selectElement == "2") {
                sel1.style.display = "block";
                sel3.style.display = "none";
            }
            else if (selectElement == "1") {
                sel1.style.display = "none";
                sel3.style.display = "block";
            }
            else {
                sel1.style.display = "none";
                sel3.style.display = "block";
            }


            //// Clear required attributes and data-msg for affected fields
            //clearRequiredMessages(["LevelId", "PayScaleId", "BasicPayId", "GradePayId", "BasicPay"]);
            //var selectElement = document.getElementById("PayCommissionId");
            //var selectedText = selectElement.options[selectElement.selectedIndex].text;
            //var divLevel = document.getElementById("divLevel");
            //var divPayScale = document.getElementById("divPayScaleSeventh");
            //var divBasicPay = document.getElementById("divBasicPay");
            //var divGradePay = document.getElementById("divGradePay");
            //var divBasicPayText = document.getElementById("divBasicPayText");

            //if (selectedText === "Seventh Pay Commission") {
            //    divLevel.style.display = "block";
            //    divPayScale.style.display = "block";
            //    divBasicPay.style.display = "block";
            //    divGradePay.style.display = "none";
            //    divBasicPayText.style.display = "none";
            //    // Set required attributes and data-msg for visible fields
            //    setRequiredMessage("LevelId", "Select Level");
            //    setRequiredMessage("PayScaleId", "Select Pay Scale");
            //    setRequiredMessage("BasicPayId", "Select Basic Pay");
            //} else {
            //    divLevel.style.display = "none";
            //    divPayScale.style.display = "block";
            //    divBasicPay.style.display = "none";
            //    divGradePay.style.display = "block";
            //    divBasicPayText.style.display = "block";
            //    // Set required attributes and data-msg for visible fields
            //    setRequiredMessage("GradePayId", "Select Grade Pay");
            //    setRequiredMessage("PayScaleId", "Select Pay Scale");
            //    setRequiredMessage("BasicPay", "Enter Basic Pay");
            //}
        }

    </script>

</asp:Content>

