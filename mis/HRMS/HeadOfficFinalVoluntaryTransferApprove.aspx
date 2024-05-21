<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="HeadOfficFinalVoluntaryTransferApprove.aspx.cs" Inherits="mis_HRMS_HeadOfficFinalVoluntaryTransferApprove" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
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

    
    <div class="row page-titles" style="margin-bottom: -30px">
        <div class="col-md-4 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/OTTMS.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br /></u></p>
        </div>
        <div class="col-md-4 mt-4 ">
            <p style="font-style: oblique; color: brown; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; text-align: center">प्रधान कार्यालय स्थानांतरण अनुमोदन</p>
        </div>
        <div class="col-md-4 align-self-center">   



            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                    <li class="breadcrumb-item active"><a href="HeadOfficeTransferApproveAplication.aspx">Head Office Transfer Approval</a></li>
                    <li class="breadcrumb-item active">Head Office Transfer Final Approval</li>
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
                                <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold">Voluntary Transfer Approval</b></a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="HeadOfficeTransferApproval.aspx">View Transfer Request & Approve</a></li>
                                    <li><a class="dropdown-item" href="HeadOfficFinalVoluntaryTransferApprove.aspx">Voluntary Transfer Final Approve</a></li>
                                    <li><a class="dropdown-item" href="HeadOfficeTransferPrint.aspx">Voluntary Transfer Print</a></li>

                                </ul>
                            </li>


                            <li class="nav-item dropdown ">
                                <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold">Mutual Transfer Approval</b></a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="HeadOfficeMutalTransferApprove.aspx">Mutual Transfer Approve</a></li>

                                    <li><a class="dropdown-item" href="HeadOfficeMutalTransferPrint.aspx">Mutual Transfer Print</a></li>

                                </ul>
                            </li>


                        </ul>

                    </div>
                </div>
            </nav>
            <br />
            <br />
            <fieldset>
                <legend>Voluntary Transfer Final Approve
                </legend>
                <div class="row">

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Designation Type<br />
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
                        <label class="font-bold">
                            District<br />
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

                    <div class="col-md-3">
                        <label class="font-bold">
                            Block<br />
                            ब्लॉक</label>
                        <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                            <option value="--Select--">--Select--</option>
                            <option value="Bhopal">Huzur</option>
                            <option value="Raisen">Fanda</option>
                            <option value="Govindapura">Govindpura</option>
                        </select>
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


                    <div class="col-md-3">
                        <div class="form-group">
                            <button type="button" class="btn btn-success btn-rounded mt-3" onclick="myFunction()">Search</button>
                            <a class="btn btn-danger btn-rounded mt-3" href="HeadOfficeTransferApproval.aspx">Clear</a>
                        </div>
                    </div>
                </div>

            </fieldset>

            <fieldset id="vacaniesDetail" style="display: none;">
                <legend>Transfer Application Detail
                </legend>
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
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <tr>
                                    <th>Sr.No</th>
                                    <th>Get DSC</th>
                                    <th>Application No.</th>
                                    <th>Employee Name</th>
                                    <th>Unique Id</th>
                                    <th>Current DDO/Shankul </th>
                                    <th>New DDO/Shankul</th>



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
                    <%-- <button class="btn btn-success">GET DSC</button>--%>

                    <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#staticBackdrop">GET DSC</button>
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
                                <legend>Varification</legend>

                                <div class="row">
                                    <label>OTP(one time Password)</label>
                                    <input class="form-control" placeholder="Enter Varification Code" />



                                </div>

                            </fieldset>
                            <div class="modal-footer text-center">
                                <%--             <button type="button" class=" Alert-Save btn btn-success btn-rounded Alert-Save " onclick="myFunction()">Approve</button>--%>

                                <input type="button" class="Alert-Save btn btn-success" value="Save" />
 <%--                               <button type="button" class="btn btn-success" data-bs-dismiss="modal">Submit</button>--%>
                                <button type="button" class="btn btn-warning" data-bs-dismiss="modal">Close</button>

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

