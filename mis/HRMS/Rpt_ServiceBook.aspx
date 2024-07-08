<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_ServiceBook.aspx.cs" Inherits="mis_HRMS_Rpt_ServiceBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">


    <style>
        th {
            white-space: nowrap;
        }

        fieldset {
            border: 0.8px solid #021d3a8c /*#ffa500*/;
        }

        legend {
            border-radius: 7px;
            border: 1.5px solid #021d3a78 /*#ffa500*/;
        }

        .select2-container .select2-selection--single, .form-control {
            border-radius: 0.2rem !important;
        }

        .select2-container .select2-selection--single, .form-control {
            border: 1px solid #1b5b5c47;
        }

            .form-control:disabled, .form-control[readonly] {
                background-color: #f5f5f538 !important;
            }

        .table-bordered > :not(caption) > * > * {
            border-width: 1px !important;
        }

        .table > :not(caption) > * > * {
            padding: 0.3rem 0.5rem !important;
        }

        #idSpouseOfcAdd {
            display: none;
        }

        #idSpouseName {
            display: none;
        }

        #idSpouseDept {
            display: none;
        }

        #idSpouseGovEmp {
            display: none;
        }

        #idSpouseName {
            display: none;
        }

        #idBankDetailsBox {
            display: none;
        }

        /*     #idFirstAppointment {
            display: none;
        }

        #idCurrentAppointment {
            display: none;
        }
*/
        #handipaceType {
            display: none;
        }

        #HandicapePercentage {
            display: none;
        }

        #idDeptName {
            display: none;
        }

        #idCurDeptName {
            display: none;
        }

        #LevelF {
            display: none;
        }

        #BasicPayF {
            display: none;
        }

        #GradePayF {
            display: none;
        }

        #PayScaleF {
            display: none;
        }

        #txtBasicPayF {
            display: none;
        }

        #LevelC {
            display: none;
        }

        #BasicPayC {
            display: none;
        }

        #PayScaleC {
            display: none;
        }

        #GradePayC {
            display: none;
        }

        #txtBasicPayC {
            display: none;
        }

        .firstCol {
            width: 14rem;
        }

        #PrintHeader {
            display: none;
        }

        .FirstAppointDetailWidth {
            width: 18rem;
        }

        @media print {
            .firstCol {
                width: 14rem;
            }

            .FirstAppointDetailWidth {
                width: 14rem;
            }

            #PrintHeader {
                display: block;
                margin-top: 40px;
            }

            .PrintNo {
                display: none;
            }
        }

        table th{
            background-color:white !important;
        }
        /*.table th{
            font-family:'Times New Roman', Times, serif;
            font-weight:bold;
        }*/
    </style>
    <style>
        .profileimage {
            display: block;
            height: 7.0rem;
            margin-left: 2rem;
           
        }

        html body .m-t-30 {
            margin-top: 0px;
        }

        .tab-menu {
            color: #313132;
            font-weight: 600 !important;
            margin-left: 1px !important;
            border: 1px solid #a5a3a3 !important;
            transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out !important;
        }

            .tab-menu:hover {
                color: #16603ae3;
            }

        .nav-pills .nav-link.active, .nav-pills .show > .nav-link {
            background-color: #16603ae3;
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
                            <a href="#E-ServiceBook" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>E-ServiceBook</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>E-ServiceBook</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-7">
                            <h4 class="card-title">Employee E-ServiceBook / कर्मचारी ई-सेवा पुस्तिका</h4>
                        </div>
                    </div>
                </div>

                <div class="modal" id="bs-example-modal-lg4" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
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
                <div class="modal " tabindex="-1" role="dialog" id="bs-example-modal-lg11" aria-labelledby="myLargeModalLabel" aria-hidden="true">
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


                <%--<div class="row page-titles mb-4 PrintNo">
            <div class="col-md-4 align-self-center">
                <h4 class="text-themecolor ">Employee E-Service Book</h4>
            </div>
            <div class="col-md-4 text-center">
                <span class="text-themecolor ">DPI
        <br />
                    Gautam nagar near chetak bridge bhopal 
        <br />
                    E-Service Book</span>
                <br />
            </div>

            <div class="col-md-4 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=EServiceBook" title="click to go on">e-Service Book</a></li>
                        <li class="breadcrumb-item active">E-Service Book</li>
                    </ol>
                </div>
            </div>
        </div>--%>

                <div class="row page-titles mb-4" id="PrintHeader">
                    <div class="col-md-12 text-center">
                        <span class="text-themecolor ">DPI
                    <br />
                            Gautam nagar near chetak bridge bhopal
                    <br />
                            E-Service Book</span>
                        <br />
                        <span class="float-right">This copy is generated on 02/02/2024</span>
                    </div>
                </div>

                <%--<div class="card mt-3 shadow">
            <div class="card-body">--%>

                <div class="card-body">

                    <fieldset>
                        <legend id="l1">Personal Information / व्यक्तिगत जानकारी</legend>

                        <div class="table-responsive">
                            <div class="row align-items-end">
                                <div class="col-md-9 col-sm-9">

                                    <table class="table-bordered table">
                                        <tr>
                                            <td colspan="2" class="align-content-center">

                                                <label>
                                                    First Name
                       
                                                </label>
                                            </td>
                                            <td colspan="2" class="align-content-center">Ajay
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" class="align-content-center">
                                                <label>
                                                    Last Name
                      
                                                </label>
                                            </td>
                                            <td colspan="2" class="align-content-center">Verma
                                            </td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="col-md-3 col-sm-3">
                                        <img class="profileimage" src="../dist/images/avatar-13.png" id="uploadedImage" alt="Image Not Available"/>
                                        <br />
                                    </div>
                            </div>

                            <table class="table table-bordered">
                                <tbody>
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
                                    <%--<th>Action</th>--%>
                                </tr>

                                <tr>
                                    <td>Sourya Verma</td>
                                    <td>Brother</td>
                                    <td>100%</td>
                                    <%--<td><i class="fa fa-pen"></i>|&nbsp <i class="fa fa-trash"></i></td>--%>
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

                    <fieldset>
                        <legend>क्या आप राष्ट्रीय या राज्य स्तरीय प्रशिक्षण या राज्य स्तरीय समूह में शामिल हैं 
/

         Are You Involved in National or State Level Training or State Level Group</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive ">
                                    <table class="table text-center">
                                        <tbody>
                                            <tr>
                                                <th>Sr. No.
                                 <br />
                                                    सरल क्र.</th>
                                                <th>Source Group Area
                                 <br />
                                                    स्त्रोत समूह क्षेत्र</th>
                                                <th>National Level Working Day
                                 <br />
                                                    राष्ट्रीय स्तर पर कार्य दिवस</th>
                                                <th>State Level Working Day
                                 <br />
                                                    राज्य स्तर पर कार्य दिवस</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>पुस्तक लेखन</td>
                                                <td>10 दिन
                                                </td>
                                                <td>15 दिन
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>रिसर्च</td>
                                                <td>Nil
                                                </td>
                                                <td>Nil
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>मूल्यांकन- ब्लूप्रिंट/प्रश्नपत्र निर्माण</td>
                                                <td>Nil
                                                </td>
                                                <td>Nil
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>आईईडी</td>
                                                <td>RTE54546
                                                </td>
                                                <td>QWR7897
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>कंप्यूटर आधारित शिक्षण</td>
                                                <td>eLearning
                                                </td>
                                                <td>Interactive multimedia
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend>Details of National or State Level Awards And Honors
     /
        राष्ट्रीय या राज्य स्तर के पुरस्कार व सम्मान का विवरण </legend>
                        <div class="row ">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table text-center table table-hover table-bordered">
                                        <tbody>
                                            <tr>
                                                <th>Sr. No.<br />
                                                    सरल क्र.</th>
                                                <th>Name of Honor and Award<br />
                                                    सम्मान व पुरस्कार का नाम</th>
                                                <th>Year of Award<br />
                                                    पुरस्कार प्राप्ति का वर्ष</th>
                                                <th>Order number if Any<br />
                                                    आदेश क्रमांक यदि है तो</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>

                                                <td>Total Green School Awards
                                                </td>
                                                <td>2018
                                                </td>
                                                <td>YT23545
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>2</td>

                                                <td>Teaching Award
                                                </td>
                                                <td>2021
                                                </td>
                                                <td>Nil
                                                </td>

                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend>प्रशिक्षण का विवरण (In-service, induction, CWSN, Computer, Dakshata, ABL, 90 Days IED) :-</legend>
                        <div class="row form-group">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table text-center">
                                        <tbody>
                                            <tr>
                                                <th>Sr. No.
                                <br />
                                                    सरल क्र.</th>
                                                <th>Training Type
                                <br />
                                                    प्रशिक्षण प्रकार</th>
                                                <th>Level of Training (State/Division/District/Development Block)
                                <br />
                                                    प्रशिक्षण का स्तर (राज्य/संभाग/जिला/विकासखंड)</th>
                                                <th>Duration of Training (in days)
                                <br />
                                                    प्रशिक्षण की अवधि (दिनों में)</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>

                                                <td>
                                                    Computer Training
                                                </td>
                                                <td>
                                                    Raisen
                                                </td>
                                                <td>
                                                    10 days
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>2</td>

                                                <td>
                                                    Skills Training.
                                                </td>
                                                <td>
                                                    Berasia 
                                                </td>
                                                <td>
                                                    8 days
                                                </td>

                                            </tr>
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend id="l13">Document / दस्तावेज़</legend>
                        <div class="table-responsive">

                            <table class="table table-bordered ">
                                <thead>
                                    <tr>
                                        <td class="text-center">
                                            <label style="font-weight: bold; font-size: large;">Sr. No.</label>
                                        </td>
                                        <td>
                                            <label style="font-weight: bold; font-size: large;">Document Name  </label>
                                        </td>
                                        <td class="text-center">
                                            <label style="font-weight: bold; font-size: large;">View Document</label>
                                        </td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="text-center">1</td>
                                        <td>
                                            <label>
                                                Appointment Order Certificate
        <br />
                                                नियुक्ति आदेश प्रमाण पत्र :
                                            </label>
                                        </td>
                                        <td class="text-center">
                                            <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg4"></i></button>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">2</td>
                                        <td>
                                            <label>
                                                Birth Certificate
                                                                <br />
                                                जन्म प्रमाण पत्र  :
                                            </label>
                                        </td>
                                        <td class="text-center">
                                            <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg5"></i></button>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">3</td>
                                        <td>
                                            <label>
                                                Caste Certificate (OBC/ST/SC)<br />
                                                जाति प्रमाण पत्र (ओबीसी/एसटी/एससी) :
                                            </label>
                                        </td>
                                        <td class="text-center">
                                            <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg6"></i></button>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">5</td>
                                        <td>
                                            <label>
                                                Handicapped Certificate
                                                                <br />
                                                विकलांग प्रमाण पत्र  :
                                            </label>
                                        </td>
                                        <td class="text-center">
                                            <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg7"></i></button>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">6</td>
                                        <td>
                                            <label>
                                                Critical Illness Certificate<br />
                                                गंभीर बीमारी प्रमाणपत्र  :
                                            </label>
                                        </td>
                                        <td class="text-center">
                                            <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg7"></i></button>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">4</td>
                                        <td>
                                            <label>
                                                Present Posting Order
                                                                <br />
                                                वर्तमान पोस्टिंग ऑर्डर  :
                                            </label>
                                        </td>
                                        <td class="text-center">
                                            <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg4"></i></button>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">7</td>
                                        <td>
                                            <label>
                                                Married Certificate<br />
                                                विवाहित प्रमाणपत्र  :
                                            </label>
                                        </td>
                                        <td class="text-center">
                                            <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg8"></i></button>

                                        </td>
                                    </tr>

                            </table>
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend id="l12">Educational Document / शैक्षिक दस्तावेज़</legend>
                        <div class="table-responsive">

                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <td class="text-center">
                                            <label style="font-weight: bold; font-size: large;">Sr. No.</label>
                                        </td>
                                        <td>
                                            <label style="font-weight: bold; font-size: large;">Document Name  </label>
                                        </td>
                                        <td class="text-center">
                                            <label style="font-weight: bold; font-size: large;">View Document</label>
                                        </td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="text-center">1</td>
                                        <td>
                                            <label>
                                                10th Marksheet<br />
                                                10वीं की मार्कशीट  :</label></td>
                                        <td class="text-center">
                                            <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg9"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">2</td>
                                        <td>
                                            <label>
                                                12th Marksheet<br />
                                                12वीं की मार्कशीट  :
                                            </label>
                                        </td>
                                        <td class="text-center">
                                            <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg10"></i></button>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">3</td>
                                        <td>
                                            <label>
                                                UG Certificate<br />
                                                यूजी सर्टिफिकेट  :
                                            </label>
                                        </td>
                                        <td class="text-center">
                                            <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg11"></i></button>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">4</td>
                                        <td>
                                            <label>
                                                Upload PG Certificate<br />
                                                पीजी प्रमाणपत्र अपलोड करें :
                                            </label>
                                        </td>
                                        <td class="text-center">
                                            <button type="button" class="btn view-btn btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg11"></i></button>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">5</td>
                                        <td>
                                            <label>
                                                Diploma Certificate<br />
                                                डिप्लोमा प्रमाणपत्र  :
                                            </label>
                                        </td>
                                        <td class="text-center">
                                            <button type="button" class="btn view-but btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg11"></i></button>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">6</td>
                                        <td>
                                            <label>
                                                Other Certificate<br />
                                                अन्य प्रमाणपत्र :
                                            </label>
                                        </td>
                                        <td class="text-center">
                                            <button type="button" class="btn view-but btn-outline-info"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg11"></i></button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </fieldset>
                </div>



                <%--<fieldset>
                                    <legend>Employee Account Info</legend>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>IFSC Code<span style="color: red">*</span></label>
                                                <input onchange="ShowBankDetails()" placeholder="Enter IFSC Code" name="ename" value="" type="text" class="form-control" autocomplete="off" />
                                            </div>
                                        </div>
                                    </div>
                                    <div id="idBankDetailsBox">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Bank Name<span style="color: red">*</span></label>
                                                    <input placeholder="Bank Name" disabled name="ename" type="text" class="form-control" autocomplete="off" />

                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Branch Name<span style="color: red">*</span></label>
                                                    <input placeholder="Branch Name" disabled name="ename" type="text" class="form-control" autocomplete="off" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Account Type<span style="color: red">*</span></label>
                                                    <select class="form-control select2">
                                                        <option value="----">--Select--</option>
                                                        <option value="----">Salary</option>
                                                        <option value="----">Other</option>
                                                    </select>
                                                </div>

                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Account No.<span style="color: red">*</span></label>
                                                    <input placeholder="Enter Account No." name="ename" type="text" class="form-control" autocomplete="off" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>EPF No.</label>
                                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter EPF No." />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>GPF No.</label>
                                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter GPF No." />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>NPS No.</label>
                                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter NPS No." />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Group Insurance No.</label>
                                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Group Insurance No." />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Gratuity No.</label>
                                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Gratuity No." />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>EGLS No.</label>
                                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter EGLS No." />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>EDLI No.</label>
                                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter EDLI No." />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>ESIC No.</label>
                                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter ESIC No." />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row justify-content-center">
                                        <div class="col-md-3 text-center">
                                            <button type="button" class="Alert-Confirmation btn btn-success btn-rounded ">Save</button>
                                            <a runat="server" id="A1" href="EmployeeRegistration.aspx" class="btn btn-danger btn-rounded">Clear</a>
                                        </div>
                                    </div>
                                </fieldset>--%>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function calculateRetirementDate() {
            var dobInput = document.getElementById('dob').value;
            var dob = new Date(dobInput);
            var retirementAge = 62;
            var retirementDate = new Date(dob.getFullYear() + retirementAge, dob.getMonth(), dob.getDate());
            var monthNames = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
            var monthName = monthNames[retirementDate.getMonth()];
            var formattedRetirementDate = retirementDate.getDate() + '/' + monthName + '/' + retirementDate.getFullYear();
            document.getElementById('retirementDateTextbox').value = formattedRetirementDate;
            document.getElementById('retirementDateTextbox1').value = formattedRetirementDate;
        }

        function calculateAge() {
            var dobInput = document.getElementById('dob').value;

            var dob = new Date(dobInput);

            var currentDate = new Date();

            var age = currentDate.getFullYear() - dob.getFullYear();

            if (currentDate.getMonth() < dob.getMonth() || (currentDate.getMonth() === dob.getMonth() && currentDate.getDate() < dob.getDate())) {
                age--;
            }

            document.getElementById('txtAge').value = age;

            calculateRetirementDate();
        }

        function ShowHidePayCommissionF() {
            var PayCommissionF = document.getElementById("PayCommissionF");
            var LevelF = document.getElementById("LevelF");
            var BasicPayF = document.getElementById("BasicPayF");
            var GradePayF = document.getElementById("GradePayF");
            var PayScaleF = document.getElementById("PayScaleF");
            var txtBasicPayF = document.getElementById("txtBasicPayF");
            if (PayCommissionF.value === "FourthPay" || PayCommissionF.value === "SixthPay") {
                PayScaleF.style.display = "block";
                GradePayF.style.display = "block";
                txtBasicPayF.style.display = "block";
                LevelF.style.display = "none";
                BasicPayF.style.display = "none";
            } else if (PayCommissionF.value === "SeventhPay") {
                LevelF.style.display = "block";
                PayScaleF.style.display = "block";
                BasicPayF.style.display = "block";
                GradePayF.style.display = "none";
                txtBasicPayF.style.display = "none";
            } else {
                PayScaleF.style.display = "none";
                GradePayF.style.display = "none";
                txtBasicPayF.style.display = "none";
                LevelF.style.display = "none";
                BasicPayF.style.display = "none";
            }
        }

        function ShowHidePayCommissionC() {
            var PayCommissionF = document.getElementById("PayCommissionC");
            var LevelF = document.getElementById("LevelC");
            var BasicPayF = document.getElementById("BasicPayC");
            var GradePayF = document.getElementById("GradePayC");
            var PayScaleF = document.getElementById("PayScaleC");
            var txtBasicPayF = document.getElementById("txtBasicPayC");
            if (PayCommissionF.value === "FourthPay" || PayCommissionF.value === "SixthPay") {
                PayScaleF.style.display = "block";
                GradePayF.style.display = "block";
                txtBasicPayF.style.display = "block";
                LevelF.style.display = "none";
                BasicPayF.style.display = "none";
            } else if (PayCommissionF.value === "SeventhPay") {
                LevelF.style.display = "block";
                PayScaleF.style.display = "block";
                BasicPayF.style.display = "block";
                GradePayF.style.display = "none";
                txtBasicPayF.style.display = "none";
            } else {
                PayScaleF.style.display = "none";
                GradePayF.style.display = "none";
                txtBasicPayF.style.display = "none";
                LevelF.style.display = "none";
                BasicPayF.style.display = "none";
            }
        }

        function ShowBankDetails() {
            var idBankDetailsBox = document.getElementById("idBankDetailsBox");

            if (idBankDetailsBox.style.display === "none") {
                idBankDetailsBox.style.display = "block";
            } else {
                idBankDetailsBox.style.display = "block";
            }
        }

        function ShowHideHandicape() {
            var ddlHandicape = document.getElementById("ddlHandicape");
            var HandicapePercentage = document.getElementById("HandicapePercentage");
            var handipaceType = document.getElementById("handipaceType");
            if (ddlHandicape.value === "Yes") {
                HandicapePercentage.style.display = "block";
                handipaceType.style.display = "block";
            } else if (ddlHandicape.value === "No") {
                HandicapePercentage.style.display = "none";
                handipaceType.style.display = "none";
            }
        }
        function ShowHideMarried() {
            var ddlMaarriedStatus = document.getElementById("ddlMaarriedStatus");
            var idSpouseName = document.getElementById("idSpouseName");
            var idSpouseGovEmp = document.getElementById("idSpouseGovEmp");
            var idSpouseDept = document.getElementById("idSpouseDept");
            var idSpouseName = document.getElementById("idSpouseName");
            if (ddlHandicape.value === "Yes") {
                HandicapePercentage.style.display = "block";
                handipaceType.style.display = "block";
            } else if (ddlHandicape.value === "No") {
                HandicapePercentage.style.display = "none";
                handipaceType.style.display = "none";
            }
        }
        function ShowHideMarried() {
            var ddlMaarriedStatus = document.getElementById("ddlMaarriedStatus");
            var idSpouseName = document.getElementById("idSpouseName");
            var idSpouseGovEmp = document.getElementById("idSpouseGovEmp");
            if (ddlMaarriedStatus.value === "Yes") {
                idSpouseName.style.display = "block";
                idSpouseGovEmp.style.display = "block";
            } else if (ddlMaarriedStatus.value === "No") {
                idSpouseName.style.display = "none";
                idSpouseGovEmp.style.display = "none";
            }
        }
        function ShowHideGovEmp() {
            var ddlSpouseGovEmp = document.getElementById("ddlSpouseGovEmp");
            var idSpouseDept = document.getElementById("idSpouseDept");
            var idSpouseOfcAdd = document.getElementById("idSpouseOfcAdd");
            if (ddlSpouseGovEmp.value === "Yes") {
                idSpouseDept.style.display = "block";
                idSpouseOfcAdd.style.display = "block";
            } else if (ddlSpouseGovEmp.value === "No") {
                idSpouseDept.style.display = "none";
                idSpouseOfcAdd.style.display = "none";
            }
        }
        function ShowHideWorkingDept() {
            var ddlWorkingDept = document.getElementById("ddlWorkingDept");
            var idDeptName = document.getElementById("idDeptName");
            if (ddlWorkingDept.value === "Yes") {
                idDeptName.style.display = "block";
            } else if (ddlWorkingDept.value === "No") {
                idDeptName.style.display = "none";
            } else {
                idDeptName.style.display = "none";
            }
        }

        function ShowHideCurWorkingDept() {
            var ddlCurWorkingDept = document.getElementById("ddlCurWorkingDept");
            var idCurDeptName = document.getElementById("idCurDeptName");
            if (ddlCurWorkingDept.value === "Yes") {
                idCurDeptName.style.display = "block";
            } else if (ddlCurWorkingDept.value === "No") {
                idCurDeptName.style.display = "none";
            } else {
                idCurDeptName.style.display = "none";
            }
        }
        function displayImage(input) {
            var file = input.files[0];

            if (file) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    var imageContainer = document.getElementById('imageContainer');
                    var uploadedImage = document.getElementById('uploadedImage');

                    uploadedImage.src = e.target.result;
                    imageContainer.style.display = 'block';
                };
                reader.readAsDataURL(file);
            }
        }
        function AddRow() {
            var tableAdd = document.getElementById("tableAdd");
            tableAdd.style.visibility = "visible";
            if ((tableAdd.rows.length - 1) == 3) {
                alert('Maximum three entries allowed !!');
            }
            else {

                tableAdd.style.visibility = "visible";

                var rows = tableAdd.rows.length;
                var r = tableAdd.insertRow(rows);

                var Education = document.getElementById("Education");
                var Subject = document.getElementById("Subject");
                var Board = document.getElementById("Board");
                var PassingYear = document.getElementById("PassingYear");
                var Grade = document.getElementById("Grade");

                var c1 = r.insertCell(0);
                c1.innerHTML = tableAdd.rows.length - 1;

                var c2 = r.insertCell(1);
                c2.innerHTML = Education.value;

                var c3 = r.insertCell(2);
                c3.innerHTML = Subject.value;

                var c4 = r.insertCell(3);
                c4.innerHTML = Board.value;

                var c5 = r.insertCell(4);
                c5.innerHTML = PassingYear.value;

                var c6 = r.insertCell(5);
                c6.innerHTML = Grade.value;

                var c7 = r.insertCell(6);
                c7.innerHTML = "<a class='Alert-Edit' onclick='EditConfirmation()'><i class='fa fa-pen'></i></a>| <a class='Alert-Delete' onclick='DeleteConfirmation()'><i class='fa fa-trash'></i></a>";

            }
        }

        function AddNominee() {
            var tableAdd = document.getElementById("tblNominee");
            tableAdd.style.visibility = "visible";
            if ((tableAdd.rows.length - 1) == 2) {
                alert('Maximum two entries allowed !!');
            }
            else {

                tableAdd.style.visibility = "visible";

                var rows = tableAdd.rows.length;
                var r = tableAdd.insertRow(rows);
                var Education = document.getElementById("txtNomineeName");
                var Subject = document.getElementById("txtNomineeRelation");
                var Board = document.getElementById("txtNomineePercentage");

                var c1 = r.insertCell(0);
                c1.innerHTML = tableAdd.rows.length - 1;

                var c2 = r.insertCell(1);
                c2.innerHTML = Education.value;

                var c3 = r.insertCell(2);
                c3.innerHTML = Subject.value;

                var c4 = r.insertCell(3);
                c4.innerHTML = Board.value;

                var c5 = r.insertCell(4);
                c5.innerHTML = "<a class='Alert-Edit' onclick='EditConfirmation()'><i class='fa fa-pen'></i></a>| <a class='Alert-Delete' onclick='DeleteConfirmation()'><i class='fa fa-trash'></i></a>";

            }
        }

    </script>
</asp:Content>

