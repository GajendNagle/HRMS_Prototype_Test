<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="AddIncrement.aspx.cs" Inherits="mis_Transaction_AddIncrement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            background-color: #005b5c !important;
            color: #fff !important;
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
                           <li class="breadcrumb-item"><a href="../Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                        </li>
                        <li class="breadcrumb-item">Add Increment/वेतन वृद्धि जोड़ें</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

        <div class="card">
            <div class="card-header">
                 <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">Add Increment/वेतन वृद्धि जोड़ें
                    </h4>
                </div>
            </div>
            </div>

            <div class="card-body">
                <fieldset>
                    <legend>Add Increment/वेतन वृद्धि जोड़ें</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Select OIS Type/OIS प्रकार चुनें<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="--Select--">Office</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Select Office Type<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="--Select--">BEO</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Select Office Name<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="--Select--">GOVT. HSS NAGANDEORI</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Select Type of Post<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="--Select--">Regular</option>
                                    <option value="--Select--">Samvidha</option>
                                </select>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Enter Order Number<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Order Number" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Enter Order Date<span style="color: red">*</span></label>
                                <input name="ename" type="date" class="form-control" autocomplete="off" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Enter Effective Date<span style="color: red">*</span></label>
                                <input name="ename" type="date" class="form-control" autocomplete="off" />
                            </div>
                        </div>


                    </div>
                    <fieldset>
                        <legend>CURRENT PAY SCALE</legend>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Select Employee Name <span style="color: red">*</span></label>
                                    <select class="form-control select2" id="ddlEmpName" onchange="getEmpDetail()">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Bharat">Bharat Kumar</option>

                                    </select>
                                </div>
                            </div>
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

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Current Level <span style="color: red">*</span></label>
                                    <input name="ename" class="form-control" id="txtCurrentLevel" value="" autocomplete="off" placeholder="Enter Current Level" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Current Basic<span style="color: red">*</span></label>
                                    <input name="ename" type="text" class="form-control" id="txtCurrentBasic" value="" autocomplete="off" placeholder="Enter Basic Salary" />
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>NEW PAY SCALE</legend>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>New Level <span style="color: red">*</span></label>
                                    <select class="form-control select2" id="ddlNewLevel">
                                        <option value="--Select--">--Select--</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>

                                    </select>

                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>New Basic<span style="color: red">*</span></label>
                                    <select class="form-control select2" id="ddlNewBasic">
                                        <option value="--Select--">--Select--</option>
                                        <option value="35500">35500</option>
                                        <option value="36000">36000</option>

                                    </select>
                                </div>
                            </div>

                        </div>
                    </fieldset>
                    <div class="row ps-4 pt-4">

                        <div class="col-md-4 text-start">
                            <div class="form-group">
                                <button type="button" class="btn btn-success btn-rounded Alert-Save">Add Employee</button>
                                <a id="clearfirst" href="AddIncrement.aspx" class="btn btn-danger btn-rounded">Clear</a>

                            </div>
                        </div>

                    </div>
                </fieldset>
                <fieldset id="fildDetails" hidden="hidden">
                    <legend>Details</legend>
                    <div class="row">
                        <div class="col-md-12">
                    <table cellspacing="0" rules="all" class="table  " border="1" id="ctl00_ContentBody_GridView1" style="border-collapse: collapse;">
                        <tbody>
                            <tr>
                                <th scope="col">SNo.</th>
                                <th scope="col">Employee Name</th>
                                <th scope="col">Order No</th>
                                <th scope="col">Order Date</th>
                                <th scope="col">Current Level</th>
                                <th scope="col">Current Basic Salary</th>
                                <th scope="col">New Level</th>
                                <th scope="col">New Basic Salary</th>
                                <th scope="col">Effective Date</th>
                                <th scope="col">Action</th>
                            </tr>
                            <tr>
                                <td style="width: 5%;">
                                    <span>1</span>
                                </td>
                                <td>BHARAT KUMAR</td>
                                <td>202327</td>
                                <td>14/05/2024</td>
                                <td>Level 5</td>
                                <td>35000.00</td>
                                <td>Level 5</td>
                                <td>35500.00</td>
                                <td>30/05/2024</td>
                                <td>
                                    <i class="fa fa-edit Alert-Edit" aria-hidden="true"></i>
                                    &nbsp;
                                    <i class=" Alert-Delete fa fa-trash" aria-hidden="true"></i>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                        </div>
                    </div>

                </fieldset>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">


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
    <style>
        #divb {
            display: none;
        }
    </style>
</asp:Content>
