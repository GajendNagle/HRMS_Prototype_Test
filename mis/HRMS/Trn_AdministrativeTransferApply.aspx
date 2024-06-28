<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_AdministrativeTransferApply.aspx.cs" Inherits="mis_HRMS_Trn_AdministrativeTransferApply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }

        #EmpPersonalInfo, #details {
            display: none;
        }
    </style>

    <style>
        #divtxtpanelname {
            display: none;
        }

        #divtxtvacantpost {
            display: none;
        }

        #hideaddbtn {
            display: none;
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
                            <a href="#AdministrativeLevelTransfer" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Administrative Level Transfer</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Apply Transfer</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4 align-self-center" style="position: relative; bottom: 35px;">
        <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -2rem;">
            <img src="../../img/OTTMS.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
            </u>
        </p>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <h4 class="card-title">Apply Transfer / स्थानांतरण आवेदन<br />
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

                                    <li class="nav-item dropdown ">
                                        <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold">Transfer Process</b></a>
                                        <ul class="dropdown-menu">

                                            <li><a class="dropdown-item" href="Trn_AdministrativeTransferApply.aspx">Transfer</a></li>
                                            <li><a class="dropdown-item" href="AdministrativeTransferDraftLetter.aspx">Print Draft Transfer Or Update Application</a></li>
                                            <li><a class="dropdown-item" href="AdministrativeGenerateTransferOrder.aspx">Generate Transfer Order</a></li>
                                            <li><a class="dropdown-item" href="AdministrativePrintTransferOrder.aspx">Print Transfer Order</a></li>
                                        </ul>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link text-white " href="Trn_AdministrativePostCodeWithVacancies.aspx" role="button"><b class="font-16 font-bold">View Post Code With Vacancies</b></a>
                                    </li>
                                    <li class="nav-item dropdown ">
                                        <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold">Report</b></a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="../Transaction/Rpt_DistWiseCounting.aspx">District Wise Counting</a></li>
                                            <li><a class="dropdown-item" href="../Transaction/Rpt_BlockWiseCounting.aspx">Block Wise Counting</a></li>
                                            <li><a class="dropdown-item" href="Rpt_AdministrativeTransferReport.aspx">Transfer Report</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                    <br />
                    <br />--%>
                    <fieldset>
                        <legend>Apply Transfer / स्थानांतरण आवेदन</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Employee Name / Unique ID <br />
                                        कर्मचारी का नाम यूनिक आई.डी<span style="color: red">*</span></label>
                                    <input name="txtUniqueID" type="text" class="form-control" autocomplete="off" placeholder="Enter Employee Name / Unique ID" />
                                </div>
                            </div>
                            <hr />
                            <div class="col-md-12 ">
                                <div class="form-group">
                                    <button type="button" class="btn btn-outline-success w-lg btn-border" onclick="myFunction()">Search</button>
                                    <a href="Trn_AdministrativeTransferApply.aspx" class=" btn btn-outline-danger w-lg btn-border">Clear</a>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <div id="EmpPersonalInfo">
                        <fieldset>
                            <legend>Current Office Location / वर्तमान कार्यालय स्थान</legend>
                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Employee Name/ Unique ID <br />
                                            कर्मचारी का नाम यूनिक आई.डी<span style="color: red">*</span></label>
                                        <input name="txtEmpName" type="text" class="form-control" readonly="" autocomplete="off" placeholder="Enter Employee Name" value="AU5236-Arjun Talwar" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Gender <br />
                                            लिंग<span style="color: red">*</span></label>
                                        <input name="txtDistrict" type="text" class="form-control" readonly="" autocomplete="off" placeholder="Enter District" value="Male" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Sankul Code/ Name
                 <br />
                                            संकुल कोड / नाम<span style="color: red">*</span></label>
                                        <input name="txtSankulName" type="text" class="form-control" readonly="" autocomplete="off" placeholder="Enter Sankul Name" value="15151235256-PVT VINAYAK PUBLIC SCHOOL TARRAKHURD" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            School Code/ Name
                 <br />
                                            स्कूल कोड / नाम<span style="color: red">*</span></label>
                                        <input name="txtSchoolName" type="text" class="form-control" readonly="" autocomplete="off" placeholder="Enter School Name" value="15151235256-PVT VINAYAK PUBLIC SCHOOL TARRAKHURD" />
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Panal Name <br />
                                            पैनल का नाम
                                     <span style="color: red">*</span></label>
                                        <input disabled="disabled" value="SSS-1 Mathematics" readonly="" type="text" class="form-control" autocomplete="off" />
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Designation <br />
                                            पदनाम <span style="color: red">*</span></label>
                                        <input name="txtDesignation" type="text" class="form-control" readonly="" autocomplete="off" placeholder="Enter Designation" value="Teacher (UDT)" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            District<br />
                                            ज़िला<span style="color: red">*</span></label>
                                        <input name="txtDistrict" type="text" class="form-control" readonly="" autocomplete="off" placeholder="Enter District" value="Bhopal" />
                                    </div>
                                </div>
                            </div>
                        </fieldset>

                        <fieldset>
                            <legend>New Office Location / नया कार्यालय स्थान</legend>
                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            District Name <br />
                                            जिले  का नाम <span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option value="--Select--">--Select--</option>
                                            <option value="Bhopal">Bhopal</option>
                                            <option value="Indore">Indore</option>
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
                                            Sankul Code/ Name
                 <br />
                                            संकुल कोड / नाम<span style="color: red">*</span></label>
                                        <select class="form-control" id="ddlOffice" onchange="BindSankul();">
                                            <option>Select</option>
                                            <option value="(2345040410) AAMAI HS NEW JSK">(2345040410) AAMAI HS NEW JSK</option>
                                            <option value="(2332030006) AKBARPUR GOVT. HS">(2332030006) AKBARPUR GOVT. HS</option>
                                            <option value="(2327100059) B.HSS BISTAN">(2327100059) B.HSS BISTAN</option>
                                            <option value="(2345090040) BAIHAR HSS BOYS NEW JSK">(2345090040) BAIHAR HSS BOYS NEW JSK</option>
                                            <option value="(2345030063) BAMHANI HS NEW JSK">(2345030063) BAMHANI HS NEW JSK</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            School Code/ Name
                 <br />
                                            स्कूल कोड / नाम<span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option value="--Select--">--Select--</option>
                                            <option value="Yes">1214548455-Sarasvati Gyan Mandir</option>
                                            <option value="Yes">1014632121-Gyan Ganga Vidhya Mandir</option>
                                            <option value="Yes">0124587465-Reema Gyan Mandir</option>
                                            <option value="Yes">1315473465-Sarasvati Vidhya Mandir</option>
                                            <option value="Yes">1224876546-Bal Bharti Higher Secondary School</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Post Code <br />

                                            पद कोड<span style="color: red">*</span></label>
                                        <%--<input onchange="ShowVacantPost()" placeholder="Enter Post Code" name="txtPostCode" value="" type="text" class="form-control" autocomplete="off" />--%>
                                        <select class="form-control" id="ddlPostCode" onchange="ShowVacantPost();">
                                            <option value="0">Select</option>
                                            <option value="2345">2345</option>
                                            <option value="3432">3432</option>
                                            <option value="6578">6578</option>
                                            <option value="0967">0967</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3" id="divtxtpanelname">
                                    <div class="form-group">
                                        <label>
                                            Panal Name <br />
                                            पैनल का नाम
                                     <span style="color: red">*</span></label>
                                        <input disabled="disabled" value="SSS-1 Mathematics" id="txtpanelname" type="text" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-md-3" id="divtxtvacantpost">
                                    <div class="form-group">
                                        <label>
                                            Vacant Post 
                                    <br />
                                            रिक्त पद
                                        <span style="color: red">*</span></label>
                                        <input disabled="disabled" value="01" id="txtvacantpost" type="text" class="form-control" autocomplete="off" placeholder="Enter Vacant Post" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Employee Placement Month in Pay Bill <br />वेतन बिल में कर्मचारी नियुक्ति माह<span style="color: red">*</span></label>
                                        <input type="date" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Transfer Done As Per Instructions
                 <br />
                                            ट्रान्सफर निर्देशानुसार किया गया<span style="color: red">*</span></label>
                                        <select class="form-control" onchange="BindSankul();">
                                            <option value="--Select--">--Select--</option>
                                            <option value="प्रशासनिक">प्रशासनिक</option>
                                            <option value="मंत्रालय">मंत्रालय</option>
                                            <option value="मुख्यमंत्री">मुख्यमंत्री</option>

                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Remark <br />
                                            टिप्पणी<span style="color: red">*</span></label>
                                        <input name="txtDistrict" type="text" aria-multiline="true" class="form-control" autocomplete="off" placeholder="Enter Remark" />
                                    </div>
                                </div>
                                <hr />
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <button type="button" class="btn btn-outline-success w-lg btn-border" onclick="myFunction1()">Save</button>
                                        <a href="Trn_AdministrativeTransferApply.aspx" class=" btn btn-outline-danger w-lg btn-border">Clear</a>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>

                    <div id="details">
                        <fieldset>
                            <legend>Details / विवरण</legend>
                            <table class="table table-bordered table-responsive text-center">
                                <tbody>
                                    <tr>
                                        <th>Sr. No. <br />
                                            सरल क्र.</th>
                                        <th>Employee ID - Name <br />
                                            कर्मचारी का आईडी - नाम</th>
                                        <th>Current OIS - Udise Code <br />
                                            वर्तमान ओ.आई.एस. - यूडाईस कोड</th>
                                        <th>Current Sankul Code 
                                    <br />
                                            वर्तमान संकुल कोड</th>
                                        <th>New OIS-Udise Code <br />
                                            नवीन ओ.आई.एस.कोड</th>
                                        <th>New Sankul Code 
                                    <br />
                                            नवीन संकुल कोड</th>
                                        <th>Delete 
                                    <br />
                                            हटाएं</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>230108001202 - HS & MS BALAWANI</td>
                                        <td>230108001202 - HS & MS BALAWANI</td>
                                        <td>4012003014 - VIJAYPUR, PRINCIPAL H S S TARRAKALAN </td>
                                        <td>4012003014 - VIJAYPUR, PRINCIPAL H S S TARRAKALAN </td>
                                        <td>4012003013 - SAHSRAM, PRINCIPAL H S S SAHSRAM </td>
                                        <td><i class="fa fa-trash" aria-hidden="true"></i>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </fieldset>
                        <fieldset>
                            <legend>Final Details / अंतिम विवरण</legend>
                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <div class="form-group">
                                            <label>
                                                Order No.<br />
                                                आदेश नंबर <span style="color: red">*</span></label>
                                            <input name="txtEmpName" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Employee Name" value="546545" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Order Date <br />
                                            आदेश दिनांक <span style="color: red">*</span></label>
                                        <input name="txtDistrict" type="date" class="form-control" autocomplete="off" placeholder="Enter District" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Effective Date
                 <br />
                                            प्रभावी दिनांक<span style="color: red">*</span></label>
                                        <input name="txtSankulName" type="date" class="form-control" autocomplete="off"/>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Relaving Date
                 <br />
                                            कार्यमुक्ति दिनांक<span style="color: red">*</span></label>
                                        <input name="txtSchoolName" type="date" class="form-control" autocomplete="off"/>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Upload Document<br />
                                            दस्तावेज़ अपलोड करें <span style="color: red">*</span></label>
                                        <input name="txtDesignation" type="file" class="form-control" autocomplete="off" placeholder="Enter Designation" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Remark <br />
                                            टिप्पणी<span style="color: red">*</span></label>
                                        <input name="txtDistrict" type="text" aria-multiline="true" class="form-control" autocomplete="off" placeholder="Enter Remark" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">

                                        <button type="button" class=" Alert-Save btn btn-outline-success btn-border w-lg Alert-Save mt-5" onclick="myFunction()">Transfer</button>
                                    </div>
                                </div>


                            </div>
                        </fieldset>


                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function myFunction() {
            document.getElementById("EmpPersonalInfo").style.display = "block";

        }
    </script>
    <script>
        function myFunction1() {
            document.getElementById("details").style.display = "block";

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
                        text: "Do you want to Transfer?",
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
                                text: 'Transferred Successfully!',
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
    <script>
        function ShowVacantPost() {
            var ddlPostCode = document.getElementById("ddlPostCode");
            var divtxtpanelname = document.getElementById("divtxtpanelname");
            var divtxtvacantpost = document.getElementById("divtxtvacantpost");

            if (ddlPostCode.value === "0") {
                divtxtpanelname.style.display = "none";
                divtxtvacantpost.style.display = "none";
                hideaddbtn.style.display = "none";
            } else {
                divtxtpanelname.style.display = "block";
                divtxtvacantpost.style.display = "block";
                hideaddbtn.style.display = "block";
            }
        }
    </script>
</asp:Content>

