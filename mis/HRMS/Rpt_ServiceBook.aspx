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
                        <div class="col-lg-6">
                            <h4 class="card-title">Employee E-ServiceBook <br />कर्मचारी ई-सेवा पुस्तिका</h4>
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
                        <legend>PERSONAL INFORMATION / व्यक्तिगत जानकारी</legend>
                        <div class="row align-items-end">
                            <div class="col-md-9 col-sm-9">

                                <table class="table-bordered table">
                                    <tr>
                                        <td colspan="2" class="align-content-center">

                                            <label>
                                                Employee Unique ID /<br />
                                                कर्मचारी यूनिक आईडी</label>
                                        </td>
                                        <td colspan="2" class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="4534543536" /></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="align-content-center">
                                            <label>
                                                Employee Name /<br />
                                                कर्मचारी का नाम</label></td>
                                        <td colspan="2" class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Krishna Mishra" /></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="align-content-center">
                                            <label>
                                                Father's/Husband Name /<br />
                                                पिता/पति का नाम</label></td>
                                        <td colspan="2" class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Pulkit Mishra" /></td>
                                    </tr>

                                </table>

                            </div>
                            <div class="col-md-3 col-sm-3">

                                <div class="form-group">
                                    <img class="profileimage" src="../dist/images/avatar-13.png" id="uploadedImage" alt="Image Not Available" />
                                    <br />
                                </div>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 table-responsive">
                                <table class="table table-bordered">
                                    <tr>
                                        <td class="firstCol align-content-center">
                                            <label>
                                                Date of Birth /<br />
                                                जन्म तिथि</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="02/12/1980" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Age /<br />
                                                आयु</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="40 Year" /></td>

                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Gender /<br />
                                                लिंग</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Male" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Height /<br />
                                                ऊंचाई</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="162 cm" /></td>
                                    </tr>

                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Caste /<br />
                                                जाति</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="GENERAL" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Sub Caste /<br />
                                                उप जाति</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="No" /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Religion /<br />
                                                धर्म</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Hindu" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Blood Group /<br />
                                                ब्लड ग्रुप</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="A+" /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Identification Mark /<br />
                                                पहचान चिह्न</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Mole on face" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Handicapped (PWD) /<br />
                                                विकलांग (पीडब्ल्यूडी)</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Yes" /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Handicapped Type /<br />
                                                विकलांगता प्रकार</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Blindness" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Handicapped Percentage /<br />
                                                विकलांगता प्रतिशत</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="50%" /></td>
                                    </tr>

                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Critical Illness /<br />
                                                गंभीर बीमारी</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="No" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Employee Treasury Code /<br />
                                                कर्मचारी ट्रेजरी कोड</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="48854465" /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                PAN No. /<br />
                                                पैन नंबर</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="GKPPD6591D" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Aadhaar No. /<br />
                                                आधार नंबर</label>

                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="859626458596" /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Samagra ID No. /<br />
                                                समग्र आईडी नंबर</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="4651649845864" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Mobile No. /<br />
                                                मोबाइल नंबर</label>

                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="9685975856" /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Email Id /<br />
                                                ईमेल आईडी</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="krishna38@gmail.com" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Hobbies /<br />
                                                हाँबी</label>

                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Cricket, Swimming" /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Whether The First Page of E-Service Book is Certified /<br />
                                                क्या ई-सर्विस बुक का पहला पृष्ठ प्रमाणित है</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Yes" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Certification Date /<br />
                                                प्रमाणीकरण तिथि</label>

                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="12/08/2008" /></td>
                                    </tr>
                                </table>

                                <table class="table-bordered table">
                                    <tr>
                                        <td align="center">
                                            <a href="#">Click here to View Date of Birth Certificate</a>
                                        </td>
                                        <td align="center">
                                            <a href="#">Click here to View First Page of Service Book</a>
                                        </td>
                                        <td align="center">
                                            <a href="#">Click here to View Second Page of Service Book</a>
                                        </td>
                                    </tr>
                                </table>

                            </div>
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend>Present Address / वर्तमान पता</legend>
                        <div class="row">
                            <div class="col-md-12 table-responsive">
                                <table class="table-bordered table">
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                State /<br />
                                                राज्य</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Madhya Pradesh" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Division/<br />
                                                संभाग
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Bhopal" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                District/<br />
                                                जिला
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Bhopal " /></td>
                                        <td class="align-content-center">
                                            <label>
                                                City/<br />
                                                शहर</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Bhopal" /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Pincode/<br />
                                                पिन कोड</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="462020" /></td>
                                        <td colspan="2">
                                            <label>
                                                Address Line 1 /<br />
                                                पता लाइन 1</label>
                                        </td>
                                        <td colspan="5">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="85 Arera Hills" /></td>

                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <label>
                                                Address Line 2 /<br />
                                                पता लाइन 2
                                            </label>
                                        </td>
                                        <td colspan="4">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Near Sobhagya Residency" /></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend>Permanent Address / स्थायी पता</legend>
                        <div class="row">
                            <div class="col-md-12 table-responsive">
                                <table class="table-bordered table">
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                State /<br />
                                                राज्य</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Madhya Pradesh" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Division/<br />
                                                संभाग
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Bhopal" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                District/<br />
                                                जिला
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Bhopal " /></td>
                                        <td class="align-content-center">
                                            <label>
                                                City/<br />
                                                शहर</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Bhopal" /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Pincode/<br />
                                                पिन कोड</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="462020" /></td>
                                        <td colspan="2" class="align-content-center">
                                            <label>
                                                Address Line 1 /<br />
                                                पता लाइन 1</label>
                                        </td>
                                        <td colspan="5" class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="85 Arera Hills" /></td>

                                    </tr>
                                    <tr>
                                        <td colspan="2" class="align-content-center">
                                            <label>
                                                Address Line 2 /<br />
                                                पता लाइन 2
                                            </label>
                                        </td>
                                        <td colspan="4" class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Near Sobhagya Residency" /></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend>Marital Status and Spouse Details / वैवाहिक स्थिति और जीवनसाथी का विवरण</legend>
                        <div class="row">
                            <div class="col-md-12 table-responsive">

                                <table class="table-bordered table">
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Married /<br />
                                                विवाहित</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Yes" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Spouse Name/<br />
                                                जीवनसाथी का नाम</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Aarti Mishra" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Is Spouse Government Employee /<br />
                                                क्या जीवनसाथी सरकारी कर्मचारी हैं?
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Yes" /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Department Name /<br />
                                                विभाग का नाम
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="DPI" /></td>
                                        <td colspan="2">
                                            <label>
                                                Office Address /<br />
                                                कार्यालय का पता</label>
                                        </td>
                                        <td colspan="3" class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="85 Arera Hills, Bhopal, Madhya Pradesh" /></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend>Education Qualification / शैक्षणिक योग्यता</legend>
                        <div class="row">
                            <div class="col-md-12 table-responsive">

                                <table class="table-bordered table">
                                    <tr>
                                        <td>
                                            <label>
                                                Sr.No./<br />सरल क्र.
                                                सरल क्र.
                                            </label>
                                        </td>
                                        <td>
                                            <label>
                                                Qualification /<br />
                                                योग्यता</label>
                                        </td>
                                        <td>
                                            <label>
                                                Suject /<br />
                                                विषय
                                            </label>
                                        </td>
                                        <td>
                                            <label>
                                                Board /<br />
                                                बोर्ड</label>
                                        </td>
                                        <td>
                                            <label>
                                                Year /<br />
                                                वर्ष</label>
                                        </td>
                                        <td>
                                            <label>
                                                Grade /<br />
                                                ग्रेड</label>
                                        </td>
                                        <td>
                                            <label>
                                                Comments /<br />
                                                टिप्पणियाँ</label>
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
                        <legend>First Appointment Details / प्रथम नियुक्ति विवरण</legend>
                        <div class="row">
                            <div class="col-md-12 table-responsive">

                                <table class="table-bordered table">
                                    <tr>
                                        <td class="FirstAppointDetailWidth">
                                            <label>
                                                First Appointment District /<br />
                                                प्रथम नियुक्ति जिला</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Bhopal" /></td>
                                        <td class="FirstAppointDetailWidth">
                                            <label>
                                                Order No. /<br />
                                                आदेश संख्या</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="56464652" /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                First Appointment Order Date /<br />
                                                प्रथम नियुक्ति आदेश दिनांक
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="12/05/2022" /></td>

                                        <td class="align-content-center">
                                            <label>
                                                First Appointment Department /<br />
                                                प्रथम नियुक्ति विभाग</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="DPI" /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Employee's Designation Type /<br />
                                                कर्मचारी का पद प्रकार
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Teaching" /></td>

                                        <td class="align-content-center">
                                            <label>
                                                First Appointment Designation /<br />
                                                प्रथम नियुक्ति पदनाम</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Arts Teacher" /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Appointment Joining Date /<br />
                                                नियुक्ति में शामिल होने की दिनांक</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="02/08/2024" /></td>

                                        <td class="align-content-center">
                                            <label>
                                                Subject /<br />
                                                विषय</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Arts" /></td>
                                    </tr>

                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Office/Institute/School Code & Name/<br />
                                                कार्यालय/संस्थान/विद्यालय कोड एवं नाम
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Reema Vidhya School" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Sankul /<br />
                                                संकुल</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Geetanjali Public" /></td>
                                    </tr>

                                    <tr>
                                        <td colspan="2" class="align-content-center">
                                            <label>
                                                Office/Institute/School Address of first Posting /<br />
                                                पहली पोस्टिंग का कार्यालय/संस्थान/स्कूल का पता</label>
                                        </td>
                                        <td colspan="3" class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="585 Arrea Hills, Bhopal, Madhya Pradesh " /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Samvilian Order No. /<br />
                                                संविलियन आदेश क्रमांक</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="899184985" /></td>

                                        <td class="align-content-center">
                                            <label>
                                                Samvilian Order Date /<br />
                                                संविलियन ऑर्डर दिनांक</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="25/04/2022" /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Employee Retirement Date /<br />
                                                कर्मचारी सेवानिवृत्ति तिथि</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="12/12/2040" /></td>

                                        <td class="align-content-center">
                                            <label>
                                                Working in other Department/Organization on Deputation Transfer /<br />
                                                प्रतिनियुक्ति स्थानान्तरण पर अन्य विभाग/संगठन में कार्यरत</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Yes" /></td>
                                    </tr>

                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Deputation Department Name /<br />
                                                प्रतिनियुक्ति विभाग का नाम
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="DPI" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Payroll Office Type /<br />
                                                पेरोल कार्यालय प्रकार</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="DPI" /></td>

                                    </tr>

                                    <tr>

                                        <td class="align-content-center">
                                            <label>
                                                Class /<br />
                                                कक्षा</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Class 2" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Type of Post /<br />
                                                पोस्ट का प्रकार
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Fixed Employee" /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Pay Commission /<br />
                                                वेतन आयोग
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Seventh Pay Commission" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Level /<br />
                                                लेवल
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Level 1" /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Pay Scale /<br />
                                                वेतनमान</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="37700-67000" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Basic Pay /<br />
                                                मूल वेतन
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="21600" /></td>
                                    </tr>

                                </table>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset id="idCurrentAppointment">
                        <legend>Current Appointment Details / वर्तमान नियुक्ति विवरण</legend>
                        <div class="row">
                            <div class="col-md-12 table-responsive">

                                <table class="table-bordered table">
                                    <tr>
                                        <td class="FirstAppointDetailWidth align-content-center">
                                            <label>
                                                Current Appointment District /<br />
                                                वर्तमान नियुक्ति जिला</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Bhopal" /></td>
                                        <td class="FirstAppointDetailWidth">
                                            <label>
                                                Order No. /<br />
                                                आदेश संख्या</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="56464652" /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Current Appointment Order Date /<br />
                                                वर्तमान नियुक्ति आदेश दिनांक
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="12/05/2022" /></td>

                                        <td class="align-content-center">
                                            <label>
                                                Current Appointment Department /<br />
                                                वर्तमान नियुक्ति विभाग</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="DPI" /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Employee's Designation Type /<br />
                                                कर्मचारी का पदनाम प्रकार
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Teaching" /></td>

                                        <td class="align-content-center">
                                            <label>
                                                Current Appointment Designation /<br />
                                                वर्तमान नियुक्ति पदनाम</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Arts Teacher" /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Appointment Joining Date /<br />
                                                नियुक्ति में शामिल होने की तिथि
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="02/08/2024" /></td>

                                        <td class="align-content-center">
                                            <label>
                                                Subject /<br />
                                                विषय</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Arts" /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Office/Institute/School Code & Name/<br />
                                                कार्यालय/संस्थान/विद्यालय कोड एवं नाम</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Reema Vidhya School" /></td>

                                        <td class="align-content-center">
                                            <label>
                                                Sankul /<br />
                                                संकुल</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Geetanjali Public " /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Office/Institute/School Address of first Posting /<br />
                                                पहली पोस्टिंग का कार्यालय/संस्थान/स्कूल का पता
                                            </label>
                                        </td>
                                        <td colspan="3" class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="585 Arrea Hills, Bhopal, Madhya Pradesh " /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Samvilian Order No. /<br />
                                                संविलियन आदेश क्रमांक
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="899184985" /></td>

                                        <td class="align-content-center">
                                            <label>
                                                Samvilian Order Date /<br />
                                                संविलियन ऑर्डर दिनांक
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="25/04/2022" /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Employee Retirement Date /<br />
                                                कर्मचारी सेवानिवृत्ति दिनांक
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="12/12/2040" /></td>

                                        <td class="align-content-center">
                                            <label>
                                                Working in Other Department/Organization on Deputation Transfer /<br />
                                                प्रतिनियुक्ति स्थानान्तरण पर अन्य विभाग/संगठन में कार्य करना
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Yes" /></td>
                                    </tr>

                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Deputation Department Name /<br />
                                                प्रतिनियुक्ति विभाग का नाम
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="DPI" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Payroll Office Type /<br />
                                                पेरोल कार्यालय प्रकार</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="DPI" /></td>

                                    </tr>

                                    <tr>

                                        <td class="align-content-center">
                                            <label>
                                                Class /<br />
                                                कक्षा</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Class 2" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Type of Post /<br />
                                                पोस्ट का प्रकार
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Fixed Employee" /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Pay Commission /<br />
                                                वेतन आयोग
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Seventh Pay Commission" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Level /<br />
                                                लेवल</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Level 1" /></td>
                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Pay Scale /<br />
                                                वेतनमान</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="37700-67000" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Basic Pay /<br />
                                                मूल वेतन
                                            </label>
                                        </td>
                                        <td class="align-content-center">
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
                        <legend>Bank Account Details / बैंक के खाते का विवरण</legend>
                        <div class="row">
                            <div class="col-md-12 table-responsive">

                                <table class="table-bordered table">
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Bank Name /<br />
                                                बैंक का नाम
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Punjab National Bank" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Branch Name/<br />
                                                शाखा का नाम
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Arera Hills" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                IFSC Code /<br />
                                                आईएफएससी कोड</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="BARB0ASH548" /></td>

                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Accout No. /<br />
                                                खाता नंबर</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="64168496816416" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Account Type/<br />
                                                खाते का प्रकार</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="Salary Account" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                EPF No. /<br />
                                                ईपीएफ नंबर</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="98189849844865" /></td>

                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                GPF No. /<br />
                                                जीपीएफ नंबर
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="64168496816416" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                NPS No. /<br />
                                                एनपीएस नंबर</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="84894849894198 " /></td>
                                        <td class="align-content-center">
                                            <label>
                                                Group Insurance No./<br />
                                                समूह बीमा संख्या
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="88978948994984" /></td>

                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                Gratuity No. /<br />
                                                ग्रेच्युटी संख्या
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="417114127587" /></td>
                                        <td class="align-content-center">
                                            <label>
                                                EGLS No. /<br />
                                                ईजीएलएस नंबर</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="57857857575 " /></td>
                                        <td class="align-content-center">
                                            <label>
                                                EDLI No. /<br />
                                                ईडीएलआई नंबर</label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="858278755" /></td>

                                    </tr>
                                    <tr>
                                        <td class="align-content-center">
                                            <label>
                                                ESIC No. /<br />
                                                ईएसआईसी नंबर
                                            </label>
                                        </td>
                                        <td class="align-content-center">
                                            <input name="ename" readonly="readonly" type="text" class="form-control" autocomplete="off" placeholder="7882587827827" /></td>

                                    </tr>
                                </table>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend>Promotion Details / प्रमोशन विवरण</legend>
                        <div class="row">
                            <div class="col-md-12 table-responsive">

                                <table class="table-bordered table-responsive table">
                                    <tr>
                                        <th>
                                            <label>
                                                Sr.No./<br />
                                                सरल क्र.</label>
                                            </th>
                                        <th>
                                            <label>
                                                Order No. /<br />
                                                आदेश संख्या
                                            </label>
                                            </th>
                                        <th>
                                            <label>
                                                Order Date /<br />
                                                आदेश दिनांक
                                            </label>
                                            </th>
                                        <th>
                                            <label>
                                                Name of Issuing Office/<br />
                                                जारीकर्ता कार्यालय का नाम
                                            </label>
                                            </th>
                                        <th>
                                            <label>
                                                Direct In Case Of District/Division Level Authority /<br />
                                                जिला/मंडल स्तरीय प्राधिकरण के मामले में प्रत्यक्ष</label>
                                            </th>
                                        <th>
                                            <label>
                                                Designation/<br />
                                                पदनाम</label>
                                            </th>
                                        <th>
                                            <label>
                                                Basic Pay /<br />
                                                मूल वेतन
                                            </label>
                                            </th>
                                        <th>
                                            <label>
                                                Date of Assumption of Office /<br />
                                                कार्यभार ग्रहण करने का दिनांक
                                            </label>
                                        </th>
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
                        <legend>Pay Scale Details / वेतनमान विवरण</legend>
                        <div class="row">
                            <div class="col-md-12 table-responsive">
                                <table class="table-bordered table-responsive table">
                                    <tr>
                                        <th>
                                            <label>
                                                Sr.No./<br />
                                                सरल क्र.</label>
                                            </th>
                                        <th>
                                            <label>
                                                Order No./<br />
                                                आदेश संख्या
                                            </label>
                                            </th>
                                        <th>
                                            <label>
                                                Order Date/<br />
                                                आदेश दिनांक
                                            </label>
                                            </th>
                                        <th>
                                            <label>
                                                Name of Issuing Office /<br />
                                                जारीकर्ता कार्यालय का नाम
                                            </label>
                                            </th>
                                        <th>
                                            <label>
                                                Direct In Case Of District/Division Level Authority /<br />
                                                जिला/मंडल स्तरीय प्राधिकरण के मामले में प्रत्यक्ष</label>
                                            </th>
                                        <th>
                                            <label>
                                                Designation/<br />
                                                पदनाम</label>
                                            </th>
                                        <th>
                                            <label>
                                                Pay Scale/<br />
                                                वेतनमान</label>
                                        </th>
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
                        <legend>Annual Increment Details / वार्षिक वेतन वृद्धि विवरण</legend>
                        <div class="row">
                            <div class="col-md-12 table-responsive">
                                <table class="table-bordered table">
                                    <tr>
                                        <th>
                                            <label>Sr .No. /<br />सरल क्र. </label>
                                        </th>
                                        <th>
                                            <label>Year /<br />वर्ष </label>
                                        </th>
                                        <th>
                                            <label>Month /<br />माह </label>
                                        </th>
                                        <th>
                                            <label>New Basic Pay /<br />
                                                नया मूल वेतन
                                            </label>
                                        </th>
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
                        <legend>Special Increment Order Details / विशेष वेतन वृद्धि आदेश विवरण</legend>
                        <div class="row">
                            <div class="col-md-12 table-responsive">
                                <table class="table-bordered table">
                                    <tr>
                                        <th>
                                            <label>Sr.No./<br />सरल क्र.</label>
                                        </th>
                                        <th>
                                            <label>Order No./<br />आदेश संख्या </label>
                                        </th>
                                        <th>
                                            <label>Order Date/<br />आदेश दिनांक </label>
                                        </th>
                                        <th>
                                            <label>Increment Type/<br />
                                                वृद्धि प्रकार
                                            </label>
                                        </th>
                                        <th>
                                            <label>Name of Issuing Office /<br />
                                                जारीकर्ता कार्यालय का नाम
                                            </label>
                                        </th>
                                        <th>
                                            <label>Month /<br />माह </label>
                                        </th>
                                        <th>
                                            <label>Year /<br />वर्ष</label>
                                        </th>
                                        <th>
                                            <label>New Basic Pay /<br />
                                                नया मूल वेतन
                                            </label>
                                        </th>
                                        <th>
                                            <label>View Order /<br />
                                                आर्डर देखें
                                            </label>
                                        </th>
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
                        <legend>Transfer Details / स्थानांतरण विवरण</legend>
                        <div class="row">
                            <div class="col-md-12 table-responsive">
                                <table class="table-bordered table">
                                    <tr>
                                        <th>
                                            <label>Sr.No. /<br />सरल क्र.</label>
                                        </th>
                                        <th>
                                            <label>Order No. /<br />आदेश संख्या</label>
                                        </th>
                                        <th>
                                            <label>Order Date /<br />आदेश दिनांक</label>
                                        </th>
                                        <th>
                                            <label>Designation Type /<br />
                                                पदनाम प्रकार</label>
                                        </th>
                                        <th>
                                            <label>Posted School/Institute/Office Name (DISE Code) /<br />पोस्ट किया गया स्कूल/संस्थान/कार्यालय का नाम (डीआईएसई कोड)</label>
                                        </th>
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
                        <legend>Nomination Details / नामांकन विवरण</legend>
                        <div class="row">
                            <div class="col-md-12 table-responsive">
                                <table class="table-bordered table">
                                    <tr>
                                        <th>
                                            <label>Sr.No./<br />सरल क्र.</label>
                                        </th>
                                        <th>
                                            <label>Nominee Name /<br />नामांकित व्यक्ति का नाम
</label>
                                        </th>
                                        <th>
                                            <label>Relation with Nominee /<br />नामांकित व्यक्ति के साथ संबंध
                                            </label>
                                        </th>
                                        <th>
                                            <label>Nominee Percentage /<br />
                                                नामांकित व्यक्ति का प्रतिशत
                                            </label>
                                        </th>
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
                        <legend>Earned Leave Records / अर्जित अवकाश रिकार्ड</legend>
                        <div class="row">
                            <div class="col-md-12 table-responsive">
                                <table class="table-bordered table">
                                    <tr>
                                        <th>
                                            <label>Sr.No./<br />सरल क्र.</label>
                                        </th>
                                        <th>
                                            <label>Year /<br />वर्ष </label>
                                        </th>
                                        <th>
                                            <label>Month /<br />माह </label>
                                        </th>
                                        <th>
                                            <label>Earned Leave (In Days) /<br />
                                                अर्जित अवकाश (दिनों में)
                                            </label>
                                        </th>
                                        <th>
                                            <label>Available Leave (In Days) /<br />
                                                उपलब्ध अवकाश (दिनों में)
                                            </label>
                                        </th>
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
                        <legend>Half Pay Leave Record / आधा वेतन अवकाश रिकॉर्डs</legend>
                        <div class="row">
                            <div class="col-md-12 table-responsive">
                                <table class="table-bordered table">
                                    <tr>
                                        <th>
                                            <label>Sr.No./<br />सरल क्र.</label>
                                        </th>
                                        <th>
                                            <label>Year /<br />वर्ष </label>
                                        </th>
                                        <th>
                                            <label>Month /<br />माह </label>
                                        </th>
                                        <th>
                                            <label>Half Pay leave Earned (In Days) /<br />
                                                अर्जित आधा वेतन अवकाश (दिनों में)
                                            </label>
                                        </th>
                                        <th>
                                            <label>Available Leave (In Days) /<br />
                                                उपलब्ध अवकाश (दिनों में)
                                            </label>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>1</label>
                                        </td>
                                        <td>
                                            <label>2022</label>
                                        </td>
                                        <td>
                                            <label>April</label>
                                        </td>
                                        <td>
                                            <label>20</label>
                                        </td>
                                        <td>
                                            <label>0</label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </fieldset>


                    <fieldset>
                        <legend>Approved Leave Details / स्वीकृत अवकाश विवरण</legend>
                        <div class="row">
                            <div class="col-md-12 table-responsive">
                                <table class="table-bordered table">
                                    <tr>
                                        <th>
                                            <label>Sr.No./<br />सरल क्र.</label>
                                        </th>
                                        <th>
                                            <label>Leave Type/<br />
                                                लीव प्रकार </label>
                                        </th>
                                        <th>
                                            <label>Days/<br />दिन </label>
                                        </th>

                                        <th>
                                            <label>Date From/<br />दिनांक से </label>
                                        </th>
                                        <th>
                                            <label>Date To /<br />दिनांक तक </label>
                                        </th>
                                        <th>
                                            <label>Acceptance Date/<br />
                                                स्वीकृति दिनांक 
                                            </label>
                                        </th>
                                        <th>
                                            <label>Approver /<br />
                                                स्वीकृति दिनांक
                                            </label>
                                        </th>
                                        <th>
                                            <label>Date of return from leave/<br />
                                                छुट्टी से लौटने का दिनांक</label>
                                        </th>
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
                        <legend>Unauthorized Absence Details / अनधिकृत अनुपस्थिति विवरण</legend>
                        <div class="row">
                            <div class="col-md-12  table-responsive">
                                <table class="table-bordered table">
                                    <tr>
                                        <th>
                                            <label>Sr.No./<br />सरल क्र.</label>
                                        </th>
                                        <th>
                                            <label>Days /<br />दिन </label>
                                        </th>
                                        <th>
                                            <label>Date From /<br />दिनांक से </label>
                                        </th>
                                        <th>
                                            <label>Date To /<br />दिनांक तक </label>
                                        </th>
                                        <th>
                                            <label>Date of return /<br />
                                                लौटने की दिनांक
                                            </label>
                                        </th>
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
                        <legend>Punishment Details / सज़ा का विवरण</legend>
                        <div class="row">
                            <div class="col-md-12 table-responsive">
                                <table class="table-bordered table">
                                    <tr>
                                        <th>
                                            <label>Sr.No./<br />सरल क्र.</label>
                                        </th>
                                        <th>
                                            <label>Type of Punishment/<br />
                                                सज़ा का प्रकार
                                            </label>
                                        </th>
                                        <th>
                                            <label>Punishment Description/<br />
                                                सज़ा का प्रकार</label>
                                        </th>
                                        <th>
                                            <label>Issuing Officer /<br />
                                                जारीकर्ता अधिकारी
                                            </label>
                                        </th>
                                        <th>
                                            <label>Order No./<br />
                                                आदेश संख्या
                                            </label>
                                        </th>
                                        <th>
                                            <label>Issue Date/<br />
                                                जारी दिनांक
                                            </label>
                                        </th>
                                        <th>
                                            <label>View Order/<br />
                                                आर्डर देखें
                                            </label>
                                        </th>
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
                        <legend>Disciplinary Action Details / अनुशासनात्मक कार्रवाई विवरण</legend>
                        <div class="row">
                            <div class="col-md-12 table-responsive">
                                <table class="table-bordered table">
                                    <tr>
                                        <th>
                                            <label>Sr.No. /<br />सरल क्र. </label>
                                          </th>
                                        <th>
                                            <label>Type of Case /<br />
                                                केस का प्रकार
                                            </label>
                                          </th>
                                        <th>
                                            <label>Case Description /<br />
                                                केस विवरण
                                            </label>
                                          </th>
                                        <th>
                                            <label>Before Whom the Case are Pending /<br />
                                                जिनके समक्ष मामले लंबित हैं
                                            </label>
                                          </th>
                                        <th>
                                            <label>From Which Date the Proceedings are Pending /<br />
                                                कार्यवाही किस दिनांक से लंबित है
                                            </label>
                                          </th>
                                        <th>
                                            <label>View Order /<br />
                                                आर्डर देखें
                                            </label>
                                          </th>
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
                        <legend>Award Details / पुरस्कार विवरण</legend>
                        <div class="row">
                            <div class="col-md-12 table-responsive">
                                <table class="table-bordered table">
                                    <tr>
                                        <th>
                                            <label>Sr.No./<br />सरल क्र.</label>
                                        </th>
                                        <th>
                                            <label>Award Name /<br />
                                                पुरस्कार का नाम
                                            </label>
                                        </th>
                                        <th>
                                            <label>Award Level /<br />
                                                पुरस्कार स्तर</label>
                                        </th>
                                        <th>
                                            <label>Award Year /<br />
                                                पुरस्कार वर्ष
                                            </label>
                                        </th>
                                        <th>
                                            <label>Award Order No. /<br />
                                                पुरस्कार आदेश क्रमांक
                                            </label>
                                        </th>
                                        <th>
                                            <label>View Order /<br />
                                                आर्डर देखें
                                            </label>
                                        </th>
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
                        <legend>Training Details / प्रशिक्षण विवरण
                        </legend>
                        <div class="row">
                            <div class="col-md-12 table-responsive">
                                <table class="table-bordered table">
                                    <tr>
                                        <th>
                                            <label>Sr.No./<br />सरल क्र.</label>
                                        </th>
                                        <th>
                                            <label>Training Type /<br />
                                                प्रशिक्षण प्रकार
                                            </label>
                                        </th>
                                        <th>
                                            <label>Training Level /<br />
                                                प्रशिक्षण स्तर
                                            </label>
                                        </th>
                                        <th>
                                            <label>Total Days /<br />
                                                कुल दिन
                                            </label>
                                        </th>
                                        <th>
                                            <label>From /<br />से </label>
                                        </th>
                                        <th>
                                            <label>To /<br />तक </label>
                                        </th>
                                        <th>
                                            <label>View Order /<br />
                                                आर्डर देखें
                                            </label>
                                        </th>
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
                        <legend>Resource Group Details / संसाधन समूह विवरण</legend>
                        <div class="row">
                            <div class="col-md-12 table-responsive">
                                <table class="table-bordered table">
                                    <tr>
                                        <th>
                                            <label>Sr.No./<br />सरल क्र.</label>
                                        </th>
                                        <th>
                                            <label>Resource Group /<br />
                                                संसाधन समूह
                                            </label>
                                        </th>
                                        <th>
                                            <label>National Days /<br />
                                                राष्ट्रीय दिवस
                                            </label>
                                        </th>
                                        <th>
                                            <label>State Days /<br />
                                                राज्य दिवस
                                            </label>
                                        </th>
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

