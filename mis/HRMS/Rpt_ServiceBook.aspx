<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_ServiceBook.aspx.cs" Inherits="mis_HRMS_Rpt_ServiceBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">


    <style>
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
    </style>
    <style>
        .profileimage {
            display: block;
            height: 7.2rem;
            margin-left: 5rem;
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
 

        <div class="row page-titles mb-4 PrintNo">
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
        </div>

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

        <div class="card mt-3 shadow">
            <div class="card-body">

                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">


                                <div class="row">
                                    <fieldset>
                                        <legend>PERSONAL INFORMATION</legend>
                                        <div class="row">
                                            <div class="col-md-9 col-sm-9">

                                                <table class="table-bordered table">
                                                    <tr>
                                                        <td colspan="2">
                                                            <label class="font-bold">Employee Unique ID</label></td>
                                                        <td colspan="2">
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="4534543536" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">
                                                            <label class="font-bold">Employee Name</label></td>
                                                        <td colspan="2">
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Krishna Mishra" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">
                                                            <label class="font-bold">Father's/Husband Name</label></td>
                                                        <td colspan="2">
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Pulkit Mishra" /></td>
                                                    </tr>

                                                </table>

                                            </div>
                                            <div class="col-md-3 col-sm-3">

                                                <div class="form-group">
                                                    <img class="profileimage" src="../dist/images/avatar-13.png" id="uploadedImage" alt="Image Not Available">
                                                    <br />
                                                </div>

                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <table class="table-bordered table">
                                                    <tr>
                                                        <td class="firstCol">
                                                            <label class="font-bold">Date of Birth </label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="02/12/1980" /></td>
                                                        <td>
                                                            <label class="font-bold">Age </label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="40 Year" /></td>

                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Gender </label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Male" /></td>
                                                        <td>
                                                            <label class="font-bold">Height</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="162 cm" /></td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Caste </label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="GENERAL" /></td>
                                                        <td>
                                                            <label class="font-bold">Sub Caste</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="No" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Religion </label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Hindu" /></td>
                                                        <td>
                                                            <label class="font-bold">Blood Group</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="A+" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Identification Mark </label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Mole on face" /></td>
                                                        <td>
                                                            <label class="font-bold">Handicapped (PWD)</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Yes" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Handicapped Type</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Blindness" /></td>
                                                        <td>
                                                            <label class="font-bold">Handicapped Percentage</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="50%" /></td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Critical Illness</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="No" /></td>
                                                        <td>
                                                            <label class="font-bold">Employee Treasury Code</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="48854465" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">PAN No.</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="GKPPD6591D" /></td>
                                                        <td>
                                                            <label class="font-bold">Aadhaar No.</label>

                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="859626458596" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Samagra ID No.</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="4651649845864" /></td>
                                                        <td>
                                                            <label class="font-bold">Mobile No.</label>

                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="9685975856" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Email Id</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="krishna38@gmail.com" /></td>
                                                        <td>
                                                            <label class="font-bold">Hobbies</label>

                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Cricket, Swimming" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">whether the first Page of E-Service Book is certified</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Yes" /></td>
                                                        <td>
                                                            <label class="font-bold">Certification Date</label>

                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="12/08/2008" /></td>
                                                    </tr>
                                                </table>

                                                <table class="table-bordered table">
                                                             <tr>
                                                                 <td align="center">
                                                                     <a href="#" >Click here to View Date of Birth Certificate</a>
                                                                 </td>
                                                                 <td align="center">
                                                                     <a href="#" >Click here to View First Page of Service Book</a>
                                                                 </td>
                                                                 <td align="center">
                                                                    <a href="#" >Click here to View Second Page of Service Book</a>
                                                                 </td>
                                                             </tr>
                                                </table>

                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <legend>Present Address</legend>
                                        <div class="row">
                                            <div class="col-md-12">

                                                <table class="table-bordered table">
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">State</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Madhya Pradesh" /></td>
                                                        <td>
                                                            <label class="font-bold">Division</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Bhopal" /></td>
                                                        <td>
                                                            <label class="font-bold">District</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Bhopal " /></td>
                                                        <td>
                                                            <label class="font-bold">City</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Bhopal" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Pincode</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="462020" /></td>
                                                        <td>
                                                            <label class="font-bold">Address Line 1</label>
                                                        </td>
                                                        <td colspan="5">
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="85 Arera Hills" /></td>

                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Address Line 2</label>
                                                        </td>
                                                        <td colspan="4">
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Near Sobhagya Residency" /></td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <legend>Permanent Address</legend>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <table class="table-bordered table">
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">State</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Madhya Pradesh" /></td>
                                                        <td>
                                                            <label class="font-bold">Division</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Bhopal" /></td>
                                                        <td>
                                                            <label class="font-bold">District</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Bhopal " /></td>
                                                        <td>
                                                            <label class="font-bold">City</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Bhopal" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Pincode</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="462020" /></td>
                                                        <td>
                                                            <label class="font-bold">Address Line 1</label>
                                                        </td>
                                                        <td colspan="5">
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="85 Arera Hills" /></td>

                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Address Line 2</label>
                                                        </td>
                                                        <td colspan="4">
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Near Sobhagya Residency" /></td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <legend>Marital Status and Spouse Details</legend>
                                        <div class="row">
                                            <div class="col-md-12">

                                                <table class="table-bordered table">
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Married</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Yes" /></td>
                                                        <td>
                                                            <label class="font-bold">Spouse Name</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Aarti Mishra" /></td>
                                                        <td>
                                                            <label class="font-bold">Is Spouse Government Employee</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Yes" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Department Name</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="DPI" /></td>
                                                        <td>
                                                            <label class="font-bold">Office Address</label>
                                                        </td>
                                                        <td colspan="3">
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="85 Arera Hills, Bhopal, Madhya Pradesh" /></td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <legend>Education Qualification</legend>
                                        <div class="row">
                                            <div class="col-md-12">

                                                <table class="table-bordered table">
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">S.No.</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Qualification</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Suject</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Board</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Year</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Grade</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Comments</label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label>1</label>
                                                        </td>
                                                        <td>
                                                            <label>High School</label>
                                                        </td>
                                                        <td>
                                                            <label>-</label>
                                                        </td>
                                                        <td>
                                                            <label>MP Board</label>
                                                        </td>
                                                        <td>
                                                            <label>2007</label>
                                                        </td>
                                                        <td>
                                                            <label>1</label>
                                                        </td>
                                                        <td>
                                                            <label>60.00%</label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label>2</label>
                                                        </td>
                                                        <td>
                                                            <label>Higher Secondary School</label>
                                                        </td>
                                                        <td>
                                                            <label>Arts</label>
                                                        </td>
                                                        <td>
                                                            <label>MP Board</label>
                                                        </td>
                                                        <td>
                                                            <label>2009</label>
                                                        </td>
                                                        <td>
                                                            <label>2</label>
                                                        </td>
                                                        <td>
                                                            <label>69.00%</label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label>3</label>
                                                        </td>
                                                        <td>
                                                            <label>Graduation</label>
                                                        </td>
                                                        <td>
                                                            <label>Arts</label>
                                                        </td>
                                                        <td>
                                                            <label>Arts</label>
                                                        </td>
                                                        <td>
                                                            <label>2012</label>
                                                        </td>
                                                        <td>
                                                            <label>1</label>
                                                        </td>
                                                        <td>
                                                            <label>80.00%</label>
                                                        </td>
                                                    </tr>

                                                </table>
                                            </div>
                                        </div>


                                    </fieldset>



                                    <fieldset id="idFirstAppointment">
                                        <legend>First Appointment Details</legend>
                                        <div class="row">
                                            <div class="col-md-12">

                                                <table class="table-bordered table">
                                                    <tr>
                                                        <td class="FirstAppointDetailWidth">
                                                            <label class="font-bold">First Appointment District</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Bhopal" /></td>
                                                        <td class="FirstAppointDetailWidth">
                                                            <label class="font-bold">Order No.</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="56464652" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">First Appointment Order Date</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="12/05/2022" /></td>

                                                        <td>
                                                            <label class="font-bold">First Appointment Department</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="DPI" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Employee's Designation Type</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Teaching" /></td>

                                                        <td>
                                                            <label class="font-bold">First Appointment Designation</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Arts Teacher" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Appointment Joining Date</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="02/08/2024" /></td>

                                                        <td>
                                                            <label class="font-bold">Subject</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Arts" /></td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Office/Institute/School Code & Name</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Reema Vidhya School" /></td>
                                                        <td>
                                                            <label class="font-bold">Sankul</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Geetanjali Public " /></td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Office/Institute/School Address of first Posting</label>
                                                        </td>
                                                        <td colspan="3">
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="585 Arrea Hills, Bhopal, Madhya Pradesh " /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Samvilian Order No.</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="899184985" /></td>

                                                        <td>
                                                            <label class="font-bold">Samvilian Order Date</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="25/04/2022" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Employee Retirement Date</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="12/12/2040" /></td>

                                                        <td>
                                                            <label class="font-bold">Working in other Department/Organization on Deputation Transfer</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Yes" /></td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Deputation Department Name</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="DPI" /></td>
                                                        <td>
                                                            <label class="font-bold">Payroll Office Type</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="DPI" /></td>

                                                    </tr>

                                                    <tr>

                                                        <td>
                                                            <label class="font-bold">Class</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Class 2" /></td>
                                                        <td>
                                                            <label class="font-bold">Type of Post</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Fixed Employee" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Pay Commission</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Seventh Pay Commission" /></td>
                                                        <td>
                                                            <label class="font-bold">Level</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Level 1" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Pay Scale</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="37700-67000" /></td>
                                                        <td>
                                                            <label class="font-bold">Basic Pay</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="21600" /></td>
                                                    </tr>

                                                </table>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset id="idCurrentAppointment">
                                        <legend>Current Appointment Details</legend>

                                        <div class="row">
                                            <div class="col-md-12">

                                                <table class="table-bordered table">
                                                    <tr>
                                                        <td class="FirstAppointDetailWidth">
                                                            <label class="font-bold">Current Appointment District</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Bhopal" /></td>
                                                        <td class="FirstAppointDetailWidth">
                                                            <label class="font-bold">Order No.</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="56464652" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Current Appointment Order Date</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="12/05/2022" /></td>

                                                        <td>
                                                            <label class="font-bold">Current Appointment Department</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="DPI" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Employee's Designation Type</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Teaching" /></td>

                                                        <td>
                                                            <label class="font-bold">Current Appointment Designation</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Arts Teacher" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Appointment Joining Date</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="02/08/2024" /></td>

                                                        <td>
                                                            <label class="font-bold">Subject</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Arts" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Office/Institute/School Code & Name</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Reema Vidhya School" /></td>

                                                        <td>
                                                            <label class="font-bold">Sankul</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Geetanjali Public " /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Office/Institute/School Address of first Posting</label>
                                                        </td>
                                                        <td colspan="3">
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="585 Arrea Hills, Bhopal, Madhya Pradesh " /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Samvilian Order No.</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="899184985" /></td>

                                                        <td>
                                                            <label class="font-bold">Samvilian Order Date</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="25/04/2022" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Employee Retirement Date</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="12/12/2040" /></td>

                                                        <td>
                                                            <label class="font-bold">Working in other Department/Organization on Deputation Transfer</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Yes" /></td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Deputation Department Name</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="DPI" /></td>
                                                        <td>
                                                            <label class="font-bold">Payroll Office Type</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="DPI" /></td>

                                                    </tr>

                                                    <tr>

                                                        <td>
                                                            <label class="font-bold">Class</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Class 2" /></td>
                                                        <td>
                                                            <label class="font-bold">Type of Post</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Fixed Employee" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Pay Commission</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Seventh Pay Commission" /></td>
                                                        <td>
                                                            <label class="font-bold">Level</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Level 1" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Pay Scale</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="37700-67000" /></td>
                                                        <td>
                                                            <label class="font-bold">Basic Pay</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="21600" /></td>
                                                    </tr>

                                                </table>
                                                <table class="table-bordered table">
                                                     <tr>
                                                         <td align="center"><a href="#">Click Here to View Appointment Order Letter</a></td>
                                                         <td align="center"><a href="#">Click Here to View Present Posting Order</a></td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>

                                    </fieldset>

                                    <fieldset>
                                        <legend>Bank Account Details</legend>
                                        <div class="row">
                                            <div class="col-md-12">

                                                <table class="table-bordered table">
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Bank Name</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Punjab National Bank" /></td>
                                                        <td>
                                                            <label class="font-bold">Branch Name</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Arera Hills" /></td>
                                                        <td>
                                                            <label class="font-bold">IFSC Code</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="BARB0ASH548" /></td>

                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Accout No.</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="64168496816416" /></td>
                                                        <td>
                                                            <label class="font-bold">Account Type</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Salary Account" /></td>
                                                        <td>
                                                            <label class="font-bold">EPF No.</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="98189849844865" /></td>

                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">GPF No.</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="64168496816416" /></td>
                                                        <td>
                                                            <label class="font-bold">NPS No.</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="84894849894198 " /></td>
                                                        <td>
                                                            <label class="font-bold">Group Insurance No.</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="88978948994984" /></td>

                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">Gratuity No.</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="417114127587" /></td>
                                                        <td>
                                                            <label class="font-bold">EGLS No.</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="57857857575 " /></td>
                                                        <td>
                                                            <label class="font-bold">EDLI No.</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="858278755" /></td>

                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">ESIC No.</label>
                                                        </td>
                                                        <td>
                                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="7882587827827" /></td>

                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <legend>Promotion Details</legend>
                                        <div class="row">
                                            <div class="col-md-12">

                                                <table class="table-bordered table">
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">S.No.</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Order No.</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Order Date</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Name of Issuing Office</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Direct In Case Of District/Division Level Authority</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Designation</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Basic Pay</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Date of assumption of office</label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="8" class="text-center">
                                                            <label>Not Available</label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </fieldset>
                                    <fieldset>
                                        <legend>Pay Scale Details</legend>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <table class="table-bordered table">
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">S.No.</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Order No.</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Order Date</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Name of Issuing Office</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Direct In Case Of District/Division Level Authority</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Designation</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Pay Scale</label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label>1</label>
                                                        </td>
                                                        <td>
                                                            <label>659856</label>
                                                        </td>
                                                        <td>
                                                            <label>21/10/2022</label>
                                                        </td>
                                                        <td>
                                                            <label>DEO</label>
                                                        </td>
                                                        <td>
                                                            <label>Dewas</label>
                                                        </td>
                                                        <td>
                                                            <label>Teacher</label>
                                                        </td>
                                                        <td>
                                                            <label>4500-7000</label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <legend>Annual Increment Details</legend>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <table class="table-bordered table">
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">S.No.</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Year</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Month</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">New Basic Pay</label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label>1</label>
                                                        </td>
                                                        <td>
                                                            <label>2022</label>
                                                        </td>
                                                        <td>
                                                            <label>12</label>
                                                        </td>
                                                        <td>
                                                            <label>5000.00</label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label>2</label>
                                                        </td>
                                                        <td>
                                                            <label>2023</label>
                                                        </td>
                                                        <td>
                                                            <label>12</label>
                                                        </td>
                                                        <td>
                                                            <label>5000.00</label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <legend>Special Increment Order Details</legend>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <table class="table-bordered table">
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">S.No.</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Order No.</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Order Date</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Increment Type</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Name of Issuing Office</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Month</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Year</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">New Basic Pay</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">View Order</label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="9" class="text-center">
                                                            <label>Not Available</label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </fieldset>


                                    <fieldset>
                                        <legend>Transfer Details</legend>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <table class="table-bordered table">
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">S.No.</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Order No.</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Order Date</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Designation Type</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Posted School/Institute/Office Name (DISE Code)</label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="5" class="text-center">
                                                            <label>Not Available</label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <legend>Nomination Details</legend>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <table class="table-bordered table">
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">S.No.</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Nominee Name</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Relation with Nominee </label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Nominee Percentage</label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4" class="text-center">
                                                            <label>Not Available</label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </fieldset>


                                    <fieldset>
                                        <legend>Earned Leave Records</legend>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <table class="table-bordered table">
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">S.No.</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Year</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Month</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Earned Leave (In Days)</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Available Leave (In Days)</label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="5" class="text-center">
                                                            <label>Not Available</label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <legend>Half Pay Leave Records</legend>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <table class="table-bordered table">
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">S.No.</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Year</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Month</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Half Pay leave Earned (In Days)</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Available Leave (In Days)</label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">1</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">2022</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">April</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">20</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">0</label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </fieldset>


                                    <fieldset>
                                        <legend>Approved Leave Details</legend>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <table class="table-bordered table">
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">S.No.</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Leave Type</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Days</label>
                                                        </td>

                                                        <td>
                                                            <label class="font-bold">Date From</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Date To</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Acceptance Date</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Approver</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Date of return from leave</label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="8" class="text-center">
                                                            <label>Not Available</label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <legend>Unauthorized Absence Details</legend>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <table class="table-bordered table">
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">S.No.</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Days</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Date From</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Date To</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Date of return</label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="8" class="text-center">
                                                            <label>Not Available</label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <legend>Punishment Details</legend>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <table class="table-bordered table">
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">S.No.</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Type of Punishment</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Punishment Description</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Issuing Officer</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Order No.</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Issue Date</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">View Order</label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="7" class="text-center">
                                                            <label>Not Available</label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <legend>Disciplinary Action Details</legend>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <table class="table-bordered table">
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">S.No.</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Type of Case</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Case Description</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Before whom the Case are pending</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">From which date the proceedings are pending</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">View Order</label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="6" class="text-center">
                                                            <label>Not Available</label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <legend>Award Details</legend>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <table class="table-bordered table">
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">S.No.</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Award Name</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Award Level</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Award Year</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Award Order No.</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">View Order</label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="6" class="text-center">
                                                            <label>Not Available</label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <legend>Training Details</legend>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <table class="table-bordered table">
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">S.No.</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Training Type</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Training Level</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Total Days</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">From</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">To</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">View Order</label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="7" class="text-center">
                                                            <label>Not Available</label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </fieldset>
                                    <fieldset>
                                        <legend>Resource Group Details</legend>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <table class="table-bordered table">
                                                    <tr>
                                                        <td>
                                                            <label class="font-bold">S.No.</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">Resource Group</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">National Days</label>
                                                        </td>
                                                        <td>
                                                            <label class="font-bold">State Days</label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4" class="text-center">
                                                            <label>Not Available</label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <mark><sup>*</sup>This is a system generated E-Service Book.</mark>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <mark><sup>*</sup>No need of signature.</mark>
                                        </div>
                                    </div>

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

