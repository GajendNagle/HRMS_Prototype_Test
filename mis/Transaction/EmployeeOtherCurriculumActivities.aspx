<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeeOtherCurriculumActivities.aspx.cs" Inherits="mis_Transaction_EmployeeOtherCurriculumActivities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #empDetail {
            display: none;
        }

        th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #1b5a5b !important;
            color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row">
        <div class="col-md-12">
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
                            <a href="#Curriculum" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee Other Curriculum Activities</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>National/State Level Training</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <%-- <div class="card-header">
        </div>--%>
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">National/State Level Training
                        <br />
                        राष्ट्रीय/राज्य स्तरीय प्रशिक्षण
                    </h4>
                </div>
            </div>
        </div>

        <div class="card-body">


            <%--<nav class="navbar navbar-expand-lg topbar ">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">

                            <a class="nav-link  text-white " href="EmployeeOtherCurriculumActivitiesNotw.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                            <a class="nav-link  text-white " href="EmployeeOtherCurriculumActivities.aspx" role="button"><b class="font-16 font-bold">राष्ट्रीय/राज्य स्तरीय प्रशिक्षण</b></a>
                            &nbsp; <i class="fa fa-circle text-white" style="font-size: 7px; margin-top: 17px;"></i><a class="nav-link  text-white " href="EmployeeOtherCurriculumActivitiesTab2.aspx" role="button"><b class="font-16 font-bold">राष्ट्रीय/राज्य स्तर के पुरस्कार</b></a>
                            &nbsp;<i class="fa fa-circle text-white" style="font-size: 7px; margin-top: 17px;"></i>  <a class="nav-link  text-white " href="EmployeeOtherCurriculumActivitiesTab3.aspx" role="button"><b class="font-16 font-bold">प्रशिक्षण का विवरण</b></a>
                        </ul>

                    </div>
                </div>
            </nav>
            <br />
            <br />--%>
            <fieldset>
                <legend>National/State Level Training
                    <br />
                    राष्ट्रीय/राज्य स्तरीय प्रशिक्षण
                </legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Employee Uniq Id /
                                <br />
                                कर्मचारी यूनिक आईडी<span style="color: red">*</span></label>
                            <input name="txtTotalEnrolledCrrnPost" type="text" class="form-control" autocomplete="off" placeholder="Enter Unique code " />
                        </div>
                    </div>
                    <hr />
                    <div class="col-md-12 form-group ">
                        <button id="Button1" type="button" class="btn btn-outline-success w-lg btn-border" onclick="myFunction()">View</button>
                        <%-- <a href="Trn_ApplyMutualTransfer.aspx" class="btn btn-info btn-rounded">Reset Details</a>--%>
                    </div>
                </div>

            </fieldset>
            <div id="empDetail">
                <fieldset>
                    <legend>Employee Personal Information / कर्मचारी की व्यक्तिगत जानकारी </legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Employee Name/<br />
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
                                    पदनाम <span style="color: red">*</span></label>
                                <input name="txtDesignation" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Designation" value="Teacher (UDT)" />
                            </div>
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
                    </div>
                </fieldset>
                <fieldset>
                    <legend>क्या आप राष्ट्रीय/राज्य स्तरीय प्रशिक्षण/राज्य स्तरीय समूह में शामिल हैं 
                        <br />
                        Are You Involved in National/State Level Training/State Level Group</legend>
                    <div class="row form-group">
                        <div class="col-md-12">
                            <div class="table-responsive table-bordered">
                                <table class="table text-center">
                                    <tbody>
                                        <tr>
                                            <th>Sr. No. /<br />
                                                सरल क्र.</th>
                                            <th>Source Group Area /<br />
                                                स्त्रोत समूह क्षेत्र</th>
                                            <th>National Level Working Day /<br />
                                                राष्ट्रीय स्तर पर कार्य दिवस</th>
                                            <th>State Level Working Day /<br />
                                                राज्य स्तर पर कार्य दिवस</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>पुस्तक लेखन</td>
                                            <td>
                                                <input type="text" class="form-control" autocomplete="off" />

                                            </td>
                                            <td>
                                                <input type="text" class="form-control" autocomplete="off" />

                                            </td>

                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>रिसर्च</td>
                                            <td>
                                                <input type="text" class="form-control" autocomplete="off" />

                                            </td>
                                            <td>
                                                <input type="text" class="form-control" autocomplete="off" />

                                            </td>

                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>मूल्यांकन- ब्लूप्रिंट/प्रश्नपत्र निर्माण</td>
                                            <td>
                                                <input type="text" class="form-control" autocomplete="off" />

                                            </td>
                                            <td>
                                                <input type="text" class="form-control" autocomplete="off" />

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>आईईडी</td>
                                            <td>
                                                <input type="text" class="form-control" autocomplete="off" />

                                            </td>
                                            <td>
                                                <input type="text" class="form-control" autocomplete="off" />

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>कंप्यूटर आधारित शिक्षण</td>
                                            <td>
                                                <input type="text" class="form-control" autocomplete="off" />

                                            </td>
                                            <td>
                                                <input type="text" class="form-control" autocomplete="off" />

                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>

                <div class="row justify-content-center">


                    <div class="col-md-2">

                        <button id="Button2" type="button" class="btn btn-outline-success btn-border Alert-Save w-lg" onclick="myFunction()">Save</button>
                    </div>


                </div>

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

