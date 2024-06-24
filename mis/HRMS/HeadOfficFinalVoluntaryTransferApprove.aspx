<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="HeadOfficFinalVoluntaryTransferApprove.aspx.cs" Inherits="mis_HRMS_HeadOfficFinalVoluntaryTransferApprove" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }

        th {
            white-space: nowrap;
        }

        @media print {
            /* Show modal content in full page */
            .modal-dialog {
                width: 200%;
                height: auto;
                margin: 0;
                padding: 0;
            }

            .modal-content {
                height: 200%;
                border: none;
                box-shadow: none;
            }

            .modal-body {
                width: 210%;
                height: auto;
                overflow: visible !important;
                zoom: 120%;
            }

            /* Hide unnecessary elements */
            body.modal-open {
                visibility: hidden;
            }

                body.modal-open .modal .modal-header,
                body.modal-open .modal .modal-body {
                    visibility: visible;
                }

            .modal-footer {
                display: none;
            }

            .modal-header {
                display: none;
            }
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
                            <a href="#ApprovalByHeadOffice" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Transfer Approval by HO</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>HO Transfer Final Approval</span></li>
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
                            <h4 class="card-title">HO Transfer Final Approval<br />
                                स्वैच्छिक स्थानांतरण को अंतिम मंजूरी</h4>
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
                                <a class="nav-link  text-white " href="HeadOfficeTransferApproveAplication.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                                <li class="nav-item dropdown ">
                                    <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold">Voluntary Transfer Approval</b></a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="HeadOfficeTransferApproval.aspx">View Transfer Request & Approve</a></li>
                                        <li><a class="dropdown-item" href="HeadOfficFinalVoluntaryTransferApprove.aspx">Voluntary Transfer Final Approve</a></li>
                                        <li><a class="dropdown-item" href="HeadOfficeTransferPrint.aspx">Voluntary Transfer Print</a></li>

                                    </ul>
                                </li>


                                <li class="nav-item dropdown ">
                                    <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold">Mutal Transfer Approval</b></a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="HeadOfficeMutalTransferApprove.aspx">Mutal Transfer Approve</a></li>
                                        <li><a class="dropdown-item" href="HeadOfficeMutalTransferPrint.aspx">Mutal Transfer Print</a></li>

                                    </ul>
                                </li>

                            </li>
                        </ul>

                    </div>
                </div>
            </nav>
            <br />
            <br />--%>
                    <fieldset>
                        <legend>Voluntary Transfer Final Approve / स्वैच्छिक स्थानांतरण को अंतिम मंजूरी
                        </legend>
                        <div class="row">

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Designation Type <br />
                                        पदनाम<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="----">--Select--</option>
                                        <option value="Bhopal">All</option>
                                        <option value="----">Clerical</option>
                                        <option value="----">Executive</option>
                                        <option value="----">Ministry</option>
                                        <option value="----">Teaching</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        District <br />
                                        ज़िला<span style="color: red">*</span></label>
                                    <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Bhopal">All</option>
                                        <option value="Bhopal">Bhopal</option>
                                        <option value="Raisen">Raisen</option>
                                        <option value="Rajgarh">Rajgarh</option>
                                        <option value="Sehore">Sehore</option>
                                        <option value="Vidisha">Vidisha</option>
                                        <option value="Ashoknagar">Ashoknagar</option>
                                        <option value="Shivpuri">Shivpuri</option>
                                        <option value="Datia">Datia</option>
                                        <option value="Guna">Guna</option>
                                        <option value="Gwalior">Gwalior</option>
                                        <option value="Harda">Harda</option>
                                        <option value="Hoshangabad">Hoshangabad</option>
                                        <option value="Betul">Betul</option>
                                        <option value="Morena">Morena</option>
                                        <option value="Sheopur">Sheopur</option>
                                        <option value="Bhind">Bhind</option>
                                        <option value="Barwani">Barwani</option>
                                        <option value="Burhanpur">Burhanpur</option>
                                        <option value="Dhar">Dhar</option>
                                        <option value="Indore">Indore</option>
                                        <option value="Jhabua">Jhabua</option>
                                        <option value="Khandwa">Khandwa</option>
                                        <option value="Khargone">Khargone</option>
                                        <option value="Alirajpur">Alirajpur</option>
                                        <option value="Balaghat">Balaghat</option>
                                        <option value="Chhindwara">Chhindwara</option>
                                        <option value="Jabalpur">Jabalpur</option>
                                        <option value="Katni">Katni</option>
                                        <option value="Mandla">Mandla</option>
                                        <option value="Narsinghpur">Narsinghpur</option>
                                        <option value="Seoni">Seoni</option>
                                        <option value="Rewa">Rewa</option>
                                        <option value="Satna">Satna</option>
                                        <option value="Sidhi">Sidhi</option>
                                        <option value="Singroli">Singroli</option>
                                        <option value="Chhatarpur">Chhatarpur</option>
                                        <option value="Damoh">Damoh</option>
                                        <option value="Panna">Panna</option>
                                        <option value="Sagar">Sagar</option>
                                        <option value="Tikamgarh">Tikamgarh</option>
                                        <option value="Shahdol">Shahdol</option>
                                        <option value="Umaria">Umaria</option>
                                        <option value="Dindori">Dindori</option>
                                        <option value="Anuppur">Anuppur</option>
                                        <option value="Dewas">Dewas</option>
                                        <option value="Mandsaur">Mandsaur</option>
                                        <option value="Neemuch">Neemuch</option>
                                        <option value="Ratlam">Ratlam</option>
                                        <option value="Shajapur">Shajapur</option>
                                        <option value="Ujjain">Ujjain</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Block <br />
                                        ब्लॉक</label>
                                    <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Bhopal">Huzur</option>
                                        <option value="Raisen">Fanda</option>
                                        <option value="Govindapura">Govindpura</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Employee Unique-Id 
                                <br />
                                        कर्मचारी यूनिक आईडी</label>
                                    <input class="form-control" placeholder="Enter Employee Unique-Id " />
                                </div>
                            </div>
                            <hr />
                            <div class="col-md-12">
                                <div class="form-group">
                                    <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="myFunction()">Search</button>
                                    <a class="btn btn-outline-danger btn-border w-lg" href="HeadOfficFinalVoluntaryTransferApprove.aspx">Clear</a>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset id="vacaniesDetail" style="display: none;">
                        <legend>Transfer Application Detail / स्थानांतरण आवेदन विवरण
                        </legend>
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
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table text-center table-bordered">
                                        <tr class="card-header">
                                            <th>Sr.No. <br />
                                                सरल क्र.</th>
                                            <th>Get DSC <br />
                                                डी. एस. सी. प्राप्त करें
                                            </th>
                                            <th>Application No. <br />
                                                आवेदन संख्या</th>
                                            <th>Employee Name <br />
                                                कर्मचारी का नाम</th>
                                            <th>Unique Id <br />
                                                यूनीक आई डी</th>
                                            <th>Current DDO/Shankul <br />
                                                वर्तमान डीडीओ/शंकुल</th>
                                            <th>New DDO/Shankul <br />
                                                नया डीडीओ/शंकुल</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>
                                                <input type="checkbox" id="chk1" class="form-check" onchange="toggleDivVisibility()" /></td>
                                            <td>12546</td>
                                            <td>Arjun Talwar</td>
                                            <td>BT9489</td>
                                            <td>1236547895-Gov.Hs School</td>
                                            <td>1258963478-Model High Secondary School</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>
                                                <input type="checkbox" id="chk2" class="form-check" onchange="toggleDivVisibility()" /></td>
                                            <td>13546</td>
                                            <td>Ajay Verma</td>
                                            <td>BT9785</td>
                                            <td>1656547895- Primary Gov.Hs School</td>
                                            <td>1458963478-Cambrege High Secondary School</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>
                                                <input type="checkbox" id="chk3" class="form-check" onchange="toggleDivVisibility()" /></td>
                                            <td>12876</td>
                                            <td>Rajesh Talwar</td>
                                            <td>BT9455</td>
                                            <td>1236547895-Umeya vidhya mandir </td>
                                            <td>1258963478-Model High Secondary School</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>
                                                <input type="checkbox" id="chk4" class="form-check" onchange="toggleDivVisibility()" /></td>
                                            <td>12546</td>
                                            <td>Ramesh Talwar</td>
                                            <td>BT9448</td>
                                            <td>1236547895-Goverment Imprimes Hs School</td>
                                            <td>1258963478-Model High Secondary School</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <div class="row" id="generateorder" style="display: none">
                        <div class="col-md-12 text-center">
                            <button type="button" class="btn btn-outline-success btn-border w-lg" data-bs-toggle="modal" data-bs-target="#staticBackdrop">GET DSC</button>
                        </div>

                    </div>
                    <!-- Modal -->

                    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog ">
                            <div class="modal-content">
                                <div class="modal-header">

                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <fieldset>
                                        <legend>Varification / सत्यापन</legend>

                                        <div class="row">
                                            <label>OTP(one time Password)</label>
                                            <input class="form-control" placeholder="Enter Varification Code" />
                                        </div>
                                    </fieldset>
                                    <div class="modal-footer text-center">
                                        <input type="button" class="Alert-Save btn btn-outline-success" value="Save" />
                                        <button type="button" class="btn btn-outline-warning" data-bs-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>

        function toggleDivVisibility() {
            var chk1 = document.getElementById("chk1");
            var chk2 = document.getElementById("chk2");
            var chk3 = document.getElementById("chk3");
            var chk4 = document.getElementById("chk4");
            var div1 = document.getElementById("generateorder");
            // Checking the state of each checkbox and displaying/hiding div1 accordingly
            if (chk1.checked || chk2.checked || chk3.checked || chk4.checked) {
                div1.style.display = "block";
            } else {
                div1.style.display = "none";
            }
        }
    </script>









    <script>
        function myFunction() {

            document.getElementById("vacaniesDetail").style.display = "block";
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
                        text: "Do you want to Approve This Record?",
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
                                text: 'Approve  Successfully!',
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

