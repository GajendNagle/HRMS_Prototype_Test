<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeeVerification.aspx.cs" Inherits="mis_Transaction_EmployeeVerification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #showdetails {
            display: none;
        }

        #appid {
            display: none;
        }

        #penid {
            display: none;
        }

        #divbtn {
            display: none;
        }

        #des {
            display: block;
        }

        .table th {
            background-color: white !important;
            font-family: 'Times New Roman', Times, serif;
            font-weight: bold;
        }

        table td {
            background-color: white !important;
            font-family: 'Times New Roman', Times, serif;
        }

        .profileimage {
            display: block;
            height: 60px;
            margin-left: auto;
            margin-right: auto;
        }

        #l1, #l2, #l3, #l4, #l5, #l6, #l7, #l8, #l9, #l10, #l11, #l12, #l13 {
            font-family: 'Times New Roman', Times, serif;
        }

        #myLargeModalLabel1 {
            font-family: 'Times New Roman', Times, serif;
        }
    </style>
    <script>
        function myFunction() {
            var showdetails = document.getElementById("showdetails");
            var ddlApprove = document.getElementById("ddlApprove");
            var appid = document.getElementById("appid");
            var penid = document.getElementById("penid");

            if (ddlApprove.value == "1") {
                showdetails.style.display = "block";
                appid.style.display = "block";
                penid.style.display = "none";
                divbtn.style.display = "none";
                regid.style.display = "none";

            } else if (ddlApprove.value == "2") {
                showdetails.style.display = "block";
                penid.style.display = "block";
                divbtn.style.display = "block";
                appid.style.display = "none";
                regid.style.display = "none";
            } else if (ddlApprove.value == "3") {
                showdetails.style.display = "block";
                regid.style.display = "block";
                penid.style.display = "none";
                appid.style.display = "none";
                divbtn.style.display = "none";
                appid.style.display = "none";
            }
            else {
                showdetails.style.display = "none";
                appid.style.display = "none";
                penid.style.display = "none";
                divbtn.style.display = "none";
            }
        }
    </script>
    <script> 
        function showhide() {
            debugger;
            var ddlApprove = document.getElementById("ddlApprove");
            var states = ["All", "Approve", "Pending", "Reject"];

            for (var i = 0; i < states.length; i++) {
                var element = document.getElementById(states[i]);
                element.style.display = ddlApprove.value === i.toString() ? "block" : "none";
            }
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
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
                                <a href="#Employee" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                    <span>Employee Registration</span></a>
                            </li>
                            <li class="breadcrumb-item"><span>Employee Verification</span></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">

                <img src="/img/Employee%20Registration.png" style="height: 70px">
            </div>
        </div>

        <%--<div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">

              <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -1rem;">
                    <img src="../../img/Employee%20Registration.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u>
                    </u>
                </p>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Employee" title="click to go on">Employee</a></li>
                        <li class="breadcrumb-item active">Employee Verification</li>
                    </ol>
                </div>
            </div>
        </div>--%>

        <div class="card card-border-primary ">
            <div class="card-header">
                <div class="row">
                    <div class="col-lg-6">
                        <h4 class="card-title">Employee Verification / कर्मचारी सत्यापन</h4>
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
                                <li>
                                    <a class="nav-link  text-white " href="EmployeeVerificationNotes.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                                </li>
                                <li>
                                    <a class="nav-link  text-white " href="EmployeeVerification.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>कर्मचारी सत्यापन</b></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <br />--%>
                <fieldset>
                    <legend>Employee Verification / कर्मचारी सत्यापन
                    </legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Verification Status 
                                    <br />
                                    सत्यापन स्थिति<span style="color: red">*</span></label>
                                <select class="form-control select2" id="ddlApprove">
                                    <option value="0">--Select--</option>
                                    <option value="1">Approve</option>
                                    <option value="2">Pending</option>
                                    <option value="3">Reject</option>
                                </select>
                            </div>
                        </div>
                        <hr />
                        <div class="col-md-12 form-group">
                            <button onclick="myFunction()" type="button" class=" btn btn-outline-success w-lg btn-border">Search</button>
                            <a runat="server" id="A1" href="EmployeeVerification.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </fieldset>
                <fieldset id="showdetails">
                    <legend>Verification Details / सत्यापन विवरण</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-4 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-55">Excel</button>
                                <button class="btn btn-info btn-rounded w-55">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-12" id="appid">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead class="nowrap">
                                        <tr>
                                            <th>Sr.No.
                                                <br />
                                                सरल क्र.</th>
                                            <th>Employee Name
                                                <br />
                                                कर्मचारी का नाम</th>
                                            <th>Employee ID
                                                <br />
                                                कर्मचारी की आई. डी.</th>
                                            <th>Designation
                                                <br />
                                                धारित पद</th>
                                            <th>Department
                                                <br />
                                                विभाग</th>
                                            <th>View More
                                                <br />
                                                अधिक विवरण देखे</th>
                                            <th>Status
                                                <br />
                                                स्थिति</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>1</td>
                                        <td>Shri A.K. Ranjan</td>
                                        <td>0001</td>
                                        <td>LDC</td>
                                        <td>Finance</td>
                                        <td><a><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        <td>Approved</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Omprakash</td>
                                        <td>0012</td>
                                        <td>LDC</td>
                                        <td>Finance</td>
                                        <td><a><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        <td>Approved</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Ashu</td>
                                        <td>0010</td>
                                        <td>LDC</td>
                                        <td>Finance</td>
                                        <td><a><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        <td>Approved</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="col-md-12" id="penid">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead class="nowrap">
                                        <tr>
                                            <th>Sr.No.
                                                <br />
                                                सरल क्र.</th>
                                            <th>Action</th>
                                            <th>Employee Name<br />
                                                कर्मचारी का नाम</th>
                                            <th>Employee ID
                                                <br />
                                                कर्मचारी की आई.डी.</th>
                                            <th>Designation
                                                <br />
                                                धारित पद</th>
                                            <th>Department
                                                <br />
                                                विभाग</th>
                                            <th>View More
                                                <br />
                                                अधिक विवरण देखे</th>
                                            <th>Status
                                                <br />
                                                स्थिति</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>1</td>
                                        <td scope="col">
                                            <input type="checkbox" />
                                        </td>
                                        <td>Shri S.S. Soni</td>
                                        <td>0059</td>
                                        <td>UDC</td>
                                        <td>HR</td>
                                        <td><a><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        <td>Pending</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td scope="col">
                                            <input type="checkbox" />
                                        </td>
                                        <td>R.K. Dubey</td>
                                        <td>0089</td>
                                        <td>UDC</td>
                                        <td>HR</td>
                                        <td><a><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        <td>Pending</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td scope="col">
                                            <input type="checkbox" />
                                        </td>
                                        <td>Pradeep Mishra</td>
                                        <td>0065</td>
                                        <td>UDC</td>
                                        <td>HR</td>
                                        <td><a><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        <td>Pending</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td scope="col">
                                            <input type="checkbox" />
                                        </td>
                                        <td>Dhanraj Sharma</td>
                                        <td>0060</td>
                                        <td>UDC</td>
                                        <td>HR</td>
                                        <td><a><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        <td>Pending</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="col-md-12" id="regid">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead class="nowrap">
                                        <tr>
                                            <th>Sr.No.<br />
                                                सरल क्र.</th>
                                            <th>Employee Name
                                                <br />
                                                कर्मचारी का नाम</th>
                                            <th>Employee ID
                                                <br />
                                                कर्मचारी की आई.डी.</th>
                                            <th>Designation
                                                <br />
                                                धारित पद</th>
                                            <th>Department
                                                <br />
                                                विभाग</th>
                                            <th>View More
                                                <br />
                                                अधिक विवरण देखे</th>
                                            <th>Status
                                                <br />
                                                स्थिति</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>1</td>
                                        <td>Ramcharan</td>
                                        <td>0075</td>
                                        <td>UDC</td>
                                        <td>HR</td>
                                        <td><a><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        <td>Rejected</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Praveen Kumar</td>
                                        <td>0044</td>
                                        <td>UDC</td>
                                        <td>HR</td>
                                        <td><a><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        <td>Rejected</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>R.P Singh</td>
                                        <td>0095</td>
                                        <td>UDC</td>
                                        <td>HR</td>
                                        <td><a><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        <td>Rejected</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-center" id="divbtn">

                        <div class="col-md-12">
                            <hr />
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="openBootstrapModalreg1()">Approve</button>
                                <button type="button" class=" btn btn-outline-danger btn-border w-lg" onclick="openBootstrapModalreg()">Reject</button>
                            </div>
                        </div>
                    </div>
                </fieldset>

                <fieldset id="des">
                    <legend>Description / विवरण</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="main-ul">
                                <li><strong>Designation Type</strong>
                                    <ul>
                                        <li>User will be able to select <strong>Designation Type </strong>from dropdown. Data populated from <strong>Designation Type master.</strong> </li>
                                    </ul>
                                </li>
                                <li><strong>Designation</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Designation </strong>from the dropdown and the data will be populated from the <strong>Designation Master</strong> and data cascade from <strong>Designation Type Master.</strong> </li>
                                    </ul>
                                </li>
                                <li><strong>Verification Status</strong>
                                    <ul>
                                        <li>In the <strong>verification drop</strong> down, the drop down of pending reject and approval opens. On clicking on pending, the approval option opens, through which the concerned employees can be verified.
                                            <br />
                                            The related drop down is used for the information of the rejected and approved employee.</li>
                                    </ul>
                                </li>
                                <li><strong>Search </strong>
                                    <ul>
                                        <li>User should be able to click on Search button.</li>
                                        <li>After clicking on Search button the School details will show on the screen according to the selected field.</li>
                                    </ul>

                                </li>
                                <li><strong>Clear</strong>
                                    <ul>
                                        <li>User should be able to click on Clear button.</li>
                                        <li>After clicking on Clear button all the dropdown should be Clear or reload the same page.</li>
                                    </ul>
                                </li>
                                <li><strong>Excel</strong>
                                    <ul>
                                        <li>Excel button should be visible and user should be able to click.</li>
                                        <li>After clicking on Excel button grid view data export in Excel.</li>
                                    </ul>
                                </li>
                                <li><strong>PDF</strong>
                                    <ul>
                                        <li>PDF button should be visible and user should be able to click.</li>
                                        <li>After clicking on PDF button grid view data export in PDF.</li>
                                    </ul>
                                </li>
                                <li><strong>Searchbox</strong>
                                    <ul>
                                        <li>Users can search for any text value, and only the relevant text related to the search will be <strong>displayed</strong> .</li>
                                    </ul>
                                </li>

                                <li><strong>View more</strong>
                                    <ul>
                                        <li>User should be able to click on View button.</li>
                                        <li>After clicking on the View button selected <strong>Employee's
                                        </strong>details will be shown on the pop up screen.</li>
                                    </ul>
                                </li>

                            </ul>
                        </div>
                    </div>
                </fieldset>
                <!-- sample modal content -->
                <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" id="firsttimeModel" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-xl">
                        <div class="modal-content">
                            <div class="modal-header" id="myDIV">
                                <h4 class="modal-title" id="myLargeModalLabel1">Employee Registration Details / कर्मचारी पंजीकरण विवरण</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                            </div>
                            <div class="modal-body">
                                <fieldset>
                                    <legend id="l1">Personal Information / व्यक्तिगत जानकारी</legend>

                                    <div class="table-responsive">
                                        <table class="table table-bordered">
                                            <tbody>
                                                <tr>

                                                    <th>First Name :</th>
                                                    <td>Ajay </td>
                                                    <th>Middle Name</th>
                                                    <td>Kumar</td>
                                                    <th>Last Name :</th>
                                                    <td>Verma</td>

                                                </tr>
                                                <tr>


                                                    <th>Father's / Husband Name :</th>
                                                    <td>Rameshwar Verma</td>
                                                    <th>Date of Birth :</th>
                                                    <td>03/06/1992</td>
                                                    <th>Age :</th>
                                                    <td>33</td>
                                                </tr>
                                                <tr>

                                                    <th>Gender :</th>
                                                    <td>Male</td>
                                                    <th>Height :</th>
                                                    <td>5'7'</td>
                                                    <th>Caste :</th>
                                                    <td>OBC</td>

                                                </tr>
                                                <tr>

                                                    <th>Sub Caste :</th>
                                                    <td>Bhardwaj</td>
                                                    <th>Religion :</th>
                                                    <td>Hindu</td>
                                                    <th>Identification Mark :
                                                    </th>
                                                    <td>Moles in left Hand</td>
                                                </tr>
                                                <tr>
                                                    <th>Blood Group</th>
                                                    <td>A+</td>
                                                    <th>Handicapped (PWD) :</th>
                                                    <td>No</td>
                                                    <th>Critical Illness :</th>
                                                    <td>No</td>
                                                </tr>
                                                <tr>

                                                    <th>Pan No. :</th>
                                                    <td>ABCTY1234D</td>
                                                    <th>Aadhaar No. :</th>
                                                    <td>334512098765</td>
                                                    <th>Samagra ID No :</th>
                                                    <td>213409876</td>
                                                </tr>
                                                <tr>
                                                    <th>Employee Treasury Code :</th>
                                                    <td>TYE2345</td>
                                                    <th>Employee PRAN Code :</th>
                                                    <td>UPE456</td>
                                                    <th>Mobile No. :</th>
                                                    <td>8878346789</td>
                                                </tr>

                                                <tr>

                                                    <th>Email Id :</th>
                                                    <td>ajay@gmail.com</td>
                                                    <th>Employee Roll No. :</th>
                                                    <td>A45687</td>
                                                    <th>Aadhaar No. :</th>
                                                    <td>334512098765</td>
                                                </tr>

                                                <tr>
                                                    <th>Employee Rank :</th>
                                                    <td>3rd</td>
                                                    <th>Hobbies :</th>
                                                    <td colspan="3">Reading Books</td>

                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend id="l2">Nominee Details / नामांकित व्यक्ति का विवरण</legend>
                                    <div class="table-responsive">
                                        <table class="table table-bordered">

                                            <tr>
                                                <th>Nominee Name</th>
                                                <th>Relationship with Nominee</th>
                                                <th>Nominee Percentage</th>
                                                <th>Action</th>
                                            </tr>

                                            <tr>
                                                <td>Sourya Verma</td>
                                                <td>Brother</td>
                                                <td>100%</td>
                                                <td><i class="fa fa-pen"></i>|&nbsp <i class="fa fa-trash"></i></td>
                                            </tr>
                                        </table>
                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend id="l11">Address / पता</legend>
                                    <fieldset class="mt-5">

                                        <legend id="l3">Present Address / वर्तमान पता</legend>

                                        <div class="table-responsive">
                                            <table class="table table-bordered">

                                                <tr>
                                                    <th>State :</th>
                                                    <td>Madhya Pradesh</td>
                                                    <th>Division :</th>
                                                    <td>Bhopal</td>
                                                </tr>
                                                <tr>
                                                    <th>District :</th>
                                                    <td>Raisen</td>
                                                    <th>Block :</th>
                                                    <td>Begamganj</td>
                                                </tr>
                                                <tr>
                                                    <th>Pincode :</th>
                                                    <td>462010</td>
                                                    <th>Address line 1 :
                                                    </th>
                                                    <td>2 B, near bank of india, Awadhpuri, Bhopal, Madhya Pradesh</td>
                                                </tr>
                                                <tr>
                                                    <th>Address line 2 :</th>
                                                    <td colspan="3">Apt 202</td>
                                                </tr>

                                            </table>
                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <legend id="l4">Permanent Address / स्थायी पता</legend>
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <tr>
                                                    <th>State :</th>
                                                    <td>Madhya Pradesh</td>
                                                    <th>Division :</th>
                                                    <td>Bhopal</td>
                                                </tr>
                                                <tr>
                                                    <th>District :</th>
                                                    <td>Raisen</td>
                                                    <th>Block :</th>
                                                    <td>Badi</td>
                                                </tr>
                                                <tr>
                                                    <th>Pincode :</th>
                                                    <td>462030</td>
                                                    <th>Address line 1 :
                                                    </th>
                                                    <td>123 Main Street, apt 4B San Diego CA, 91911</td>
                                                </tr>
                                                <tr>
                                                    <th>Address line 2 :</th>
                                                    <td colspan="3">Main Street, apt 4B</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </fieldset>
                                </fieldset>

                                <fieldset>

                                    <legend id="l5">Marital Status and Spouse Details / वैवाहिक स्थिति और जीवनसाथी का विवरण</legend>

                                    <div class="table-responsive">
                                        <table class="table table-bordered">
                                            <tr>
                                                <th>Married Status :</th>
                                                <td>Yes</td>
                                                <th>Spouse Name :
                                                </th>
                                                <td>Shalini Verma</td>
                                                <th>Is Spouse Government Employee :</th>
                                                <td>No</td>
                                            </tr>

                                        </table>
                                    </div>
                                </fieldset>

                                <fieldset>

                                    <legend id="l6">Education Qualification / शैक्षणिक योग्यता</legend>
                                    <div class="table-responsive">
                                        <table class="table table-bordered">
                                            <tr>
                                                <th>Qualification :</th>
                                                <td>BCA</td>
                                                <th>Subject :
                                                </th>
                                                <td>Computer</td>
                                            </tr>
                                            <tr>
                                                <th>Board / Univercity Name :</th>
                                                <td>MP Board</td>
                                                <th>Passing Year :
                                                </th>
                                                <td>03/05/2022</td>
                                            </tr>
                                            <tr>
                                                <th>Grade / Percentage :</th>
                                                <td colspan="3">75%</td>
                                            </tr>

                                        </table>
                                    </div>
                                </fieldset>

                                <fieldset>

                                    <legend id="l7">First Appointment Details / प्रथम नियुक्ति विवरण</legend>

                                    <div class="table-responsive">

                                        <table class="table table-bordered">

                                            <tr>
                                                <th>OIS Type :</th>
                                                <td>Office</td>
                                                <th>Office Type :
                                                </th>
                                                <td>Principal Secretary</td>
                                            </tr>
                                            <tr>
                                                <th>First Appointment Division :</th>
                                                <td>Gwalior</td>
                                                <th>First Appointment District :
                                                </th>
                                                <td>Raisen</td>
                                            </tr>
                                            <tr>
                                                <th>First Appointment Block :</th>
                                                <td>Badi</td>
                                                <th>DDO / Sankul :
                                                </th>
                                                <td>MVM School</td>
                                            </tr>
                                            <tr>

                                                <th>Office/Institute/School Code & Name :
                                                </th>
                                                <td>Reem Higher Secondary School</td>
                                                <th>Office/Institute/School Address of first Posting
                                                   :</th>
                                                <td>Robertson, 1234 NW Bobcat Lane, St. Robert</td>
                                            </tr>
                                            <tr>

                                                <th>First Appointment Order No :
                                                </th>
                                                <td>3456</td>
                                                <th>First Appointment Order Date :</th>
                                                <td>08/04/2020</td>
                                            </tr>
                                            <tr>

                                                <th>First Appointment Department :
                                                </th>
                                                <td>DPI</td>
                                                <th>Employee’s Designation Type :</th>
                                                <td>Clerical</td>
                                            </tr>
                                            <tr>

                                                <th>First Appointment Designation :
                                                </th>
                                                <td>Director</td>
                                                <th>Appointment Joining Date :</th>
                                                <td>09/11/2021</td>
                                            </tr>
                                            <tr>

                                                <th>Panal Name :
                                                </th>
                                                <td>SSS-3</td>
                                                <th>Subject :</th>
                                                <td>English</td>
                                            </tr>
                                            <tr>

                                                <th>Samvilian Order No. :
                                                </th>
                                                <td>56789</td>
                                                <th>Samvilian Order Date :</th>
                                                <td>23/12/2018</td>
                                            </tr>
                                            <tr>

                                                <th>Working in other Department Organization on Deputation Transfer :
                                                </th>
                                                <td>No</td>
                                                <th>Is Regular :</th>
                                                <td>Yes</td>
                                            </tr>
                                            <tr>

                                                <th>Increment Month :
                                                </th>
                                                <td>January</td>
                                                <th>Provision Period From Month :</th>
                                                <td>01/03/2017</td>
                                            </tr>
                                            <tr>

                                                <th>Provision Period To Month :
                                                </th>
                                                <td>04/07/2021</td>
                                                <th>If Provision Extend :</th>
                                                <td>No</td>
                                            </tr>
                                            <tr>

                                                <th>Provision Type :
                                                </th>
                                                <td>Regular Employee</td>
                                                <th>Employee Retirement Date</th>
                                                <td>09/12/2026</td>
                                            </tr>
                                            <tr>
                                                <th>Type of Post :</th>
                                                <td>Samvida Employee</td>
                                                <th>Class :
                                                </th>
                                                <td>Class 3</td>

                                            </tr>
                                            <tr>
                                                <th>Pay Commission :</th>
                                                <td>Seventh Pay Commission</td>
                                                <th>Level :</th>
                                                <td>Level-3</td>

                                            </tr>
                                            <tr>
                                                <th>Pay Scale :</th>
                                                <td>9300-34800</td>
                                                <th>Basic Pay :</th>
                                                <td>16500</td>
                                            </tr>

                                        </table>
                                    </div>
                                </fieldset>

                                <fieldset>

                                    <legend id="l8">Current Appointment Details / वर्तमान नियुक्ति विवरण</legend>

                                    <div class="table-responsive">

                                        <table class="table table-bordered">

                                            <tr>
                                                <th>OIS Type :</th>
                                                <td>Institude</td>
                                                <th>Office Type :
                                                </th>
                                                <td>Deputy Secretary</td>
                                            </tr>
                                            <tr>
                                                <th>First Appointment Division :</th>
                                                <td>Narmadapuram</td>
                                                <th>First Appointment District :
                                                </th>
                                                <td>Sehore</td>
                                            </tr>
                                            <tr>
                                                <th>First Appointment Block :</th>
                                                <td>Ashta</td>
                                                <th>DDO / Sankul :
                                                </th>
                                                <td>Geetanjali Public School</td>
                                            </tr>
                                            <tr>
                                                <th>Office/Institute/School Code & Name :
                                                </th>
                                                <td>Reem Higher Secondary School</td>
                                                <th>Office/Institute/School Address of first Posting
:</th>
                                                <td>Robertson, 1234 NW Bobcat Lane, St. Robert</td>
                                            </tr>
                                            <tr>

                                                <th>First Appointment Order No :
                                                </th>
                                                <td>9840</td>
                                                <th>First Appointment Order Date :</th>
                                                <td>09/10/2020</td>
                                            </tr>
                                            <tr>

                                                <th>First Appointment Department :
                                                </th>
                                                <td>DPI</td>
                                                <th>Employee’s Designation Type :</th>
                                                <td>Executive</td>
                                            </tr>
                                            <tr>

                                                <th>First Appointment Designation :
                                                </th>
                                                <td>Joint Director</td>
                                                <th>Appointment Joining Date :</th>
                                                <td>01/11/2021</td>
                                            </tr>
                                            <tr>

                                                <th>Panal Name :
                                                </th>
                                                <td>SSS-5</td>
                                                <th>Subject :</th>
                                                <td>Maths</td>
                                            </tr>
                                            <tr>

                                                <th>Samvilian Order No. :
                                                </th>
                                                <td>92357</td>
                                                <th>Samvilian Order Date :</th>
                                                <td>20/12/2018</td>
                                            </tr>
                                            <tr>

                                                <th>Working in other Department Organization on Deputation Transfer :
                                                </th>
                                                <td>No</td>
                                                <th>Is Regular :</th>
                                                <td>Yes</td>
                                            </tr>
                                            <tr>

                                                <th>Increment Month :
                                                </th>
                                                <td>January</td>
                                                <th>Provision Period From Month :</th>
                                                <td>01/03/2017</td>
                                            </tr>
                                            <tr>

                                                <th>Provision Period To Month :
                                                </th>
                                                <td>04/07/2021</td>
                                                <th>If Provision Extend :</th>
                                                <td>No</td>
                                            </tr>
                                            <tr>

                                                <th>Provision Type :
                                                </th>
                                                <td>Regular Employee</td>
                                                <th>Employee Retirement Date</th>
                                                <td>09/10/2026</td>

                                            </tr>
                                            <tr>
                                                <th>Type of Post :</th>
                                                <td>Samvida Employee</td>
                                                <th>Class :
                                                </th>
                                                <td>Class 3</td>

                                            </tr>
                                            <tr>
                                                <th>Pay Commission :</th>
                                                <td>Seventh Pay Commission</td>
                                                <th>Level :</th>
                                                <td>Level-3</td>

                                            </tr>
                                            <tr>
                                                <th>Pay Scale :</th>
                                                <td>9300-34800</td>
                                                <th>Basic Pay :</th>
                                                <td>16500</td>
                                            </tr>

                                        </table>
                                    </div>
                                </fieldset>

                                <fieldset>

                                    <legend id="l9">Employee Account Info / कर्मचारी खाता जानकारी</legend>
                                    <div class="table-responsive">

                                        <table class="table table-bordered">

                                            <tr>
                                                <th>IFSC Code :</th>
                                                <td>SBIN0005943 </td>
                                                <th>Bank Name</th>
                                                <td>State Bank of India</td>

                                            </tr>
                                            <tr>
                                                <th>Branch Name</th>
                                                <td>Jawahar Chowk</td>
                                                <th>Account Type</th>
                                                <td>Salary</td>
                                            </tr>
                                            <tr>
                                                <th>Account No.</th>
                                                <td>0112345678 </td>
                                                <th>Provident Fund :</th>
                                                <td>DPF No.</td>

                                            </tr>
                                            <tr>
                                                <th>DPF No. :</th>
                                                <td>34567</td>
                                                <th>Group Insurance No :</th>
                                                <td>B57445</td>
                                            </tr>
                                            <tr>
                                                <th>Gratuity No. :</th>
                                                <td>TGT5676</td>
                                                <th>EGLS No. :</th>
                                                <td>PO7856</td>
                                            </tr>
                                            <tr>
                                                <th>EDLI No. :</th>
                                                <td>ILG98</td>
                                                <th>ESIC No. :</th>
                                                <td>UYT567</td>
                                            </tr>
                                        </table>
                                    </div>
                                </fieldset>


                                <div class="row align-items-end">
                                    <div class="col-md-12">
                                        <fieldset>
                                            <legend id="l13">Document / दस्तावेज़</legend>

                                            <div class="row justify-content-center mt-3">
                                                <div id="DocAppointment" class="col-md-4">
                                                    <label>
                                                        Appointment Order Certificate
        <br />
                                                        नियुक्ति आदेश प्रमाण पत्र :
                                                    </label>
                                                </div>


                                                <div id="DocAppointment2" class="col-md-4">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg4"></i></button>

                                                </div>
                                            </div>

                                            <div class="row justify-content-center mt-3">
                                                <div id="DocBirth" class="col-md-4">
                                                    <label>
                                                        Birth Certificate
        <br />
                                                        जन्म प्रमाण पत्र  :
                                                    </label>
                                                </div>

                                                <div id="DocBirth2" class="col-md-4">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg5"></i></button>

                                                </div>
                                            </div>
                                            <div class="row justify-content-center mt-3">
                                                <div id="DocCaste" class="col-md-4">
                                                    <label>
                                                        Caste Certificate (OBC/ST/SC)<br />
                                                        जाति प्रमाण पत्र (ओबीसी/एसटी/एससी) :
                                                    </label>
                                                </div>

                                                <div id="DocCaste2" class="col-md-4">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg6"></i></button>
                                                </div>
                                            </div>

                                            <div class="row justify-content-center mt-3">
                                                <div id="DocPresentpost" class="col-md-4">
                                                    <label>
                                                        Present Posting Order
        <br />
                                                        वर्तमान पोस्टिंग ऑर्डर  :
                                                    </label>
                                                </div>

                                                <div id="DocPresentpost2" class="col-md-4">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg4"></i></button>

                                                </div>
                                            </div>
                                            <div class="row justify-content-center mt-3">
                                                <div id="Dochandicapped" class="col-md-4">
                                                    <label>
                                                        Handicapped Certificate
                        <br />
                                                        विकलांग प्रमाण पत्र  :
                                                    </label>
                                                </div>

                                                <div id="Dochandicapped2" class="col-md-4">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg7"></i></button>

                                                </div>
                                            </div>
                                            <div class="row justify-content-center mt-3">
                                                <div id="CriticalIllness" class="col-md-4">
                                                    <label>
                                                        Critical Illness Certificate<br />
                                                        गंभीर बीमारी प्रमाणपत्र  :
                                                    </label>
                                                </div>

                                                <div id="CriticalIllness3" class="col-md-4">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg7"></i></button>

                                                </div>
                                            </div>
                                            <div class="row justify-content-center mt-3">
                                                <div id="DocMarried" class="col-md-4">
                                                    <label>
                                                        Married Certificate<br />
                                                        विवाहित प्रमाणपत्र  :
                                                    </label>
                                                </div>

                                                <div id="DocMarried2" class="col-md-4">
                                                    <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg8"></i></button>

                                                </div>
                                            </div>
                                        </fieldset>
                                    </div>
                                </div>
                                <fieldset>
                                    <legend id="l12">Educational Document / शैक्षिक दस्तावेज़</legend>

                                    <div class="row justify-content-center mt-3">
                                        <div id="Doc10th" class="col-md-4">
                                            <label>
                                                10th Marksheet<br />
                                                10वीं की मार्कशीट  :</label>
                                        </div>

                                        <div id="Doc10th2" class="col-md-4">
                                            <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg9"></i></button>

                                        </div>
                                    </div>
                                    <div class="row justify-content-center mt-3">
                                        <div id="Doc12th" class="col-md-4">
                                            <label>
                                                12th Marksheet<br />
                                                12वीं की मार्कशीट  :
                                            </label>
                                        </div>

                                        <div id="Doc12th2" class="col-md-4">
                                            <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg10"></i></button>

                                        </div>
                                    </div>
                                    <div class="row justify-content-center mt-3">
                                        <div id="DocUG" class="col-md-4">
                                            <label>
                                                UG Certificate<br />
                                                यूजी सर्टिफिकेट  :
                                            </label>
                                        </div>

                                        <div id="DocUG2" class="col-md-4">
                                            <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg11"></i></button>

                                        </div>
                                    </div>
                                    <div class="row justify-content-center mt-3">
                                        <div id="DocPG" class="col-md-4">
                                            <label>
                                                Upload PG Certificate<br />
                                                पीजी प्रमाणपत्र अपलोड करें :
                                            </label>
                                        </div>


                                        <div id="DocPG2" class="col-md-4">
                                            <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg11"></i></button>

                                        </div>
                                    </div>
                                    <div class="row justify-content-center mt-3">
                                        <div id="DocDiploma" class="col-md-4">
                                            <label>
                                                Diploma Certificate<br />
                                                डिप्लोमा प्रमाणपत्र  :
                                            </label>
                                        </div>

                                        <div id="DocDiploma2" class="col-md-4">
                                            <button type="button" class="btn view-but btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg11"></i></button>

                                        </div>
                                    </div>
                                    <div class="row justify-content-center mt-3">
                                        <div id="DocOther" class="col-md-4">
                                            <label>
                                                Other Certificate<br />
                                                अन्य प्रमाणपत्र :
                                            </label>
                                        </div>

                                        <div id="DocOther2" class="col-md-4">
                                            <button type="button" class="btn view-but btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg11"></i></button>

                                        </div>
                                    </div>

                                </fieldset>
                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-outline-danger waves-effect  w-lg" data-bs-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->

        </div>
        <!-- /.modal -->
    </div>
    <div class="modal bs-example-modal-lg4" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 style="font: bold; margin-left: auto;"></h3>
                    <button type="button" class="btn-close" data-bs-toggle="modal" data-bs-target="#firsttimeModel" aria-hidden="true"></button>
                </div>
                <div class="modal-body">

                    <img src="../../img/AppointmentOrder.jpg" class="img-fluid" />
                </div>
               
            </div>
        </div>
    </div>
    <div class="modal bs-example-modal-lg5" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 style="font: bold; margin-left: auto;"></h3>
                    <button type="button" class="btn-close" data-bs-toggle="modal" data-bs-target="#firsttimeModel" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <img src="../../img/Birth-Certificate.jpg" class="img-fluid" />

                </div>
            </div>
        </div>
    </div>

    <div class="modal bs-example-modal-lg6" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 style="font: bold; margin-left: auto;"></h3>
                    <button type="button" class="btn-close" data-bs-toggle="modal" data-bs-target="#firsttimeModel" aria-hidden="true"></button>
                </div>
                <div class="modal-body">

                    <img src="../../img/CasteCertificate1.jpg" class="img-fluid" />
                </div>
            </div>
        </div>
    </div>

    <div class="modal bs-example-modal-lg7" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 style="font: bold; margin-left: auto;"></h3>
                    <button type="button" class="btn-close" data-bs-toggle="modal" data-bs-target="#firsttimeModel" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <img src="../../img/Handicape-Certificate.jpg" class="img-fluid" width="800" />

                </div>
            </div>
        </div>
    </div>
    <div class="modal bs-example-modal-lg8" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 style="font: bold; margin-left: auto;"></h3>
                    <button type="button" class="btn-close" data-bs-toggle="modal" data-bs-target="#firsttimeModel" aria-hidden="true"></button>
                </div>
                <div class="modal-body">

                    <img src="../../img/Marriage-Certificate1.jpg" class="img-fluid" />
                </div>
            </div>
        </div>
    </div>
    <div class="modal bs-example-modal-lg9" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 style="font: bold; margin-left: auto;"></h3>
                    <button type="button" class="btn-close" data-bs-toggle="modal" data-bs-target="#firsttimeModel" aria-hidden="true"></button>
                </div>
                <div class="modal-body">

                    <img src="../../img/10thMarksheet.jpg" class="img-fluid" />
                </div>
            </div>
        </div>
    </div>
    <div class="modal bs-example-modal-lg10" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 style="font: bold; margin-left: auto;"></h3>
                    <button type="button" class="btn-close" data-bs-toggle="modal" data-bs-target="#firsttimeModel" aria-hidden="true"></button>
                </div>
                <div class="modal-body">

                    <img src="../../img/12thMarksheet.jpg" class="img-fluid" />
                </div>
            </div>
        </div>
    </div>
    <div class="modal bs-example-modal-lg11" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 style="font: bold; margin-left: auto;"></h3>
                   
                      <button type="button" class="btn-close" data-bs-toggle="modal" data-bs-target="#firsttimeModel" aria-hidden="true"></button>
                </div>
                <div class="modal-body">

                    <img src="../../img/UG-Certificate.jpeg" class="img-fluid" width="750" />
                </div>
            </div>
        </div>
    </div>


    <div class="modal" tabindex="-1" role="dialog" id="bootstrapModalreg">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Reject Remark</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <label>Remark</label>
                            <asp:TextBox ID="TextBoxreg2" placeholder="Enter Reject Remark" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-danger Alert-Reject" data-bs-dismiss="modal">Reject</button>
                    <button type="button" class="btn btn-danger  waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" id="bootstrapModalreg1">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 style="font: bold; margin-left: auto;">//आहरण संवितरण अधिकारी की अनुशंसा//</h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-bordered" style="border: 1px solid">
                                <tr class="nowrap">
                                    <th>सरल क्रमांक</th>
                                    <th>
                                        <center>अधिकारी की अनुशंसा</center>
                                    </th>
                                </tr>
                                <tr>
                                    <td>1.</td>
                                    <td>
                                        <label style="padding: 10px; text-align: justify;">
                                            प्रमाणित किया जाता है कि श्री/श्रीमती/कु <strong>R.K. Dubey</strong> कार्यालय अंतर्गत <strong>UDC </strong>पद पर पदस्थ है। इन्होंने दिनांक <strong>21/03/2024</strong> को कार्यभार ग्रहण किया है। संबंधित द्वारा दी गई जानकारी का               
 
                                             मिलान कार्यालयीन अभिलेख से कर लिया गया है एवं जानकारी सही पाई गई है। श्री/ श्रीमती/कुका नाम Education Portal पर जोड़ने एवं यूनिक आईडी प्रदान करने की अनुशंसा की जाती है।             
             
                                        </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2.</td>
                                    <td>
                                        <label style="padding: 10px; text-align: justify;">
                                            प्रमाणित किया जाता है कि श्री/श्रीमती/कु <strong>Pradeep Mishra</strong> कार्यालय अंतर्गत <strong>UDC </strong>पद पर पदस्थ है। इन्होंने दिनांक <strong>21/03/2024</strong> को कार्यभार ग्रहण किया है। संबंधित द्वारा दी गई जानकारी का                
                                             मिलान कार्यालयीन अभिलेख से कर लिया गया है एवं जानकारी सही पाई गई है। श्री/ श्रीमती/कुका नाम Education Portal पर जोड़ने एवं यूनिक आईडी प्रदान करने की अनुशंसा की जाती है।           
        
                                        </label>
                                    </td>
                                </tr>
                            </table>


                            <div class="row justify-content-center" id="divbtn1">
                                <div class="col-md-12">
                                    <div class="form-group text-center">
                                        <button type="button" class="Alert-SaveOrder  btn btn-success btn-rounded">Approve</button>
                                        <button type="button" class="btn btn-danger btn-rounded waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Success').click(function () {
                    Swal.fire({
                        type: 'success',
                        title: 'Good job!',
                        text: 'Something went wrong!',
                        timer: 2000
                    })
                });

                $('.Alert-Empverify').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Verify Employee ?",
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
                                text: 'Employee Verified Successfully!',
                                timer: 2000
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
            }(window.jQuery);

    </script>
    <script>
        // Function to open the Bootstrap modal
        function openBootstrapModalreg() {
            $('#bootstrapModalreg').modal('show');
        }
        function openBootstrapModalreg1() {
            $('#bootstrapModalreg1').modal('show');
        }


    </script>
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                $('.Alert-SaveOrder').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Approve this Record?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes',
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Record Approve Successfully!',
                                timer: 2000

                            }
                            )
                            var x = document.getElementById('ShowOrders');
                            if (x.style.display == "none") {
                                x.style.display = "block";
                            } else {
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
  
    document.getElementById('btn-close').addEventListener('click', function () {
        $('#firsttimeModel').modal('show');
    });
</script>
</asp:Content>

