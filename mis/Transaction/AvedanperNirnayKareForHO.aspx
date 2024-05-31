﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="AvedanperNirnayKareForHO.aspx.cs" Inherits="mis_Transaction_AvedanperNirnayKareForHO" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }

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
    <div class="row page-titles" style="margin-bottom: -30px">
        <div class="col-md-5 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/Anukampa Logo.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>
        </div>
        <div class="col-md-7 align-self-center">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=CompassionateAppointment" title="click to go on">Compassionate Appointment </a></li>
                    <li class="breadcrumb-item active">Decision on Application</li>
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
                            <a class="nav-link  text-white " href="DisposeApplicationCaseForHO.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                            <li class="nav-item">
                                <div class="collapse navbar-collapse">
                                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>अनुकंपा नियुक्ति </b>
                                            </a>
                                            <ul class="dropdown-menu">

                                                <li><a class="dropdown-item" href="../HRMS/Trn_HOCompassionateApproval.aspx">अनुकंपा नियुक्ति के लिए आवेदन पंजीयन/सुधार करें</a></li>
                                                <li><a class="dropdown-item" href="../HRMS/HOPrintApplicationReport.aspx">प्रिंट आवेदन </a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <a class="nav-link  text-white " href="../HRMS/Trn_ProcessApplicationListHO.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>अनुकंपा नियुक्ति पर कार्यवाही</b></a>
                            <a class="nav-link  text-white " href="../Transaction/AvedanperNirnayKareForHO.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>आवेदन पर निर्णय करें</b></a>

                            <li class="nav-item">
                                <a class="nav-link  text-white " href="../HRMS/NocSendByDistrictCollectorHO.aspx" role="button" style="font-size: 1.0em"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>NOC जिला  कलेक्टर को भेजी गई</b></a></li>
                            <li class="nav-item">
                                <div class="collapse navbar-collapse">
                                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>रिपोर्ट</b>
                                            </a>
                                            <ul class="dropdown-menu">
                                                <li><a class="dropdown-item" href="HOLevelReportSection.aspx?ID=DisposeCasesNOC">Dispose Cases</a></li>
                                                <li><a class="dropdown-item" href="HOLevelReportSection.aspx?ID=BlockWiseCounting">Block-Wise Statistics</a></li>
                                                <li><a class="dropdown-item" href="HOLevelReportSection.aspx?ID=DistrictWiseCounting">District-Wise Statistics</a></li>
                                                <li><a class="dropdown-item" href="../HRMS/NocReportHO.aspx">NOC Report</a></li>

                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>

                    </div>
                </div>
            </nav>
            <br />
            <br />
            <fieldset>
                <legend>Decide on pending applications / लंबित आवेदनों पर निर्णय करें
                </legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>District / जिला<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" CssClass="form-select form-control" ID="ddlDistrict">
                                <asp:ListItem Text="selected" Value="0">--Select--</asp:ListItem>
                                <asp:ListItem Value="51">Agar Malwa</asp:ListItem>
                                <asp:ListItem Value="49">Alirajpur</asp:ListItem>
                                <asp:ListItem Value="47">Anuppur</asp:ListItem>
                                <asp:ListItem Value="46">Ashoknagar</asp:ListItem>
                                <asp:ListItem Value="45">Balaghat</asp:ListItem>
                                <asp:ListItem Value="28">Barwani</asp:ListItem>
                                <asp:ListItem Value="35">Betul</asp:ListItem>
                                <asp:ListItem Value="3">Bhind</asp:ListItem>
                                <asp:ListItem Value="32">Bhopal</asp:ListItem>
                                <asp:ListItem Value="48">Burhanpur</asp:ListItem>
                                <asp:ListItem Value="9">Chhatarpur</asp:ListItem>
                                <asp:ListItem Value="43">Chhindwara</asp:ListItem>
                                <asp:ListItem Value="12">Damoh</asp:ListItem>
                                <asp:ListItem Value="5">Datia</asp:ListItem>
                                <asp:ListItem Value="23">Dewas</asp:ListItem>
                                <asp:ListItem Value="25">Dhar</asp:ListItem>
                                <asp:ListItem Value="41">Dindori</asp:ListItem>
                                <asp:ListItem Value="7">Guna</asp:ListItem>
                                <asp:ListItem Value="4">Gwalior</asp:ListItem>
                                <asp:ListItem Value="36">Harda</asp:ListItem>
                                <asp:ListItem Value="26">Indore</asp:ListItem>
                                <asp:ListItem Value="39">Jabalpur</asp:ListItem>
                                <asp:ListItem Value="24">Jhabua</asp:ListItem>
                                <asp:ListItem Value="38">Katni</asp:ListItem>
                                <asp:ListItem Value="29">Khandwa</asp:ListItem>
                                <asp:ListItem Value="27">Khargone</asp:ListItem>
                                <asp:ListItem Value="42">Mandla</asp:ListItem>
                                <asp:ListItem Value="19">Mandsaur</asp:ListItem>
                                <asp:ListItem Value="2">Morena</asp:ListItem>
                                <asp:ListItem Value="37">Narmadapuram</asp:ListItem>
                                <asp:ListItem Value="40">Narsinghpur</asp:ListItem>
                                <asp:ListItem Value="18">Neemuch</asp:ListItem>
                                <asp:ListItem Value="52">Niwari</asp:ListItem>
                                <asp:ListItem Value="10">Panna</asp:ListItem>
                                <asp:ListItem Value="34">Raisen</asp:ListItem>
                                <asp:ListItem Value="30">Rajgarh</asp:ListItem>
                                <asp:ListItem Value="20">Ratlam</asp:ListItem>
                                <asp:ListItem Value="14">Rewa</asp:ListItem>
                                <asp:ListItem Value="11">Sagar</asp:ListItem>
                                <asp:ListItem Value="13">Satna</asp:ListItem>
                                <asp:ListItem Value="33">Sehore</asp:ListItem>
                                <asp:ListItem Value="44">Seoni</asp:ListItem>
                                <asp:ListItem Value="16">Shahdol</asp:ListItem>
                                <asp:ListItem Value="22">Shajapur</asp:ListItem>
                                <asp:ListItem Value="1">Sheopur</asp:ListItem>
                                <asp:ListItem Value="6">Shivpuri</asp:ListItem>
                                <asp:ListItem Value="17">Sidhi</asp:ListItem>
                                <asp:ListItem Value="50">Singrauli</asp:ListItem>
                                <asp:ListItem Value="8">Tikamgarh</asp:ListItem>
                                <asp:ListItem Value="21">Ujjain</asp:ListItem>
                                <asp:ListItem Value="15">Umaria</asp:ListItem>
                                <asp:ListItem Value="31">Vidisha</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3 mt-4 py-2">
                        <button id="Button1" type="button" class="btn btn-success btn-rounded" onclick="myFunction()">Search</button>
                        <%-- <a href="Trn_ApplyMutualTransfer.aspx" class="btn btn-info btn-rounded">Reset Details</a>--%>
                    </div>
                </div>

            </fieldset>
            <div id="empDetail">
                <fieldset>
                    <legend>Details</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-12">
                            <div class="table-responsive table-bordered">
                                <table class="table text-center">
                                    <tbody>
                                        <tr>
                                            <th>Sr. No.<br />
                                                सरल क्र.</th>
                                            <th>Deceased Employee / Officer<br />
                                                दिवंगत कर्मचारी / अधिकारी</th>
                                            <th>Designation<br />
                                                पद</th>
                                            <th>Date of Death<br />
                                                दिवंगत तिथि</th>
                                            <th>District<br />
                                                जिला</th>
                                            <th>Applicant Name<br />
                                                आवेदक का नाम</th>
                                            <th>Gender<br />
                                                लिंग</th>
                                            <th>Class<br />
                                                वर्ग</th>
                                            <th>Marital Status<br />
                                                वैवाहिक स्थिति</th>
                                            <th>Date of Birth<br />
                                                जन्म दिनांक</th>
                                            <th>Relation with Deceased<br />
                                                दिवंगत से सम्बंध</th>
                                            <th>Dispose<br />
                                                डिस्पोज करें</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>

                                            <td>Dariyav Singh Malviya</td>
                                            <td>Asstt Teacher(LDT)</td>
                                            <td>23/05/2020</td>
                                            <td>Shajapur</td>
                                            <td>ANIL BAMNIYA</td>
                                            <td>Male</td>
                                            <td>GENERAL</td>

                                            <td>Married</td>
                                            <td>18/05/1994 </td>
                                            <td>Son</td>
                                            <td><a class="btn btn-success btn-rounded" href="JDDetailsOfEmployee.aspx" />Action</td>


                                        </tr>
                                        <tr>
                                            <td>2</td>

                                            <td>Laxminarayan Meena</td>
                                            <td>Peon Regular Contingent</td>
                                            <td>05/05/2021</td>
                                            <td>Narmadapuram</td>
                                            <td>VIRENDRA</td>
                                            <td>Male</td>
                                            <td>GENERAL</td>
                                            <td>UnMarried</td>
                                            <td>01/01/1900 </td>
                                            <td>Son</td>
                                            <td><a class="btn btn-success btn-rounded" href="JDDetailsOfEmployee.aspx" />Action</td>


                                        </tr>
                                        <tr>
                                            <td>3</td>

                                            <td>Yasmen Khan</td>
                                            <td>HM(MS)</td>
                                            <td>27/04/2021</td>
                                            <td>Ujjain</td>
                                            <td>ashar pasha</td>
                                            <td>Male</td>
                                            <td>GENERAL</td>
                                            <td>UnMarried</td>
                                            <td>09/01/1996 </td>
                                            <td>Son</td>
                                            <td><a class="btn btn-success btn-rounded" href="JDDetailsOfEmployee.aspx" />Action</td>


                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>


                <%--                <div class="row justify-content-center">


        <div class="col-md-2">

            <button id="Button2" type="button" class="btn btn-success btn-rounded Alert-Save btn-block" onclick="myFunction()">Save</button>
        </div>


    </div>--%>
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
