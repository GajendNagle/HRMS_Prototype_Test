<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="AddIncrement.aspx.cs" Inherits="mis_Transaction_AddIncrement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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
                            <a href="#Payroll" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Payroll</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#Increment" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('Payroll')">
                                <span>Increment</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Add Increment</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h5 class="card-title">Add Increment / वेतन वृद्धि जोड़ें
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Add Increment / वेतन वृद्धि जोड़ें</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Office Type<br />
                                कार्यालय प्रकार का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="--Select--">BEO</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Office Name<br />
                                कार्यालय का नाम चुनें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="--Select--">GOVT. HSS NAGANDEORI</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Type of Post<br />
                                पोस्ट का प्रकार चुनें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="--Select--">Regular</option>
                                <option value="--Select--">Samvidha</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Order Number<br />
                                ऑर्डर नंबर दर्ज करें<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Order Number" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Order Date<br />
                                ऑर्डर दिनांक दर्ज करें<span style="color: red">*</span></label>
                            <input name="ename" type="date" class="form-control" autocomplete="off" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Effective Date<br />
                                प्रभावी तिथि दर्ज करें<span style="color: red">*</span></label>
                            <input name="ename" type="date" class="form-control" autocomplete="off" />
                        </div>
                    </div>
                </div>
                <fieldset>
                    <legend>Current Pay Scale / वर्तमान वेतनमान</legend>
                    <div class="row align-items-end">
                        <div class="col-md-6 col-lg-4 col-xl-3">
                            <div class="form-group">
                                <label>
                                    Select Employee Name
                                    <br />
                                    कर्मचारी का नाम चुनें<span style="color: red">*</span></label>
                                <select class="form-control select2" id="ddlEmpName" onchange="getEmpDetail()">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Bharat">Bharat Kumar</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3">
                            <div class="form-group">
                                <label>
                                    Current Level
                                    <br />
                                    वर्तमान स्तर<span style="color: red">*</span></label>
                                <input name="ename" class="form-control" id="txtCurrentLevel" value="" autocomplete="off" placeholder="Enter Current Level" />
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3">
                            <div class="form-group">
                                <label>
                                    Current Basic<br />
                                    वर्तमान मूल वेतन<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" id="txtCurrentBasic" value="" autocomplete="off" placeholder="Enter Basic Salary" />
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>New Pay Scale / नया वेतनमान</legend>
                    <div class="row align-items-end">
                        <div class="col-md-6 col-lg-4 col-xl-3">
                            <div class="form-group">
                                <label>
                                    New Level<br />
                                    नया स्तर<span style="color: red">*</span></label>
                                <select class="form-control select2" id="ddlNewLevel">
                                    <option value="--Select--">--Select--</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3">
                            <div class="form-group">
                                <label>
                                    New Basic<br />
                                    नया मूल वेतन<span style="color: red">*</span></label>
                                <select class="form-control select2" id="ddlNewBasic">
                                    <option value="--Select--">--Select--</option>
                                    <option value="35500">35500</option>
                                    <option value="36000">36000</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div class="col-md-12">
                <hr />
                    <div class="form-group">
                        <!-- Search button triggers search and toggles divs -->
                        <button type="button" class="btn btn-success w-lg btn-border Alert-Save">Add Employee</button>
                        <!-- Clear button (link) -->
                        <a id="clearfirst" href="AddIncrement.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function setSelectedIndex(s, v) {
            for (var i = 0; i < s.options.length; i++) {
                if (s.options[i].value == v) {
                    s.options[i].selected = true;
                }
            }
        }
        function getEmpDetail() {
            var name = document.getElementById('ddlEmpName').value;
            if (name == "Bharat") {
                document.getElementById('txtCurrentLevel').value = "5";
                document.getElementById('txtCurrentBasic').value = "35000";
            } else {
                document.getElementById('txtCurrentLevel').value = "";
                document.getElementById('txtCurrentBasic').value = "";
            }
        }
    </script>
    <script>
        function Hideshow() {

            var x = document.getElementById("divb");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
        function btnAddClick() {
            var x = document.getElementById("divEnteredDetails");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
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
                            document.getElementById('fildDetails').hidden = false;
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
                        // }
                    }).then((result) => {
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
    <style>
        #divb {
            display: none;
        }
    </style>
</asp:Content>
