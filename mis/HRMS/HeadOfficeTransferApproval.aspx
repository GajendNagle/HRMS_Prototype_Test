﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="HeadOfficeTransferApproval.aspx.cs" Inherits="mis_HRMS_HeadOfficeTransferApproval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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
                    <li class="breadcrumb-item active">Head Office Transfer Approval</li>
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
                <legend>View Transfer Request & Approve
                </legend>
                <div class="row">

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Designation Type<br />
                                पदनाम<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="----">--Select--</option>
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
                            ब्लॉक<span style="color: red">*</span></label>
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
                                    Employee Name/<br />
                                    कर्मचारी का नाम<span style="color: red">*</span></label>
                                <input name="txtEmpName" type="text" class="form-control"  autocomplete="off" placeholder="Enter Employee Name"/>
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
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table  table-hover table-bordered">
                                <tr>
                                    <th colspan="6"></th>
                                    <th colspan="5" class="text-center">Current Location</th>
                                    <th colspan="2" class="text-center">Preference Location</th>
                                    <th colspan="3"></th>
                                </tr>
                                <tr>
                                    <th>Sr. No.</th>
                                    <th>Office Type</th>
                                    <th>Employee-ID/Name</th>
                                    <th>Employee Designation</th>
                                    <th>Employee Department</th>
                                    <th>Employee Subject</th>
                                    <th>Panal</th>
                                    <th>Posted From</th>
                                    <th>District</th>
                                    <th>Block</th>
                                    <th>Sankul Code / Name</th>
                                    <th>Reason For Transfer</th>
                                    <th>Preference Location</th>
                                    <th>View Service Book</th>
                                    <th>View Apply Application</th>
                                    <th>Handicaped Certificate</th>
                                    <th>Critical Illness Certificate</th>
                                    <th>Reject Transfer</th>
                                </tr>

                                <tr>
                                    <td>1</td>
                                    <td>Head Office</td>
                                    <td>ABC123 Arjun Talwar</td>
                                    <td>Teacher</td>
                                    <td>DPI</td>
                                    <td>Hindi</td>
                                    <td>SSS-1 Hindi</td>
                                    <td>14-05- 2023</td>
                                    <td>Agar Malwa</td>
                                    <td>Agar</td>
                                    <td>65645451258-Gov.High Secondary School </td>
                                    <td>No</td>
                                    <td>
                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">View</button></td>
                                    <td><a class="btn btn-info" href="Rpt_EServiceBook.aspx" target="_blank">View</a></td>
                                    <td><a class="btn btn-success" href="../Document/New%20Doc%2004-09-2024%2016.32.pdf" target="_blank">View</a></td>
                                    <td><a class="btn btn-purple" href="#" target="_blank">View</a></td>
                                    <td><a class="btn btn-warning" href="#" target="_blank">View</a></td>

                                    <%--   <td><a class="Alert-Delete btn btn-danger">Reject</a></td>--%>

                                    <td>
                                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                            Reject
                                        </button>
                                    </td>
                                </tr>



                                <tr>
                                    <td>2</td>
                                    <td>Head Office</td>
                                    <td>BT675 Ajay Verma</td>
                                    <td>Teacher</td>
                                    <td>DPI</td>
                                    <td>English</td>
                                    <td>SSS-1 English</td>
                                    <td>12-05- 2023</td>
                                    <td>Agar Malwa</td>
                                    <td>Agar</td>
                                    <td>65645451258-Model Public School </td>
                                    <td>No</td>
                                    <td>
                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">View</button></td>
                                    <td><a class="btn btn-info" href="Rpt_EServiceBook.aspx" target="_blank">View</a></td>
                                    <td><a class="btn btn-success" href="../Document/New%20Doc%2004-09-2024%2016.32.pdf" target="_blank">View</a></td>
                                    <td><a class="btn btn-purple" href="#" target="_blank">View</a></td>
                                    <td><a class="btn btn-warning" href="#" target="_blank">View</a></td>

                                    <%--   <td><a class="Alert-Delete btn btn-danger">Reject</a></td>--%>

                                    <td>
                                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                            Reject
                                        </button>
                                    </td>
                                </tr>



                                <tr>
                                    <td>3</td>
                                    <td>Head Office</td>
                                    <td>VT8788 Kamlesh Verma</td>
                                    <td>Teacher</td>
                                    <td>DPI</td>
                                    <td>Mathematics</td>
                                    <td>SSS-1 Mathematics</td>
                                    <td>10-05- 2023</td>
                                    <td>Sagar</td>
                                    <td>Daadi</td>
                                    <td>65645451258-Imprimesh higher Secondary School </td>
                                    <td>No</td>
                                    <td>
                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">View</button></td>
                                    <td><a class="btn btn-info" href="Rpt_EServiceBook.aspx" target="_blank">View</a></td>
                                    <td><a class="btn btn-success" href="../Document/New%20Doc%2004-09-2024%2016.32.pdf" target="_blank">View</a></td>
                                    <td><a class="btn btn-purple" href="#" target="_blank">View</a></td>
                                    <td><a class="btn btn-warning" href="#" target="_blank">View</a></td>

                                    <%--   <td><a class="Alert-Delete btn btn-danger">Reject</a></td>--%>

                                    <td>
                                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                            Reject
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Head Office</td>
                                    <td>BT2594 Ramesh Sharma</td>
                                    <td>Teacher</td>
                                    <td>DPI</td>
                                    <td>Sanskrit</td>
                                    <td>SSS-1 Sanskrit</td>
                                    <td>14-05- 2023</td>
                                    <td>Bhopal</td>
                                    <td>Govindpura</td>
                                    <td>65645451258- Shishu Vidhya Mandir </td>
                                    <td>No</td>
                                    <td>
                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">View</button></td>
                                    <td><a class="btn btn-info" href="Rpt_EServiceBook.aspx" target="_blank">View</a></td>
                                    <td><a class="btn btn-success" href="../Document/New%20Doc%2004-09-2024%2016.32.pdf" target="_blank">View</a></td>
                                    <td><a class="btn btn-purple" href="#" target="_blank">View</a></td>
                                    <td><a class="btn btn-warning" href="#" target="_blank">View</a></td>

                                    <%--   <td><a class="Alert-Delete btn btn-danger">Reject</a></td>--%>

                                    <td>
                                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                            Reject
                                        </button>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-12">
                        <p style="color: blue" class="font-16">नोट:- आवेदक की प्रेफरेंस लोकेशन देखने के उपरांत चेकबॉक्स पर क्लिक करके उसे अप्रूव किया जा सकता है |  </p>


                    </div>


                </div>


            </fieldset>
            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Remark<span style="color: red">*</span></h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">

                            <textarea rows="3" placeholder="Enter Remark" class="form-control"></textarea>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Reject</button>

                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header">
                            <div class="modal-title font-20">Preference Location</div>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>
                                <legend>Preference Location</legend>
                                <div class="row mt-2">
                                </div>
                                <hr />
                                <div>
                                    <div class="row">
                                        <div class="col-md-12">

                                            <table class="table table-hover table-bordered">
                                                <tr>
                                                    <th>Sr.No</th>
                                                    <th>Action</th>
                                                    <th>Sankul UDISE Code</th>
                                                    <th>School UDISE Code</th>
                                                    <th>Vacant Post</th>
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td>
                                                        <input type="checkbox" id="chk1" class="form-check" onchange="toggleDivVisibility()" /></td>
                                                    <td>(12563254569) Unshine Public School </td>
                                                    <td>(12566458965) Govt.Hs School </td>
                                                    <td>2</td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>
                                                        <input type="checkbox" id="chk2" class="form-check" onchange="toggleDivVisibility()" /></td>
                                                    <td>(12568888569) Govt Model Public School Tonkkhurd</td>
                                                    <td>(12566452265) Govt Model Public School Bagil </td>
                                                    <td>3</td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>
                                                        <input type="checkbox" id="chk3" class="form-check" onchange="toggleDivVisibility()" /></td>
                                                    <td>(12563254569) Sharaswati Shishu Mandir WD3 Kha </td>
                                                    <td>(12566458965) Govt.Hs School Matmor </td>
                                                    <td>8</td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>
                                                        <input type="checkbox" id="chk4" class="form-check" onchange="toggleDivVisibility()" /></td>
                                                    <td>(12563254569) Govt.Hs  School Choubaragdjir </td>
                                                    <td>(12566458965) Govt.Hs School Pipri </td>
                                                    <td>3</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset id="generateorder" style="display: none">
                                <legend>Generate Order</legend>
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Order No.
                     <br />
                                                आदेश नंबर</label>
                                            <input type="text" class="form-control" placeholder="Enter  Order No. " value="125896547" readonly />

                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Order Date
                     <br />
                                                आदेश दिनांक
                                            </label>
                                            <input type="date" class="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Effective Date
                     <br />
                                                प्रभावी दिनांक</label>
                                            <input type="date" class="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Upload Documents
                     <br />
                                                दस्तावेज़ अपलोड करें</label>
                                            <input type="file" class="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>
                                                Remark
                     <br />
                                                टिप्पणी</label>
                                            <textarea rows="2" class="form-control" placeholder="Enter Remark"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-2">
                                        <div class="form-group">

                                            <button type="button" class="Alert-Confirmation btn btn-success btn-rounded " style="margin-top: 60px;">Generate Order</button>


                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                            <div class="modal-footer text-center">

                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <%--     <button type="button" class="btn btn-primary" >Select</button>--%>
                                <%--         <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Select</button>--%>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Save Details?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes',

                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Details Saved Successfully!',
                                timer: 2000

                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )

                        }

                        var x = document.getElementById("show");
                        if (x.style.display === "none") {
                            x.style.display = "block";
                        } else {
                            x.style.display = "block";
                        }
                    })
                });
                $('.Alert-Delete').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Delete Record?",
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
                                text: 'Record Deleted Successfully!',
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
                        text: "Do you want to Edit Record?",
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
</asp:Content>

