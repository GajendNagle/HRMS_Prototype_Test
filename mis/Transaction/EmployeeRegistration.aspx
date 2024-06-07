<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeeRegistration.aspx.cs" Inherits="mis_Transaction_EmployeeRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        #idSpouseOfcAdd {
            display: none;
        }

        #idCertificateDate {
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

        #Div_officetype1 {
            /*display: none;*/
        }

        #DivCriticalIllness {
            display: none;
        }
    </style>
    <style>
        .profileimage {
            display: block;
            height: 6.2rem;
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
    <div id="dv_Masters_LocationMasters" runat="server">

        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Employee Registration</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Employee" title="click to go on">Employee</a></li>
                        <li class="breadcrumb-item active">Employee Registration</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-body">

                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <ul class="nav nav-pills m-t-30 m-b-30 ">
                                    <li class=" nav-item"><a href="#navpills-1" class="nav-link active tab-menu " data-bs-toggle="tab" aria-expanded="false">Personal Information</a> </li>
                                    <li class="nav-item"><a href="#navpills-2" class="nav-link tab-menu" data-bs-toggle="tab" aria-expanded="false">Appointment Information</a> </li>
                                    <li class="nav-item"><a href="#navpills-3" class="nav-link tab-menu" data-bs-toggle="tab" aria-expanded="true">Account Information</a> </li>
                                    <li class="nav-item"><a href="#navpills-4" class="nav-link tab-menu" data-bs-toggle="tab" aria-expanded="true">Upload Certificate</a> </li>
                                </ul>
                                <div class="tab-content br-n pn">
                                    <div id="navpills-1" class="tab-pane active">
                                        <div class="row">
                                            <fieldset>
                                                <legend>PERSONAL INFORMATION</legend>
                                                <div class="row">
                                                    <div class="col-md-9">
                                                        <div class="row">
                                                            <div class="col-md-4" hidden="hidden">
                                                                <div class="form-group">
                                                                    <label>Employee Unique ID<span style="color: red">*</span></label>
                                                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Employee Unique ID" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label>First Name<span style="color: red">*</span></label>
                                                                    <input name="ename" type="text" class="form-control" autocomplete="off" id="txtMessage" placeholder="Enter First Name" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label>Middle Name<span style="color: red">*</span></label>
                                                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Middle Name" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label>Last Name<span style="color: red">*</span></label>
                                                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Last Name" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label>Father's/Husband Name<span style="color: red">*</span></label>
                                                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Father/Husband Name" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label>Date of Birth<span style="color: red">*</span></label>
                                                                    <input name="ename" id="dob" type="date" class="form-control" autocomplete="off" onchange="calculateAge()" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label>Age<span style="color: red">*</span></label>
                                                                    <input readonly="readonly" name="ename" id="txtAge" type="text" class="form-control" autocomplete="off" placeholder="Employee Age" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-3">
                                                        <div class="row justify-content-end">
                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <img class="profileimage" src="../dist/images/avatar-13.png" id="uploadedImage" alt="Image Not Available">
                                                                    <br />
                                                                    <input type="file" id="fileInput" class="form-control" onchange="displayImage(this)">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">


                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Gender<span style="color: red">*</span></label>
                                                            <select class="form-control select2">
                                                                <option value="--Select--">--Select--</option>
                                                                <option value="--Select--">Male</option>
                                                                <option value="--Select--">Female</option>
                                                                <option value="--Select--">Other</option>
                                                                <%--  <option value="Bhopal">Grain Advance</option>
                                        <option value="Bhopal">Festival Advance</option>--%>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Height<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Height IN (C.M.)" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Caste<span style="color: red">*</span></label>
                                                            <select class="form-control select2">
                                                                <option value="--Select--">--Select--</option>
                                                                <option value="--Select--">GENERAL</option>
                                                                <option value="--Select--">OBC</option>
                                                                <option value="--Select--">SC</option>
                                                                <option value="--Select--">ST</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Sub Caste<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Sub Caste" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Religion<span style="color: red">*</span></label>
                                                            <select class="form-control select2">
                                                                <option value="--Select--">--Select--</option>
                                                                <option value="--Select--">Hindu</option>
                                                                <option value="--Select--">Muslim</option>
                                                                <option value="--Select--">Sikh</option>
                                                                <option value="--Select--">Isai</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Identification Mark<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Identification Mark" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Blood Group<span style="color: red">*</span></label>
                                                            <select class="form-control select2">
                                                                <option value="--Select--">--Select--</option>
                                                                <option value="--Select--">A+</option>
                                                                <option value="--Select--">A-</option>
                                                                <option value="--Select--">B+</option>
                                                                <option value="--Select--">B-</option>
                                                                <option value="--Select--">O+</option>
                                                                <option value="--Select--">O-</option>
                                                                <%--  <option value="Bhopal">Grain Advance</option>
                                        <option value="Bhopal">Festival Advance</option>--%>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Handicapped (PWD)<span style="color: red">*</span></label>
                                                            <select onchange="ShowHideHandicape()" id="ddlHandicape" class="form-control select2">
                                                                <option value="Yes">Yes</option>
                                                                <option value="No" selected>No</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div id="handipaceType" class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Handicapped Type<span style="color: red">*</span></label>
                                                            <select id="ddlHandicappedType" class="form-control select2">
                                                                <option>--Select--</option>
                                                                <option value="Cancer/ कैंसर">Blindnes/अंधापन</option>
                                                                <option value="Low Vision/कम दृष्टि">Low Vision/कम दृष्टि</option>
                                                                <option value="Hearing Impaiment/ श्रवण हानि">Hearing Impaiment/ श्रवण हानि</option>
                                                                <option value="Speech and Language / वाणी और भाषा">Speech  Language / वाणी और भाषा</option>
                                                                <option value="Loco Moto Disability / लोको मोटो विकलांगता">Loco Moto Disability / लोको मोटो विकलांगता</option>
                                                                <option value="Mental Illness /मानसिक बिमारी">Mental Illness /मानसिक बिमारी</option>
                                                                <option value="Specipic Illness /विशिष्ट बीमारी">Specipic Illness /विशिष्ट बीमारी</option>
                                                                <option value="Intellectual Disability / बौद्धिक विकलांगता">Intellectual Disability / बौद्धिक विकलांगता</option>
                                                                <option value="Leprosy Cured Person /कुष्ठ रोग से ठीक हुआ व्यक्ति">Leprosy Cured Person /कुष्ठ रोग से ठीक हुआ व्यक्ति</option>
                                                                <option value="Autism Spectrum Disorder /ऑटिज्म स्पेक्ट्रम डिस्ऑर्डर">Autism Spectrum Disorder /ऑटिज्म स्पेक्ट्रम डिस्ऑर्डर</option>
                                                                <option value="Multiple Disability / एकाधिक विकलांगता">Multiple Disability / एकाधिक विकलांगता</option>
                                                                <option value="Cerebral Palsy / मस्तिष्क पक्षाघात">Cerebral Palsy / मस्तिष्क पक्षाघात</option>
                                                                <option value="Dwarfism / बौनापन">Dwarfism / बौनापन</option>
                                                                <option value="Muscular Dystrophy">Muscular Dystrophy</option>
                                                                <option value="Chronic Disease / मांसपेशीय दुर्विकास">Chronic Disease / मांसपेशीय दुर्विकास</option>
                                                                <option value="Multiple Sclerosis / मल्टीपल स्क्लेरोसिस">Multiple Sclerosis / मल्टीपल स्क्लेरोसिस</option>
                                                                <option value="Thalassemia / थैलेसीमिया">Thalassemia / थैलेसीमिया</option>
                                                                <option value="Hemophilia / हीमोफीलिया">Hemophilia / हीमोफीलिया</option>
                                                                <option value="Sickle Cell Disease / सिकल सेल रोग">Sickle Cell Disease / सिकल सेल रोग</option>
                                                                <option value="Acid Attack Victim / एसिड अटैक पीड़िता">Acid Attack Victim / एसिड अटैक पीड़िता</option>
                                                                <option value="Parkinson's Disease / पार्किंसंस रोग">Parkinson's Disease / पार्किंसंस रोग</option>

                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div id="HandicapePercentage" class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Handicapped Percentage<span style="color: red">*</span></label>
                                                            <select id="ddlHandicappedPercentage" class="form-control select2">
                                                                <option>--Select--</option>
                                                                <option value="40 to 50">40 to 50</option>
                                                                <option value="50 to 60">50 to 60</option>
                                                                <option value="60 to 70">60 to 70</option>
                                                                <option value="70 to 80">70 to 80</option>
                                                                <option value="80 to 90">80 to 90</option>
                                                                <option value="90 to 100">90 to 100</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Critical Illness<span style="color: red">*</span></label>
                                                            <select class="form-control select2" onchange="ShowHideCriticalIllness()" id="ddlCriticalIllness">
                                                                <option value="Yes">Yes</option>
                                                                <option value="No" selected>No</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3" id="DivCriticalIllness">

                                                        <div class="form-group">
                                                            <label>Type of Critical Illness<span style="color: red">*</span></label>
                                                            <select class="form-control select2">
                                                                <option>--Select--</option>
                                                                <option value="Cancer/ कैंसर">Cancer/ कैंसर</option>
                                                                <option value="Brain Tumor/ मस्तिष्क का ट्यूमर">Brain Tumor/ मस्तिष्क का ट्यूमर</option>
                                                                <option value="Kidney Transplant/ किडनी प्रत्यारोपण">Kidney Transplant/ किडनी प्रत्यारोपण</option>
                                                                <option value="Open Heart Bypass Surgery /ओपन हार्ट बाईपास सर्जरी">Open Heart Bypass Surgery /ओपन हार्ट बाईपास सर्जरी</option>
                                                                <option value="Parylasis / पक्षाघात">Parylasis / पक्षाघात</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>PAN No.<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter PAN No." />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Aadhaar No.<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Aadhaar No." />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Samagra ID No.<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Samagra ID No." />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Employee Treasury Code<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Employee Treasury Code" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Employee Pran Code<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Employee Pran Code" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Mobile No.<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Mobile No." />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>
                                                                Email Id<span style="color: red">*</span>
                                                            </label>
                                                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Email Id" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>
                                                                whether the first Page of E-Service Book
                                                                <br />
                                                                is certified<span style="color: red">*</span></label>
                                                            <select id="ddlCertificateDate" onchange="ShowHideCertificateDate()" class="form-control select2">
                                                                <option value="No">--Select--</option>
                                                                <option value="Yes">Yes</option>
                                                                <option value="No">No</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div id="idCertificateDate" class="col-md-3 ">
                                                        <div class="form-group">
                                                            <label>
                                                                Certification Date<span style="color: red">*</span>
                                                                <br />
                                                                &nbsp&nbsp&nbsp&nbsp</label>
                                                            <input name="ename" type="date" class="form-control" autocomplete="off" />
                                                        </div>
                                                    </div>

                                                    <div id="idRollNo" class="col-md-3 ">
                                                        <div class="form-group">
                                                            <label>
                                                                Employee Roll No.
                                                                      <br />
                                                                &nbsp&nbsp&nbsp&nbsp</label>
                                                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Employee Roll No." />
                                                        </div>
                                                    </div>

                                                    <div id="idRank" class="col-md-3 ">
                                                        <div class="form-group">
                                                            <label>
                                                                Employee Rank
                                                                    <br />
                                                                &nbsp&nbsp&nbsp&nbsp</label>
                                                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Employee Rank" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>
                                                                Hobbies<span style="color: red">*</span>
                                                                <br />
                                                                &nbsp&nbsp&nbsp&nbsp</label>
                                                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Employee Hobbies" />
                                                        </div>
                                                    </div>

                                                </div>

                                                <fieldset>
                                                    <legend>Nominee Details</legend>
                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label>Nominee Name<span style="color: red">*</span></label>
                                                                <input id="txtNomineeName" value="" name="ename" type="text" class="form-control" placeholder="Enter Nominee Name" />
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label>Relationship with Nominee<span style="color: red">*</span></label>
                                                                <input id="txtNomineeRelation" value="" name="ename" type="text" class="form-control" placeholder="Enter Relationship " />
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <label>Nominee Percentage<span style="color: red">*</span></label>
                                                                <input id="txtNomineePercentage" value="" name="ename" type="text" class="form-control" placeholder="Enter Percentage" />
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2 mt-4">
                                                            <div class="form-group">
                                                                <input type="button" id="btnNomineeadd" class="btn btn-info btn-rounded" value="ADD" onclick="AddNominee();" />

                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <table class="table" id="tblNominee" style="visibility: hidden;">
                                                                <tr>
                                                                    <th>Sr.</th>
                                                                    <th>Nominee Name</th>
                                                                    <th>Nominee Relation</th>
                                                                    <th>Nominee Percentage</th>
                                                                    <th>Action</th>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                </fieldset>
                                            </fieldset>

                                            <fieldset>
                                                <legend>Address</legend>
                                                <div class="row">
                                                    <div class="12">
                                                        <fieldset>
                                                            <legend>Present Address
                                                            </legend>
                                                            <div class="row">
                                                                <div class="col-md-3 form-group">
                                                                    <label class="font-bold">State <span style="color: red">*</span></label>
                                                                    <select name="ctl00$ContentBody$ctl00" class="form-control select2">
                                                                        <option value="--Select--">--Select--</option>
                                                                        <option value="Rajasthan">Rajasthan</option>
                                                                        <option value="Maharashtra">Maharashtra</option>
                                                                        <option value="Nagaland">Nagaland</option>
                                                                        <option value="Nashik">Nashik</option>
                                                                        <option value="West">West</option>
                                                                        <option value="Bengal">Bengal</option>
                                                                        <option value="Telangana">Telangana</option>
                                                                        <option value="Assam">Assam</option>
                                                                        <option value="Tripura">Tripura</option>
                                                                        <option value="Madhya">Madhya</option>
                                                                        <option value="Pradesh">Pradesh</option>
                                                                        <option value="Tamil">Tamil</option>
                                                                        <option value="Nadu">Nadu</option>
                                                                        <option value="Gujarat">Gujarat</option>
                                                                        <option value="Sikkim">Sikkim</option>
                                                                        <option value="Andhra">Andhra</option>
                                                                        <option value="Uttar">Uttar</option>
                                                                        <option value="Punjab">Punjab</option>
                                                                        <option value="Karnataka">Karnataka</option>
                                                                        <option value="Meghalaya">Meghalaya</option>
                                                                        <option value="Uttarakhand">Uttarakhand</option>
                                                                        <option value="Goa">Goa</option>
                                                                        <option value="Haryana">Haryana</option>
                                                                        <option value="Mizoram">Mizoram</option>
                                                                        <option value="Arunachal">Arunachal</option>
                                                                        <option value="Pradesh">Pradesh</option>
                                                                        <option value="Chhattisgarh">Chhattisgarh</option>
                                                                        <option value="Bihar">Bihar</option>
                                                                        <option value="Himachal">Himachal</option>
                                                                        <option value="Kerala">Kerala</option>
                                                                        <option value="Jharkhand">Jharkhand</option>
                                                                        <option value="Orissa">Orissa</option>

                                                                    </select>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <label class="font-bold">Division <span style="color: red">*</span></label>
                                                                    <select name="ctl00$ContentBody$ctl01" class="form-control select2">
                                                                        <option value="--Select--">--Select--</option>
                                                                        <option value="Bhopal">Bhopal</option>
                                                                        <option value="Gwalior">Gwalior</option>
                                                                        <option value="Narmadapuram">Narmadapuram</option>
                                                                        <option value="Indore">Indore</option>
                                                                        <option value="Jabalpur">Jabalpur</option>
                                                                        <option value="Rewa">Rewa</option>
                                                                        <option value="Sagar">Sagar</option>
                                                                        <option value="Shahdol">Shahdol</option>
                                                                        <option value="Ujjain">Ujjain</option>

                                                                    </select>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <label class="font-bold">District<span style="color: red">*</span></label>
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
                                                                    <label class="font-bold">Block<span style="color: red">*</span></label>
                                                                    <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                                                        <option value="--Select--">--Select--</option>
                                                                        <option value="Bhopal">Huzur</option>
                                                                        <option value="Raisen">Fanda</option>
                                                                        <option value="Govindapura">Govindapura</option>


                                                                    </select>
                                                                </div>


                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label>Pincode<span style="color: red">*</span></label>
                                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Pincode" />
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label>Address line 1<span style="color: red">*</span></label>
                                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Address line 1" />
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label>Address line 2<span style="color: red">*</span></label>
                                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Address line 2" />
                                                                    </div>
                                                                </div>


                                                            </div>
                                                        </fieldset>

                                                        <div class="col-md-4">
                                                            <div class="form-group">
                                                                <input type="checkbox" id="vehicle1" name="vehicle1" checked value="Bike">
                                                                <b>Permanent Address same as Present Address</b>
                                                                <%--<label><span style="color: red">*</span></label>--%>
                                                            </div>
                                                        </div>

                                                        <fieldset>
                                                            <legend>Permanent Address
                                                            </legend>
                                                            <div class="row">

                                                                <div class="col-md-3 form-group">
                                                                    <label class="font-bold">State <span style="color: red">*</span></label>
                                                                    <select name="ctl00$ContentBody$ctl00" class="form-control select2">
                                                                        <option value="--Select--">--Select--</option>
                                                                        <option value="Rajasthan">Rajasthan</option>
                                                                        <option value="Maharashtra">Maharashtra</option>
                                                                        <option value="Nagaland">Nagaland</option>
                                                                        <option value="Nashik">Nashik</option>
                                                                        <option value="West">West</option>
                                                                        <option value="Bengal">Bengal</option>
                                                                        <option value="Telangana">Telangana</option>
                                                                        <option value="Assam">Assam</option>
                                                                        <option value="Tripura">Tripura</option>
                                                                        <option value="Madhya">Madhya</option>
                                                                        <option value="Pradesh">Pradesh</option>
                                                                        <option value="Tamil">Tamil</option>
                                                                        <option value="Nadu">Nadu</option>
                                                                        <option value="Gujarat">Gujarat</option>
                                                                        <option value="Sikkim">Sikkim</option>
                                                                        <option value="Andhra">Andhra</option>
                                                                        <option value="Uttar">Uttar</option>
                                                                        <option value="Punjab">Punjab</option>
                                                                        <option value="Karnataka">Karnataka</option>
                                                                        <option value="Meghalaya">Meghalaya</option>
                                                                        <option value="Uttarakhand">Uttarakhand</option>
                                                                        <option value="Goa">Goa</option>
                                                                        <option value="Haryana">Haryana</option>
                                                                        <option value="Mizoram">Mizoram</option>
                                                                        <option value="Arunachal">Arunachal</option>
                                                                        <option value="Pradesh">Pradesh</option>
                                                                        <option value="Chhattisgarh">Chhattisgarh</option>
                                                                        <option value="Bihar">Bihar</option>
                                                                        <option value="Himachal">Himachal</option>
                                                                        <option value="Kerala">Kerala</option>
                                                                        <option value="Jharkhand">Jharkhand</option>
                                                                        <option value="Orissa">Orissa</option>

                                                                    </select>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <label class="font-bold">Division <span style="color: red">*</span></label>
                                                                    <select name="ctl00$ContentBody$ctl01" class="form-control select2">
                                                                        <option value="--Select--">--Select--</option>
                                                                        <option value="Bhopal">Bhopal</option>
                                                                        <option value="Gwalior">Gwalior</option>
                                                                        <option value="Narmadapuram">Narmadapuram</option>
                                                                        <option value="Indore">Indore</option>
                                                                        <option value="Jabalpur">Jabalpur</option>
                                                                        <option value="Rewa">Rewa</option>
                                                                        <option value="Sagar">Sagar</option>
                                                                        <option value="Shahdol">Shahdol</option>
                                                                        <option value="Ujjain">Ujjain</option>

                                                                    </select>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <label class="font-bold">District<span style="color: red">*</span></label>
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
                                                                    <label class="font-bold">Block<span style="color: red">*</span></label>
                                                                    <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                                                        <option value="--Select--">--Select--</option>
                                                                        <option value="Bhopal">Huzur</option>
                                                                        <option value="Raisen">Fanda</option>
                                                                        <option value="Govindapura">Govindapura</option>
                                                                    </select>
                                                                </div>


                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label>Pincode<span style="color: red">*</span></label>
                                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Pincode" />
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label>Address line 1<span style="color: red">*</span></label>
                                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Address line 1" />
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label>Address line 2<span style="color: red">*</span></label>
                                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Address line 2" />
                                                                    </div>
                                                                </div>


                                                            </div>
                                                        </fieldset>


                                                    </div>
                                                </div>
                                            </fieldset>

                                            <fieldset>
                                                <legend>Marital Status and Spouse Details</legend>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Married <span style="color: red">*</span></label>
                                                            <select id="ddlMaarriedStatus" onchange="ShowHideMarried()" class="form-control select2">
                                                                <option value="--Select--">--Select--</option>
                                                                <option value="Yes">Yes</option>
                                                                <option value="No">No</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div id="idSpouseName" class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Spouse Name<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Spouse Name" />
                                                        </div>
                                                    </div>
                                                    <div id="idSpouseGovEmp" class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Is Spouse Government Employee <span style="color: red">*</span></label>
                                                            <select id="ddlSpouseGovEmp" onchange="ShowHideGovEmp()" class="form-control select2">
                                                                <option value="--Select--">--Select--</option>
                                                                <option value="Yes">Yes</option>
                                                                <option value="No">No</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div id="idSpouseDept" class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Spouse Department Name<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Spouse Department Name" />
                                                        </div>
                                                    </div>
                                                    <div id="idSpouseOfcAdd" class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Office Address<span style="color: red">*</span></label>
                                                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Office Address" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>

                                            <fieldset>
                                                <legend>Education Qualification</legend>
                                                <div class="row">
                                                    <div class="col-md-2">
                                                        <div class="form-group">
                                                            <label>Qualification<span style="color: red">*</span></label>
                                                            <select id="Education" class="form-control select2">
                                                                <option value="----">--Select--</option>
                                                                <option value="BALLB">BALLB</option>
                                                                <option value="BachelorOfArts">Bachelor of Arts</option>
                                                                <option value="BachelorOfCommerce">Bachelor of Commerce</option>
                                                                <option value="Architecture">Architecture</option>
                                                                <option value="BCA">BCA</option>
                                                                <option value="ComputerScience">Computer Science</option>
                                                                <option value="Education">Education</option>
                                                                <option value="BBA">BBA</option>
                                                                <option value="MBBS">MBBS</option>
                                                                <option value="BachelorOfScience">Bachelor of Science</option>
                                                                <option value="BDesInDesign">BDes in Design</option>
                                                                <option value="Biotechnology">Biotechnology</option>
                                                                <option value="BScIT">BSc IT</option>
                                                                <option value="Engineering">Engineering</option>
                                                                <option value="Humanities">Humanities</option>
                                                                <option value="Management">Management</option>
                                                                <option value="Arts">Arts</option>
                                                                <option value="Aviation">Aviation</option>
                                                                <option value="Bsc">Bsc</option>
                                                                <option value="ChemicalEngineering">Chemical Engineering</option>
                                                                <option value="CivilEngineering">Civil Engineering</option>
                                                                <option value="Economics">Economics</option>
                                                                <option value="ElectricalEngineering">Electrical Engineering</option>
                                                                <option value="FashionDesigning">Fashion designing</option>
                                                                <option value="MBA">MBA</option>
                                                                <option value="EducationLaw">Education Law</option>
                                                                <option value="HospitalAdministration">Hospital Administration</option>
                                                                <option value="MasterOfScienceBiochemistry">Master of Science Biochemistry</option>
                                                                <option value="MBAFinance">MBA Finance</option>
                                                                <option value="MD">MD</option>
                                                                <option value="MassCommunications">Mass communications</option>
                                                                <option value="MastersOfPhysician">Masters Of Physician</option>
                                                                <option value="MCA">MCA</option>
                                                                <option value="PGDiplomaInEntrepreneurshipDevelopment">PG Diploma in Entrepreneurship Development</option>
                                                                <option value="ExecutivePGProgramInManagement">Executive PG program in Management</option>
                                                                <option value="HumanResourceManagement">Human Resource Management</option>
                                                                <option value="InternationalBusiness">International business</option>
                                                                <option value="MasterOfArts">Master of Arts</option>
                                                                <option value="MasterOfDataScience">Master of Data Science</option>
                                                                <option value="MBABusinessAnalytics">MBA Business Analytics</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <div class="form-group">
                                                            <label>Subject<span style="color: red">*</span></label>
                                                            <input id="Subject" value="" name="ename" type="text" class="form-control" placeholder="Enter Subject" />
                                                        </div>
                                                    </div>
                                                    <%--      <div class="col-md-3">
                            <div class="form-group">
                                <label>Degree / Diploma<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                       
                                </select>
                            </div>
                        </div>--%>
                                                    <div class="col-md-2">
                                                        <div class="form-group">
                                                            <label>Board / Univercity name<span style="color: red">*</span></label>
                                                            <select id="Board" class="form-control select2">
                                                                <option value="----">--Select--</option>
                                                                <option value="MP Board">MP Board</option>
                                                                <option value="CBSC Board">CBSC Board</option>
                                                                <option value="ICSC Board">ICSC Board</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <div class="form-group">
                                                            <label>Passing Year <span style="color: red">*</span></label>
                                                            <input id="PassingYear" name="ename" type="date" class="form-control" autocomplete="off" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <div class="form-group">
                                                            <label>Grade / Percentage<span style="color: red">*</span></label>
                                                            <input id="Grade" value="" name="ename" type="text" class="form-control" placeholder="Enter Grade/Percentage" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2 mt-4">
                                                        <div class="form-group">
                                                            <input type="button" id="btnAdd" class="btn btn-info btn-rounded" value="ADD" onclick="AddRow();" />

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <table class="table" id="tableAdd" style="visibility: hidden;">
                                                            <tr>
                                                                <th>Sr.</th>
                                                                <th>Qualification</th>
                                                                <th>Subject</th>
                                                                <th>Board/University</th>
                                                                <th>Passing Year</th>
                                                                <th>Grade/Percentage</th>
                                                                <th>Action</th>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </div>
                                                <hr />
                                                <div class="row justify-content-center">
                                                    <div class="col-md-4 text-center">
                                                        <button type="button" class="Alert-Confirmation btn btn-success btn-rounded ">Save & Next</button>
                                                        <a runat="server" id="clearfirst" href="EmployeeRegistration.aspx" class="btn btn-danger btn-rounded">Clear</a>
                                                    </div>
                                                </div>
                                            </fieldset>

                                        </div>
                                    </div>
                                    <div id="navpills-2" class="tab-pane">

                                        <fieldset id="idFirstAppointment">
                                            <legend>First Appointment Details</legend>
                                            <div class="row">


                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>OIS Type <span style="color: red">*</span></label>
                                                        <select id="ddlRegistrationType" class="form-control select2">
                                                            <option value="0">--Select--</option>
                                                            <option value="2">Office</option>
                                                            <option value="3">Institute</option>
                                                            <option value="1">School</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3" id="Div_officetype1">
                                                    <div class="form-group">
                                                        <label>Office Type<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="----">--Select--</option>
                                                            <option value="PrincipalSecretary">Principal Secretary</option>
                                                            <option value="Secretary">Secretary</option>
                                                            <option value="DeputySecretary">Deputy Secretary</option>
                                                            <option value="CPI">CPI</option>
                                                            <option value="CRSK">CRSK</option>
                                                            <option value="DPI">DPI</option>
                                                            <option value="Collector">Collector</option>
                                                            <option value="CEOZP">CEO, ZP</option>
                                                            <option value="JointDirector">Joint Director</option>
                                                            <option value="DEO">DEO</option>
                                                            <option value="DPC">DPC</option>
                                                            <option value="BEO">BEO</option>
                                                            <option value="BRC">BRC</option>
                                                        </select>

                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <label class="font-bold">First Appointment Division <span style="color: red">*</span></label>
                                                    <select name="ctl00$ContentBody$ctl01" class="form-control select2">
                                                        <option value="--Select--">--Select--</option>
                                                        <option value="Bhopal">Bhopal</option>
                                                        <option value="Gwalior">Gwalior</option>
                                                        <option value="Narmadapuram">Narmadapuram</option>
                                                        <option value="Indore">Indore</option>
                                                        <option value="Jabalpur">Jabalpur</option>
                                                        <option value="Rewa">Rewa</option>
                                                        <option value="Sagar">Sagar</option>
                                                        <option value="Shahdol">Shahdol</option>
                                                        <option value="Ujjain">Ujjain</option>

                                                    </select>
                                                </div>
                                                <div class="col-md-3">
                                                    <label class="font-bold">First Appointment District<span style="color: red">*</span></label>
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
                                                    <div class="form-group">
                                                        <label>First Appointment Block<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="--Select--">--Select--</option>
                                                            <option value="Agar">Agar</option>
                                                            <option value="Barod">Barod</option>
                                                            <option value="Nalkheda">Nalkheda</option>
                                                            <option value="Susner">Susner</option>
                                                            <option value="Alirajpur">Alirajpur</option>
                                                            <option value="Bhabra">Bhabra</option>
                                                            <option value="Katthiwara">Katthiwara</option>
                                                            <option value="Sondwa">Sondwa</option>
                                                            <option value="Udaygarh">Udaygarh</option>
                                                            <option value="Jobat">Jobat</option>
                                                            <option value="Anuppur">Anuppur</option>
                                                            <option value="Jaithari">Jaithari</option>
                                                            <option value="Kotma">Kotma</option>

                                                        </select>
                                                    </div>
                                                </div>
                                                <%--     <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>DDO Code & Name<span style="color: red">*</span></label>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter DDO Code & Name" />
                                                    </div>
                                                </div>--%>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>DDO / Sankul <span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="--Select--">--Select--</option>
                                                            <option value="--Select--">Geetanjali Public School</option>
                                                            <option value="--Select--">MVM School</option>
                                                            <option value="--Select--">Uma Vidhaya Niketan HS School</option>
                                                            <option value="--Select--">Manvendra Public School</option>
                                                            <option value="--Select--">Rose Marry Public School</option>
                                                            <%--  <option value="Bhopal">Grain Advance</option>
<option value="Bhopal">Festival Advance</option>--%>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Office/Institute/School Code & Name<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="--Select--">--Select--</option>
                                                            <option value="--Select--">GB Convent School</option>
                                                            <option value="--Select--">Reem Higher Secondary School</option>
                                                            <option value="--Select--">Geetanjali Public School</option>
                                                            <option value="--Select--">Uma Vidhaya Niketan HS School</option>
                                                            <option value="--Select--">Manvendra Public School</option>
                                                            <option value="--Select--">Rose Marry Public School</option>
                                                            <%--  <option value="Bhopal">Grain Advance</option>
<option value="Bhopal">Festival Advance</option>--%>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Office/Institute/School Address of first Posting<span style="color: red">*</span></label>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Address" />
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>First Appointment Order No.<span style="color: red">*</span></label>
                                                        <input name="ename" type="text" placeholder="Enter Order No." class="form-control" autocomplete="off" />
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>First Appointment Order Date<span style="color: red">*</span></label>
                                                        <input name="ename" type="date" class="form-control" autocomplete="off" />
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>First Appointment Department <span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="----">--Select--</option>
                                                            <option value="----">DPI</option>
                                                            <option value="----">Department of Education</option>
                                                            <option value="----">Tribal Welfare Department</option>
                                                            <option value="----">Local Body</option>
                                                            <option value="----">Other State Govt Managed</option>
                                                            <option value="----">Other Department</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Employee’s Designation Type<span style="color: red">*</span></label>
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
                                                    <div class="form-group">
                                                        <label>First Appointment Designation<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="----">--Select--</option>
                                                            <option value="Commissioner">Commissioner</option>
                                                            <option value="Director">Director</option>
                                                            <option value="AdditionalDirector">Additional Director</option>
                                                            <option value="JointDirector">Joint Director</option>
                                                            <option value="DeputyDirector">Deputy Director</option>
                                                            <option value="AsstDirector">Asstt Director</option>
                                                            <option value="RegionalLibrarian">Regional Librarian</option>
                                                            <option value="PlanningOfficer">Planning Officer</option>
                                                            <option value="DirectorELTI">Director (ELTI)</option>
                                                            <option value="DirectorSISE">Director (SISE)</option>
                                                            <option value="PrincipalPGBT">Principal (PGBT)</option>
                                                            <option value="PrincipalDIET">Principal (DIET)</option>
                                                            <option value="PrincipalHSS">Principal HSS</option>
                                                            <option value="PrincipalHS">Principal HS</option>
                                                            <option value="Lecturer">Lecturer</option>
                                                            <option value="HMMS">HM(MS)</option>
                                                            <option value="TeacherUDT">Teacher (UDT)</option>
                                                            <option value="MusicTeacher">Music Teacher</option>
                                                            <option value="TablaTeacher">Tabla Teacher</option>
                                                            <option value="CraftTeacher">Craft Teacher</option>
                                                            <option value="HMPS">HM(PS)</option>
                                                            <option value="AsstTeacherLDT">Asstt Teacher(LDT)</option>
                                                            <option value="VaristhaAdhyapak">Varistha Adhyapak</option>
                                                            <option value="Adhyapak">Adhyapak</option>
                                                            <option value="SahayakAdhyapak">Sahayak Adhyapak</option>
                                                            <option value="ShikshaKarmi1">Shiksha Karmi-1</option>
                                                            <option value="ShikshaKarmi2">Shiksha Karmi-2</option>
                                                            <option value="ShikshaKarmi3">Shiksha Karmi-3</option>
                                                            <option value="SamvidaShikshak1">Samvida Shikshak-1</option>
                                                            <option value="SamvidaShikshak2">Samvida Shikshak-2</option>
                                                            <option value="SamvidaShikshak3">Samvida Shikshak-3</option>
                                                        </select>
                                                    </div>
                                                </div>



                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Appointment Joining Date<span style="color: red">*</span></label>
                                                        <input name="ename" type="date" class="form-control" autocomplete="off" />
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Panal Name<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="--Select--">--Select--</option>
                                                            <option value="SSS-1">SSS-1</option>
                                                            <option value="SSS-2">SSS-2</option>
                                                            <option value="SSS-3">SSS-3</option>
                                                            <option value="PR-HSS">PR-HSS</option>
                                                            <option value="PR-HS">PR-HS</option>
                                                            <option value="HM-MS">HM-MS</option>
                                                            <option value="HM-PS">HM-PS</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Subject<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="--Select--">--Select--</option>
                                                            <option value="--Select--">English</option>
                                                            <option value="--Select--">Hindi</option>
                                                            <option value="--Select--">Science</option>
                                                            <option value="--Select--">Maths</option>
                                                            <option value="--Select--">Chemistry</option>
                                                            <option value="--Select--">Physics</option>
                                                            <option value="--Select--">Bio</option>
                                                            <option value="--Select--">Sanskrit</option>
                                                            <%--  <option value="Bhopal">Grain Advance</option>
<option value="Bhopal">Festival Advance</option>--%>
                                                        </select>
                                                    </div>
                                                </div>


                                                <div class="col-md-3 ">
                                                    <div class="form-group">
                                                        <label>Samvilian Order No.<span style="color: red">*</span></label>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Samvilian Order No" />
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Samvilian Order Date<span style="color: red">*</span></label>
                                                        <input name="ename" type="date" class="form-control" autocomplete="off" />
                                                    </div>
                                                </div>
                                                <%--   <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Employee Retirement Date<span style="color: red">*</span></label>
                                                        <input name="ename" placeholder="Retirement Date" readonly="readonly" type="text" id="retirementDateTextbox" class="form-control" autocomplete="off" />
                                                    </div>
                                                </div>--%>
                                                <%--  <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Whether working/Posted in other department on Deputation/transfer <span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="--Select--">--Select--</option>
                                                            <option value="Bhopal">Yes</option>
                                                            <option value="Bhopal">No</option>
                                                        </select>
                                                    </div>
                                                </div>--%>

                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>
                                                            Working in other Department/<br />
                                                            Organization on Deputation Transfer <span style="color: red">*</span></label>
                                                        <select id="ddlWorkingDept" onchange="ShowHideWorkingDept()" class="form-control select2">
                                                            <option value="Select">--Select--</option>
                                                            <option value="Yes">Yes</option>
                                                            <option value="No">No</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div id="idDeptName" class="col-md-3 mt-3">
                                                    <div class="form-group">
                                                        <label>Deputation Department Name<span style="color: red">*</span></label>
                                                        <input name="ename" type="text" placeholder="Enter Department Name" class="form-control" autocomplete="off" />
                                                    </div>
                                                </div>
                                                <%--   <div class="col-md-3 mt-3">
                                                    <div class="form-group">
                                                        <label>Payroll Office Type<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="----">--Select--</option>
                                                            <option value="PrincipalSecretary">Principal Secretary</option>
                                                            <option value="Secretary">Secretary</option>
                                                            <option value="DeputySecretary">Deputy Secretary</option>
                                                            <option value="CPI">CPI</option>
                                                            <option value="CRSK">CRSK</option>
                                                            <option value="DPI">DPI</option>
                                                            <option value="Collector">Collector</option>
                                                            <option value="CEOZP">CEO, ZP</option>
                                                            <option value="JointDirector">Joint Director</option>
                                                            <option value="DEO">DEO</option>
                                                            <option value="DPC">DPC</option>
                                                            <option value="BEO">BEO</option>
                                                            <option value="BRC">BRC</option>
                                                        </select>

                                                    </div>
                                                </div>--%>

                                                <div class="col-md-3 ">
                                                    <div class="form-group">
                                                        <label>IS Regular </label>
                                                        <select id="ddlIsRegular" class="form-control select2">
                                                            <option value="Select">--Select--</option>
                                                            <option value="Yes">Yes</option>
                                                            <option value="No">No</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="col-md-3 ">
                                                    <div class="form-group">
                                                        <label>Increment Month <span style="color: red;">*</span></label>
                                                        <select id="ddlIncrementMonth" class="form-control select2">
                                                            <option value="Select">--Select--</option>
                                                            <option value="January">January</option>
                                                            <option value="July">July</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Provision Period From Month<span style="color: red">*</span></label>
                                                        <input name="ename" id="From1" type="date" class="form-control" autocomplete="off" onchange="calculateAge()" />
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Provision Period To Month <span style="color: red">*</span></label>
                                                        <input name="ename" id="To1" type="date" class="form-control" autocomplete="off" onchange="calculateAge()" />
                                                    </div>
                                                </div>

                                                <div class="col-md-3 ">
                                                    <div class="form-group">
                                                        <label>IF Proviosion Extend </label>
                                                        <select id="ddlProviosionExtend1" class="form-control select2">
                                                            <option value="Select">--Select--</option>
                                                            <option value="Yes">Yes</option>
                                                            <option value="No">No</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="col-md-3 ">
                                                    <div class="form-group">
                                                        <label>Proviosion Type </label>
                                                        <select id="ddlProviosionType1" class="form-control select2">
                                                            <option value="Select">--Select--</option>
                                                            <option value="Yes">Regular Employee</option>
                                                            <option value="No">Separation</option>
                                                        </select>
                                                    </div>
                                                </div>


                                                <div class="col-md-3 ">
                                                    <div class="form-group">
                                                        <label>Type of Post<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="----">--Select--</option>
                                                            <option value="RegularPermanent">Regular/Permanent</option>
                                                            <option value="FixedEmployee">Fixed Employee</option>
                                                            <option value="ContingentEmployee">Contingent Employee</option>
                                                            <option value="SamvidaEmployee">Samvida Employee</option>
                                                            <option value="ThekaShramik">Theka Shramik</option>
                                                            <option value="OutsourceEmployee">Outsource Employee</option>
                                                            <option value="DeputationEmployee">Deputation Employee</option>
                                                            <option value="ContractualEmployee">Contractual Employee</option>
                                                            <option value="DailyWageEmployee">Daily Wage Employee</option>
                                                            <option value="DailyWagesFederation">Daily Wages Federation</option>
                                                            <option value="JobRateEmployee">Job Rate Employee</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Class<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="----">--Select--</option>
                                                            <option value="----">Class 1</option>
                                                            <option value="----">Class 2</option>
                                                            <option value="----">Class 3</option>
                                                            <option value="----">Class 4</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3 ">
                                                    <div class="form-group">
                                                        <label>Pay Commission<span style="color: red">*</span></label>
                                                        <select onchange="ShowHidePayCommissionF()" id="PayCommissionF" class="form-control select2">
                                                            <option value="----">--Select--</option>
                                                            <option value="FourthPay">Fourth Pay Commission</option>
                                                            <option value="SixthPay">Sixth Pay Commission</option>
                                                            <option value="SeventhPay">Seventh Pay Commission</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div id="LevelF" class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Level<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="----">--Select--</option>
                                                            <option value="Level-1">Level-1</option>
                                                            <option value="Level-2">Level-2</option>
                                                            <option value="Level-3">Level-3</option>
                                                            <option value="Level-4">Level-4</option>
                                                            <option value="Level-5">Level-5</option>
                                                            <option value="Level-6">Level-6</option>
                                                            <option value="Level-7">Level-7</option>
                                                            <option value="Level-8">Level-8</option>
                                                            <option value="Level-9">Level-9</option>
                                                            <option value="Level-10">Level-10</option>
                                                            <option value="Level-11">Level-11</option>
                                                            <option value="Level-12">Level-12</option>
                                                            <option value="Level-13">Level-13</option>
                                                            <option value="Level-14">Level-14</option>
                                                            <option value="Level-15">Level-15</option>
                                                            <option value="Level-16">Level-16</option>
                                                            <option value="Level-17">Level-17</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div id="PayScaleF" class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Pay scale<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="----">--Select--</option>
                                                            <option value="37400-67000">37400-67000</option>
                                                            <option value="15600-39100">15600-39100</option>
                                                            <option value="9300-34800">9300-34800</option>
                                                            <option value="5200-20200">5200-20200</option>
                                                            <option value="4440-7440">4440-7440</option>
                                                            <option value="205400-224400">205400-224400</option>
                                                            <option value="182200-224100">182200-224100</option>
                                                            <option value="79900-211700">79900-211700</option>
                                                            <option value="36200-114800">36200-114800</option>
                                                            <option value="28700-91300">28700-91300</option>
                                                            <option value="32800-103600">32800-103600</option>
                                                            <option value="19500-62000">19500-62000</option>
                                                            <option value="18000-59000">18000-59000</option>
                                                            <option value="18000-56900">18000-56900</option>
                                                            <option value="16100-50900">16100-50900</option>
                                                            <option value="15500-49000">15500-49000</option>
                                                            <option value="67300-206900">67300-206900</option>
                                                            <option value="56100-177500">56100-177500</option>
                                                            <option value="25300-80500">25300-80500</option>
                                                            <option value="4000-7000">4000-7000</option>
                                                            <option value="4500-7500">4500-7500</option>
                                                            <option value="5000-8000">5000-8000</option>
                                                            <option value="188200-224100">188200-224100</option>
                                                            <option value="42700-135100">42700-135100</option>
                                                            <option value="144200-218200">144200-218200</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div id="GradePayF" class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Grade Pay<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="----">--Select--</option>
                                                            <option value="8700">8700</option>
                                                            <option value="8900">8900</option>
                                                            <option value="10000">10000</option>
                                                            <option value="7600">7600</option>
                                                            <option value="5400">5400</option>
                                                            <option value="6600">6600</option>
                                                            <option value="3600">3600</option>
                                                            <option value="3200">3200</option>
                                                            <option value="4200">4200</option>
                                                            <option value="4800">4800</option>
                                                            <option value="2800">2800</option>
                                                            <option value="2400">2400</option>
                                                            <option value="2100">2100</option>
                                                            <option value="1900">1900</option>
                                                            <option value="1800">1800</option>
                                                            <option value="1300">1300</option>
                                                            <option value="1400">1400</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div id="BasicPayF" class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Basic Pay<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="----">--Select--</option>
                                                            <option value="16000">16000</option>
                                                            <option value="16500">16500</option>
                                                            <option value="17000">17000</option>
                                                            <option value="17500">17500</option>
                                                            <option value="19200">19200</option>
                                                            <option value="19800">19800</option>
                                                            <option value="20400">20400</option>
                                                            <option value="21000">21000</option>
                                                            <option value="21600">21600</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div id="txtBasicPayF" class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Basic Pay<span style="color: red">*</span></label>
                                                        <input type="text" placeholder="Enter Basic Pay" class="form-control" name="name" value="" />
                                                    </div>
                                                </div>

                                                <%--        <div class="col-3 mt-3">
                                                    <div class="form-group">
                                                        <label>Order Letter <span style="color: red">*</span></label>
                                                        <input type="file" class="form-control">
                                                    </div>
                                                </div>--%>
                                            </div>

                                        </fieldset>
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <input type="checkbox" name="name" value="" />
                                                    <label>Current Appointment Same as First Appointment</label>

                                                </div>
                                                <div class="col-md-12">

                                                    <p style="color: red;"><b>नोट:- यदि कर्मचारी की पूर्व एवं वर्तमान नियुक्ति विवरण समान है, तो चेक बॉक्‍स पर क्लिक करें।     </b></p>

                                                </div>
                                            </div>
                                        </fieldset>
                                        <fieldset id="idCurrentAppointment">
                                            <legend>Current Appointment Details</legend>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>OIS Type <span style="color: red">*</span></label>
                                                        <select id="DropDownList1" class="form-control select2">
                                                            <option value="0">--Select--</option>
                                                            <option value="2">Office</option>
                                                            <option value="3">Institute</option>
                                                            <option value="1">School</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3" id="OffiiceType">
                                                    <div class="form-group">
                                                        <label>Office Type<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="----">--Select--</option>
                                                            <option value="PrincipalSecretary">Principal Secretary</option>
                                                            <option value="Secretary">Secretary</option>
                                                            <option value="DeputySecretary">Deputy Secretary</option>
                                                            <option value="CPI">CPI</option>
                                                            <option value="CRSK">CRSK</option>
                                                            <option value="DPI">DPI</option>
                                                            <option value="Collector">Collector</option>
                                                            <option value="CEOZP">CEO, ZP</option>
                                                            <option value="JointDirector">Joint Director</option>
                                                            <option value="DEO">DEO</option>
                                                            <option value="DPC">DPC</option>
                                                            <option value="BEO">BEO</option>
                                                            <option value="BRC">BRC</option>
                                                        </select>

                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <label class="font-bold">Current Appointment Division <span style="color: red">*</span></label>
                                                    <select name="ctl00$ContentBody$ctl01" class="form-control select2">
                                                        <option value="--Select--">--Select--</option>
                                                        <option value="Bhopal">Bhopal</option>
                                                        <option value="Gwalior">Gwalior</option>
                                                        <option value="Narmadapuram">Narmadapuram</option>
                                                        <option value="Indore">Indore</option>
                                                        <option value="Jabalpur">Jabalpur</option>
                                                        <option value="Rewa">Rewa</option>
                                                        <option value="Sagar">Sagar</option>
                                                        <option value="Shahdol">Shahdol</option>
                                                        <option value="Ujjain">Ujjain</option>

                                                    </select>
                                                </div>
                                                <div class="col-md-3">
                                                    <label class="font-bold">Current Appointment District<span style="color: red">*</span></label>
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
                                                    <div class="form-group">
                                                        <label>Current Appointment Block<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="--Select--">--Select--</option>
                                                            <option value="Agar">Agar</option>
                                                            <option value="Barod">Barod</option>
                                                            <option value="Nalkheda">Nalkheda</option>
                                                            <option value="Susner">Susner</option>
                                                            <option value="Alirajpur">Alirajpur</option>
                                                            <option value="Bhabra">Bhabra</option>
                                                            <option value="Katthiwara">Katthiwara</option>
                                                            <option value="Sondwa">Sondwa</option>
                                                            <option value="Udaygarh">Udaygarh</option>
                                                            <option value="Jobat">Jobat</option>
                                                            <option value="Anuppur">Anuppur</option>
                                                            <option value="Jaithari">Jaithari</option>
                                                            <option value="Kotma">Kotma</option>

                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>DDO / Sankul<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="--Select--">--Select--</option>
                                                            <option value="--Select--">Geetanjali Public School</option>
                                                            <option value="--Select--">MVM School</option>
                                                            <option value="--Select--">Uma Vidhaya Niketan HS School</option>
                                                            <option value="--Select--">Manvendra Public School</option>
                                                            <option value="--Select--">Rose Marry Public School</option>
                                                            <%--  <option value="Bhopal">Grain Advance</option>
<option value="Bhopal">Festival Advance</option>--%>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Office/Institute/School Code & Name<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="--Select--">--Select--</option>
                                                            <option value="--Select--">GB Convent School</option>
                                                            <option value="--Select--">Reem Higher Secondary School</option>
                                                            <option value="--Select--">Geetanjali Public School</option>
                                                            <option value="--Select--">Uma Vidhaya Niketan HS School</option>
                                                            <option value="--Select--">Manvendra Public School</option>
                                                            <option value="--Select--">Rose Marry Public School</option>
                                                            <%--  <option value="Bhopal">Grain Advance</option>
<option value="Bhopal">Festival Advance</option>--%>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Office/Institute/School Address of Posting<span style="color: red">*</span></label>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Address" />
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Current Appointment Order No.<span style="color: red">*</span></label>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Order No." />
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Current Appointment Order Date<span style="color: red">*</span></label>
                                                        <input name="ename" type="date" class="form-control" autocomplete="off" />
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Current Appointment Department <span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="----">--Select--</option>
                                                            <option value="----">DPI</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Employee’s Designation Type<span style="color: red">*</span></label>
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
                                                    <div class="form-group">
                                                        <label>Current Appointment Designation<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="----">--Select--</option>
                                                            <option value="Commissioner">Commissioner</option>
                                                            <option value="Director">Director</option>
                                                            <option value="AdditionalDirector">Additional Director</option>
                                                            <option value="JointDirector">Joint Director</option>
                                                            <option value="DeputyDirector">Deputy Director</option>
                                                            <option value="AsstDirector">Asstt Director</option>
                                                            <option value="RegionalLibrarian">Regional Librarian</option>
                                                            <option value="PlanningOfficer">Planning Officer</option>
                                                            <option value="DirectorELTI">Director (ELTI)</option>
                                                            <option value="DirectorSISE">Director (SISE)</option>
                                                            <option value="PrincipalPGBT">Principal (PGBT)</option>
                                                            <option value="PrincipalDIET">Principal (DIET)</option>
                                                            <option value="PrincipalHSS">Principal HSS</option>
                                                            <option value="PrincipalHS">Principal HS</option>
                                                            <option value="Lecturer">Lecturer</option>
                                                            <option value="HMMS">HM(MS)</option>
                                                            <option value="TeacherUDT">Teacher (UDT)</option>
                                                            <option value="MusicTeacher">Music Teacher</option>
                                                            <option value="TablaTeacher">Tabla Teacher</option>
                                                            <option value="CraftTeacher">Craft Teacher</option>
                                                            <option value="HMPS">HM(PS)</option>
                                                            <option value="AsstTeacherLDT">Asstt Teacher(LDT)</option>
                                                            <option value="VaristhaAdhyapak">Varistha Adhyapak</option>
                                                            <option value="Adhyapak">Adhyapak</option>
                                                            <option value="SahayakAdhyapak">Sahayak Adhyapak</option>
                                                            <option value="ShikshaKarmi1">Shiksha Karmi-1</option>
                                                            <option value="ShikshaKarmi2">Shiksha Karmi-2</option>
                                                            <option value="ShikshaKarmi3">Shiksha Karmi-3</option>
                                                            <option value="SamvidaShikshak1">Samvida Shikshak-1</option>
                                                            <option value="SamvidaShikshak2">Samvida Shikshak-2</option>
                                                            <option value="SamvidaShikshak3">Samvida Shikshak-3</option>
                                                        </select>
                                                    </div>
                                                </div>



                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Current Appointment Joining Date<span style="color: red">*</span></label>
                                                        <input name="ename" type="date" class="form-control" autocomplete="off" />
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Panal Name<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="--Select--">--Select--</option>
                                                            <option value="SSS-1">SSS-1</option>
                                                            <option value="SSS-2">SSS-2</option>
                                                            <option value="SSS-3">SSS-3</option>
                                                            <option value="PR-HSS">PR-HSS</option>
                                                            <option value="PR-HS">PR-HS</option>
                                                            <option value="HM-MS">HM-MS</option>
                                                            <option value="HM-PS">HM-PS</option>
                                                        </select>
                                                    </div>
                                                </div>



                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Subject<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="--Select--">--Select--</option>
                                                            <option value="--Select--">English</option>
                                                            <option value="--Select--">Hindi</option>
                                                            <option value="--Select--">Science</option>
                                                            <option value="--Select--">Maths</option>
                                                            <option value="--Select--">Chemistry</option>
                                                            <option value="--Select--">Physics</option>
                                                            <option value="--Select--">Bio</option>
                                                            <option value="--Select--">Sanskrit</option>
                                                            <%--  <option value="Bhopal">Grain Advance</option>
<option value="Bhopal">Festival Advance</option>--%>
                                                        </select>
                                                    </div>
                                                </div>




                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Samvilian Order No.<span style="color: red">*</span></label>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Samvilian Order No" />
                                                    </div>
                                                </div>
                                                <div class="col-md-3 mt-4">
                                                    <div class="form-group">
                                                        <label>Samvilian Order Date<span style="color: red">*</span></label>
                                                        <input name="ename" type="date" class="form-control" autocomplete="off" />
                                                    </div>
                                                </div>
                                                <div class="col-md-3 mt-3">
                                                    <div class="form-group">
                                                        <label>Employee Retirement Date<span style="color: red">*</span></label>
                                                        <input name="ename" placeholder="Retirement Date" readonly="readonly" type="text" id="retirementDateTextbox1" class="form-control" autocomplete="off" />
                                                    </div>
                                                </div>
                                                <%--  <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Whether working/Posted in other department on Deputation/transfer <span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="--Select--">--Select--</option>
                                                            <option value="Bhopal">Yes</option>
                                                            <option value="Bhopal">No</option>
                                                        </select>
                                                    </div>
                                                </div>--%>

                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>
                                                            Working in other Department/<br />
                                                            Organization on Deputation Transfer <span style="color: red">*</span></label>
                                                        <select id="ddlCurWorkingDept" onchange="ShowHideCurWorkingDept()" class="form-control select2">
                                                            <option value="Select">--Select--</option>
                                                            <option value="Yes">Yes</option>
                                                            <option value="No">No</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div id="idCurDeptName" class="col-md-3 mt-3">
                                                    <div class="form-group">
                                                        <label>Deputation Department Name<span style="color: red">*</span></label>
                                                        <input name="ename" type="text" placeholder="Enter Department Name" class="form-control" autocomplete="off" />
                                                    </div>
                                                </div>
                                                <%--          <div class="col-md-3 mt-3">
                                                    <div class="form-group">
                                                        <label>Payroll Office Type<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="----">--Select--</option>
                                                            <option value="PrincipalSecretary">Principal Secretary</option>
                                                            <option value="Secretary">Secretary</option>
                                                            <option value="DeputySecretary">Deputy Secretary</option>
                                                            <option value="CPI">CPI</option>
                                                            <option value="CRSK">CRSK</option>
                                                            <option value="DPI">DPI</option>
                                                            <option value="Collector">Collector</option>
                                                            <option value="CEOZP">CEO, ZP</option>
                                                            <option value="JointDirector">Joint Director</option>
                                                            <option value="DEO">DEO</option>
                                                            <option value="DPC">DPC</option>
                                                            <option value="BEO">BEO</option>
                                                            <option value="BRC">BRC</option>
                                                        </select>

                                                    </div>
                                                </div>--%>
                                                <div class="col-md-3 ">
                                                    <div class="form-group">
                                                        <label>IS Regular </label>
                                                        <select id="ddlIsRegular1" class="form-control select2">
                                                            <option value="Select">--Select--</option>
                                                            <option value="Yes">Yes</option>
                                                            <option value="No">No</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="col-md-3 ">
                                                    <div class="form-group">
                                                        <label>Increment Month <span style="color: red;">*</span></label>
                                                        <select id="ddlIncrementMonth1" class="form-control select2">
                                                            <option value="Select">--Select--</option>
                                                            <option value="January">January</option>
                                                            <option value="July">July</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Provision Period From Month<span style="color: red">*</span></label>
                                                        <input name="ename" id="From" type="date" class="form-control" autocomplete="off" onchange="calculateAge()" />
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Provision Period To Month <span style="color: red">*</span></label>
                                                        <input name="ename" id="To" type="date" class="form-control" autocomplete="off" onchange="calculateAge()" />
                                                    </div>
                                                </div>

                                                <div class="col-md-3 ">
                                                    <div class="form-group">
                                                        <label>IF Proviosion Extend </label>
                                                        <select id="ddlProviosionExtend" class="form-control select2">
                                                            <option value="Select">--Select--</option>
                                                            <option value="Yes">Yes</option>
                                                            <option value="No">No</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="col-md-3 ">
                                                    <div class="form-group">
                                                        <label>Proviosion Type </label>
                                                        <select id="ddlProviosionType" class="form-control select2">
                                                            <option value="Select">--Select--</option>
                                                            <option value="Yes">Regular Employee</option>
                                                            <option value="No">Separation</option>
                                                        </select>
                                                    </div>
                                                </div>




                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Type of Post<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="----">--Select--</option>
                                                            <option value="RegularPermanent">Regular/Permanent</option>
                                                            <option value="FixedEmployee">Fixed Employee</option>
                                                            <option value="ContingentEmployee">Contingent Employee</option>
                                                            <option value="SamvidaEmployee">Samvida Employee</option>
                                                            <option value="ThekaShramik">Theka Shramik</option>
                                                            <option value="OutsourceEmployee">Outsource Employee</option>
                                                            <option value="DeputationEmployee">Deputation Employee</option>
                                                            <option value="ContractualEmployee">Contractual Employee</option>
                                                            <option value="DailyWageEmployee">Daily Wage Employee</option>
                                                            <option value="DailyWagesFederation">Daily Wages Federation</option>
                                                            <option value="JobRateEmployee">Job Rate Employee</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Class<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="----">--Select--</option>
                                                            <option value="----">Class 1</option>
                                                            <option value="----">Class 2</option>
                                                            <option value="----">Class 3</option>
                                                            <option value="----">Class 4</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Pay Commission<span style="color: red">*</span></label>
                                                        <select onchange="ShowHidePayCommissionC()" id="PayCommissionC" class="form-control select2">
                                                            <option value="----">--Select--</option>
                                                            <option value="FourthPay">Fourth Pay Commission</option>
                                                            <option value="SixthPay">Sixth Pay Commission</option>
                                                            <option value="SeventhPay">Seventh Pay Commission</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div id="LevelC" class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Level<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="----">--Select--</option>
                                                            <option value="Level-1">Level-1</option>
                                                            <option value="Level-2">Level-2</option>
                                                            <option value="Level-3">Level-3</option>
                                                            <option value="Level-4">Level-4</option>
                                                            <option value="Level-5">Level-5</option>
                                                            <option value="Level-6">Level-6</option>
                                                            <option value="Level-7">Level-7</option>
                                                            <option value="Level-8">Level-8</option>
                                                            <option value="Level-9">Level-9</option>
                                                            <option value="Level-10">Level-10</option>
                                                            <option value="Level-11">Level-11</option>
                                                            <option value="Level-12">Level-12</option>
                                                            <option value="Level-13">Level-13</option>
                                                            <option value="Level-14">Level-14</option>
                                                            <option value="Level-15">Level-15</option>
                                                            <option value="Level-16">Level-16</option>
                                                            <option value="Level-17">Level-17</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div id="PayScaleC" class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Pay scale<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="----">--Select--</option>
                                                            <option value="37400-67000">37400-67000</option>
                                                            <option value="15600-39100">15600-39100</option>
                                                            <option value="9300-34800">9300-34800</option>
                                                            <option value="5200-20200">5200-20200</option>
                                                            <option value="4440-7440">4440-7440</option>
                                                            <option value="205400-224400">205400-224400</option>
                                                            <option value="182200-224100">182200-224100</option>
                                                            <option value="79900-211700">79900-211700</option>
                                                            <option value="36200-114800">36200-114800</option>
                                                            <option value="28700-91300">28700-91300</option>
                                                            <option value="32800-103600">32800-103600</option>
                                                            <option value="19500-62000">19500-62000</option>
                                                            <option value="18000-59000">18000-59000</option>
                                                            <option value="18000-56900">18000-56900</option>
                                                            <option value="16100-50900">16100-50900</option>
                                                            <option value="15500-49000">15500-49000</option>
                                                            <option value="67300-206900">67300-206900</option>
                                                            <option value="56100-177500">56100-177500</option>
                                                            <option value="25300-80500">25300-80500</option>
                                                            <option value="4000-7000">4000-7000</option>
                                                            <option value="4500-7500">4500-7500</option>
                                                            <option value="5000-8000">5000-8000</option>
                                                            <option value="188200-224100">188200-224100</option>
                                                            <option value="42700-135100">42700-135100</option>
                                                            <option value="144200-218200">144200-218200</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div id="GradePayC" class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Grade Pay<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="----">--Select--</option>
                                                            <option value="8700">8700</option>
                                                            <option value="8900">8900</option>
                                                            <option value="10000">10000</option>
                                                            <option value="7600">7600</option>
                                                            <option value="5400">5400</option>
                                                            <option value="6600">6600</option>
                                                            <option value="3600">3600</option>
                                                            <option value="3200">3200</option>
                                                            <option value="4200">4200</option>
                                                            <option value="4800">4800</option>
                                                            <option value="2800">2800</option>
                                                            <option value="2400">2400</option>
                                                            <option value="2100">2100</option>
                                                            <option value="1900">1900</option>
                                                            <option value="1800">1800</option>
                                                            <option value="1300">1300</option>
                                                            <option value="1400">1400</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div id="BasicPayC" class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Basic Pay<span style="color: red">*</span></label>
                                                        <select class="form-control select2">
                                                            <option value="----">--Select--</option>
                                                            <option value="16000">16000</option>
                                                            <option value="16500">16500</option>
                                                            <option value="17000">17000</option>
                                                            <option value="17500">17500</option>
                                                            <option value="19200">19200</option>
                                                            <option value="19800">19800</option>
                                                            <option value="20400">20400</option>
                                                            <option value="21000">21000</option>
                                                            <option value="21600">21600</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div id="txtBasicPayC" class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Basic Pay<span style="color: red">*</span></label>
                                                        <input type="text" class="form-control" placeholder="Enter Basic Pay" name="name" value="" />
                                                    </div>
                                                </div>

                                                <%--<div class="col-3 mt-3">
                                                    <div class="form-group">
                                                        <label>Order Letter <span style="color: red">*</span></label>
                                                        <input type="file" class="form-control">
                                                    </div>
                                                </div>--%>
                                            </div>

                                            <div class="row justify-content-center">
                                                <div class="col-md-4 text-center">
                                                    <button type="button" class="Alert-Confirmation btn btn-success btn-rounded ">Save & Next</button>
                                                    <a runat="server" id="A2" href="EmployeeRegistration.aspx" class="btn btn-danger btn-rounded">Clear</a>
                                                </div>
                                            </div>
                                        </fieldset>
                                    </div>
                                    <div id="navpills-3" class="tab-pane">
                                        <fieldset>
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
                                                        <label>DPF No.</label>
                                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter DPF No." />
                                                    </div>
                                                </div>
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
                                                    <button type="button" class="Alert-Confirmation btn btn-success btn-rounded ">Save & Next</button>
                                                    <a runat="server" id="A1" href="EmployeeRegistration.aspx" class="btn btn-danger btn-rounded">Clear</a>
                                                </div>
                                            </div>
                                        </fieldset>


                                    </div>
                                    <div id="navpills-4" class="tab-pane">
                                        <fieldset>
                                            <legend>Document</legend>
                                            <div class="row">

                                                <div>
                                                    <h5 style="font-weight: 500;">Note :<span style="color: red;">Please upload a PDF or JPG file that is less than 700 KB in size.</span></h5>
                                                </div>
                                                <br />
                                                <br />

                                                <div id="DocAppointment" class="col-md-2 mt-1">
                                                    <div class="form-group">
                                                        <label>Upload Appointment Order : </label>
                                                    </div>
                                                </div>

                                                <div id="DocAppointment1" class="col-md-2">

                                                    <input type="file" id="fileInput1" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                                                </div>

                                                <div id="DocAppointment2" class="col-md-2">
                                                    <div class="form-group">
                                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>
                                                        &nbsp| &nbsp
                                                   <a class="Alert-Delete btn-md"><i class="fa fa-trash"></i></a>
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="row">

                                                <div id="DocBirth" class="col-md-2 mt-1">
                                                    <div class="form-group">
                                                        <label>Upload Birth Certificate : </label>
                                                    </div>
                                                </div>

                                                <div id="DocBirth1" class="col-md-2">

                                                    <input type="file" id="fileInput3" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                                                </div>

                                                <div id="DocBirth2" class="col-md-2">
                                                    <div class="form-group">
                                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>
                                                        &nbsp| &nbsp
                                                   <a class="Alert-Delete btn-md"><i class="fa fa-trash"></i></a>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row">

                                                <div id="DocCaste" class="col-md-2 mt-1">
                                                    <div class="form-group">
                                                        <label>Upload Caste Certificate (OBC/ST/SC) : </label>
                                                    </div>
                                                </div>

                                                <div id="DocCaste1" class="col-md-2">

                                                    <input type="file" id="fileInput2" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                                                </div>

                                                <div id="DocCaste2" class="col-md-2">
                                                    <div class="form-group">
                                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>
                                                        &nbsp| &nbsp
                                                       <a class="Alert-Delete btn-md"><i class="fa fa-trash"></i></a>
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="row">

                                                <div id="DocPresentpost" class="col-md-2 mt-1">
                                                    <div class="form-group">
                                                        <label>Upload Present Posting Order : </label>
                                                    </div>
                                                </div>

                                                <div id="DocPresentpost1" class="col-md-2">

                                                    <input type="file" id="fileInput4" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                                                </div>

                                                <div id="DocPresentpost2" class="col-md-2">
                                                    <div class="form-group">
                                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>
                                                        &nbsp| &nbsp
                                                   <a class="Alert-Delete btn-md"><i class="fa fa-trash"></i></a>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row">

                                                <div id="Dochandicapped" class="col-md-2 mt-1">
                                                    <div class="form-group">
                                                        <label>Upload Handicapped Certificate : </label>
                                                    </div>
                                                </div>

                                                <div id="Dochandicapped1" class="col-md-2">

                                                    <input type="file" id="fileInput6" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                                                </div>

                                                <div id="Dochandicapped2" class="col-md-2">
                                                    <div class="form-group">
                                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>
                                                        &nbsp| &nbsp
                                                    <a class="Alert-Delete btn-md"><i class="fa fa-trash"></i></a>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row">

                                                <div id="CriticalIllness" class="col-md-2 mt-1">
                                                    <div class="form-group">
                                                        <label>Upload Critical Illness Certificate : </label>
                                                    </div>
                                                </div>

                                                <div id="CriticalIllness1" class="col-md-2">

                                                    <input type="file" id="fileInput010" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                                                </div>

                                                <div id="CriticalIllness3" class="col-md-2">
                                                    <div class="form-group">
                                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>
                                                        &nbsp| &nbsp
                                                    <a class="Alert-Delete btn-md"><i class="fa fa-trash"></i></a>
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="row">

                                                <div id="DocMarried" class="col-md-2 mt-1">
                                                    <div class="form-group">
                                                        <label>Upload Married Certificate : </label>
                                                    </div>
                                                </div>

                                                <div id="DocMarried1" class="col-md-2">

                                                    <input type="file" id="fileInput5" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                                                </div>

                                                <div id="DocMarried2" class="col-md-2">
                                                    <div class="form-group">
                                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>
                                                        &nbsp| &nbsp
                                                         <a class="Alert-Delete btn-md"><i class="fa fa-trash"></i></a>
                                                    </div>
                                                </div>

                                            </div>
                                        </fieldset>

                                        <fieldset>
                                            <legend>Education Document</legend>
                                            <div class="row">

                                                <div>
                                                    <h5 style="font-weight: 500;">Note :<span style="color: red;">Please upload a PDF or JPG file that is less than 700 KB in size.</span></h5>
                                                </div>
                                                <br />
                                                <br />

                                                <div id="Doc10th" class="col-md-2 mt-1">
                                                    <div class="form-group">
                                                        <label>Upload 10th Marksheet :</label>
                                                    </div>
                                                </div>

                                                <div id="Doc10th1" class="col-md-2">

                                                    <input type="file" id="fileInput7" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                                                </div>

                                                <div id="Doc10th2" class="col-md-2">
                                                    <div class="form-group">
                                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>
                                                        &nbsp| &nbsp
                                                    <a class="Alert-Delete btn-md"><i class="fa fa-trash"></i></a>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row">

                                                <div id="Doc12th" class="col-md-2 mt-1">
                                                    <div class="form-group">
                                                        <label>Upload 12th Marksheet : </label>
                                                    </div>
                                                </div>

                                                <div id="Doc12th1" class="col-md-2">

                                                    <input type="file" id="fileInput9" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                                                </div>

                                                <div id="Doc12th2" class="col-md-2">
                                                    <div class="form-group">
                                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>
                                                        &nbsp| &nbsp
                                                    <a class="Alert-Delete btn-md"><i class="fa fa-trash"></i></a>
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="row">

                                                <div id="DocUG" class="col-md-2 mt-1">
                                                    <div class="form-group">
                                                        <label>Upload UG Certificate : </label>
                                                    </div>
                                                </div>

                                                <div id="DocUG1" class="col-md-2">

                                                    <input type="file" id="fileInput10" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                                                </div>

                                                <div id="DocUG2" class="col-md-2">
                                                    <div class="form-group">
                                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>
                                                        &nbsp| &nbsp
                                                     <a class="Alert-Delete btn-md"><i class="fa fa-trash"></i></a>
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="row">

                                                <div id="DocPG" class="col-md-2 mt-1">
                                                    <div class="form-group">
                                                        <label>Upload PG Certificate : </label>
                                                    </div>
                                                </div>

                                                <div id="DocPG1" class="col-md-2">

                                                    <input type="file" id="fileInput11" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                                                </div>

                                                <div id="DocPG2" class="col-md-2">
                                                    <div class="form-group">
                                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>
                                                        &nbsp| &nbsp
                                                    <a class="Alert-Delete btn-md"><i class="fa fa-trash"></i></a>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row">

                                                <div id="DocDiploma" class="col-md-2 mt-1">
                                                    <div class="form-group">
                                                        <label>Upload Diploma Certificate: </label>
                                                    </div>
                                                </div>

                                                <div id="DocDiploma1" class="col-md-2">

                                                    <input type="file" id="fileInput12" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                                                </div>

                                                <div id="DocDiploma2" class="col-md-2">
                                                    <div class="form-group">
                                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>
                                                        &nbsp| &nbsp
                                                     <a class="Alert-Delete btn-md"><i class="fa fa-trash"></i></a>
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="row">

                                                <div id="DocOther" class="col-md-2 mt-1">
                                                    <div class="form-group">
                                                        <label>Upload Other Certificate: </label>
                                                    </div>
                                                </div>

                                                <div id="DocOther1" class="col-md-2">

                                                    <input type="file" id="fileInput13" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                                                </div>

                                                <div id="DocOther2" class="col-md-2">
                                                    <div class="form-group">
                                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>
                                                        &nbsp| &nbsp
                                                        <a class="Alert-Delete btn-md"><i class="fa fa-trash"></i></a>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row justify-content-center">
                                                <div class="col-md-3 text-center">
                                                    <%--  <button type="button" class="Alert-Confirmation btn btn-success btn-rounded ">Save</button>--%>
                                                    <button type="button" class="btn  btn-success btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                        Save
                                                    </button>
                                                    <a runat="server" id="A3" href="EmployeeRegistration.aspx" class="btn btn-danger btn-rounded">Clear</a>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <!-- Modal -->
                                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel" style="font-size: 25px;"><b>सत्यापन</b></h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <input type="checkbox" />
                                                        कार्यालय द्वारा कर्मचारी का समस्त जानकारी का अवलोकन करने के
                                                        पश्चात कर्मचारी पंजीयन को अनुमोदन के लिए भेजा जा रहा है |
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="Alert-Confirmation  btn btn-success btn-rounded" data-bs-dismiss="modal">Approve</button>
                                                        <button type="button" class="btn btn-danger btn-rounded" data-bs-dismiss="modal">Reject</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <fieldset>
                    <legend>Description</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="main-ul">
                                <li><strong>Employee Unique ID</strong>
                                    <ul>
                                        <li>User will be able to enter the <strong>Employee Unique ID </strong>and the text field will accept <strong>only numerical values</strong> . </li>
                                    </ul>
                                </li>
                                <li><strong>First Name </strong>
                                    <ul>
                                        <li>User should be able to enter <strong>First Name</strong> and the text field should accept <strong>only English letters</strong> . </li>
                                    </ul>
                                </li>
                                <li><strong>Middle Name </strong>
                                    <ul>
                                        <li>User should be able to enter <strong>Middle Name</strong> and the text field should accept <strong>only English letters</strong> . </li>
                                    </ul>
                                </li>
                                <li><strong>Last Name </strong>
                                    <ul>
                                        <li>User should be able to enter <strong>Last Name</strong> and the text field should accept <strong>only English letters</strong> . </li>
                                    </ul>
                                </li>
                                <li><strong>Father's/Husband Name</strong>
                                    <ul>
                                        <li>User should be able to enter <strong>Father's/Husband Name</strong> and the text field should accept <strong>only English letters</strong> . </li>
                                    </ul>
                                </li>
                                <li><strong>Date of Birth</strong>
                                    <ul>
                                        <li>User should be able to enter or select the Date of Birth and the calendar field should accept only date format.</li>
                                    </ul>
                                </li>
                                <li><strong>Age</strong>
                                    <ul>
                                        <li>Age will be auto calculated, according to <strong>Date of Birth</strong> <strong></strong>. </li>
                                    </ul>
                                </li>
                                <li><strong>Gender Name</strong>
                                    <ul>
                                        <li>User will be able to select <strong>Gender name </strong>from dropdown. Data populated from <strong>Gender master.</strong> </li>
                                    </ul>
                                </li>
                                <li><strong>Height</strong>
                                    <ul>
                                        <li>User should be able to enter <strong>Height</strong> and the text field should accept in <strong>Numeric.</strong> </li>
                                    </ul>
                                </li>
                                <li><strong>Caste</strong>
                                    <ul>
                                        <li>User will be able to select <strong>Caste </strong>from dropdown. Data populated from <strong>Caste master.</strong> </li>
                                    </ul>
                                </li>
                                <li><strong>Sub Caste</strong>
                                    <ul>
                                        <li>User will be able to select <strong>Sub Caste </strong>from dropdown. Data populated from <strong>Sub Caste master.</strong> </li>
                                    </ul>
                                </li>
                                <li><strong>Religion</strong>
                                    <ul>
                                        <li>User will be able to select <strong>Religion </strong>from dropdown. Data populated from <strong>Religion master.</strong> </li>
                                    </ul>
                                </li>
                                <li><strong>Identification Mark</strong>
                                    <ul>
                                        <li>User should be able to enter <strong>Identification Mark</strong>, the text field should accept in Alpha Numeric.</li>
                                    </ul>
                                </li>
                                <li><strong>Blood Group</strong>
                                    <ul>
                                        <li>User will be able to select <strong>Blood Group </strong>from dropdown. Data populated from <strong>Blood Group master.</strong> </li>
                                    </ul>
                                </li>
                                <li><strong>Handicapped (PWD)</strong>
                                    <ul>
                                        <li>The user will be able to select the <strong>IS Handicapped </strong>by choosing 'Yes' or 'No' from the dropdown.</li>
                                    </ul>
                                </li>
                                <li><strong>Handicapped Type</strong>
                                    <ul>
                                        <li>The user will be able to Emter the <strong>Handicapped Type </strong>in textbox.</li>
                                    </ul>
                                </li>
                                <li><strong>Handicapped Percentage</strong>
                                    <ul>
                                        <li>The user will be able to Emter the <strong>Handicapped Percentage </strong>in textbox.</li>
                                    </ul>
                                </li>

                                <li><strong>Critical Illness</strong>
                                    <ul>
                                        <li>The user can choose 'Yes' or 'No' from the dropdown to indicate whether they have a <strong>critical illness </strong>.</li>
                                    </ul>
                                </li>

                                <li><strong>PAN No.</strong>
                                    <ul>
                                        <li>User should be able to enter <strong>PAN No.</strong> and the text field should accept<strong> Alpha Numeric</strong> .</li>
                                    </ul>
                                </li>
                                <li><strong>Aadhaar No.</strong>
                                    <ul>
                                        <li>User should be able to enter <strong>Aadhaar No.</strong> and the text field should accept<strong> Numeric</strong> .</li>
                                    </ul>
                                </li>
                                <li><strong>Samagra ID No.</strong>
                                    <ul>
                                        <li>User should be able to enter <strong>Samagra ID No.</strong> and the text field should accept<strong> Numeric</strong> .</li>
                                    </ul>
                                </li>
                                <li><strong>Employee Treasury Code</strong>
                                    <ul>
                                        <li>User should be able to enter <strong>Employee Treasury Code</strong> and the text field should accept<strong> Numeric</strong> .</li>
                                    </ul>
                                </li>

                                <li><strong>Hobbies</strong>
                                    <ul>
                                        <li>User should be able to enter <strong>Hobbies</strong> and the text field should accept<strong> English charcter only</strong> .</li>
                                    </ul>
                                </li>
                                <li><strong>Mobile No.</strong>
                                    <ul>
                                        <li>User should be able to enter <strong>Mobile No.</strong> and the text field should accept<strong> Numeric</strong> .</li>
                                    </ul>
                                </li>
                                <li><strong>Email</strong>
                                    <ul>
                                        <li>User should be able to enter <strong>Email</strong> in the textboc.</li>
                                    </ul>
                                </li>

                                <li><strong>whether the first Page of E-Service Book is certified</strong>
                                    <ul>
                                        <li>The user can choose 'Yes' or 'No' from the dropdown to indicate whether the first Page of E-Service Book is <strong>certified</strong> .</li>
                                    </ul>
                                </li>

                                <li><strong>Certification Date</strong>
                                    <ul>
                                        <li>User should be able to enter or select the Certification Date and the calendar field should accept only date format.</li>
                                    </ul>
                                </li>
                                <li><strong>Nominee  Name</strong>
                                    <ul>
                                        <li>User should be able to enter or Nominee Name in textbox.</li>
                                    </ul>
                                </li>
                                <li><strong>Relationship with Nominee</strong>
                                    <ul>
                                        <li>User should be able to enter or Relationship with Nominee in textbox.</li>
                                    </ul>
                                </li>
                                <li><strong>Nominee  Percentage</strong>
                                    <ul>
                                        <li>User should be able to enter or Nominee Percentage in textbox.</li>
                                    </ul>
                                </li>
                                <li><strong>Add</strong>
                                    <ul>
                                        <li>User Can Click Add Button.</li>
                                        <li>On Add button click Nominee Details field should be validated.</li>
                                        <li>After all fields Validate record will show below in grid. </li>
                                        <li>User will be able to enter only two nominees. </li>
                                    </ul>

                                </li>
                                <li><strong>State</strong>
                                    <ul>
                                        <li>User will be able to select <strong>State name </strong>from dropdown. Data populated from <strong>State master</strong>.</li>
                                    </ul>
                                </li>

                                <%-- <li>
                                    <strong>Address - Present/Permanent</strong>
                                </li>--%>
                                <li>
                                    <strong>Division</strong>

                                    <ul>
                                        <li>User should be able to select the <strong>Division </strong>from the dropdown and the data will be populated from the <strong>Division Master</strong> and data cascade from <strong>State Master</strong>.</li>
                                    </ul>

                                </li>
                                <li><strong>District</strong>
                                    <ul>
                                        <li>User will be able to select <strong>District name </strong>from dropdown. Data populated from <strong>District  master</strong>and data cascade from <strong>Division Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>City</strong>
                                    <ul>
                                        <li>User will be able to enter <strong>City </strong>in textbox.</li>
                                    </ul>
                                </li>
                                <li><strong>Pin Code </strong>
                                    <ul>
                                        <li>User should be able to enter <strong>Pin Code</strong> and the text field should accept in <strong>numeric</strong>. </li>
                                    </ul>
                                </li>
                                <li><strong>Address (Line1/Line 2)  </strong>
                                    <ul>
                                        <li>User should be able to enter <strong>School Address</strong> and the text field should accept in<strong> alphanumeric.</strong> </li>
                                    </ul>
                                </li>

                                <li><strong>Permanent Address same as Present Address</strong>
                                    <ul>
                                        <li>If the permanent address is the same as the present address, the user can check the <strong>checkbox </strong>, and all permanent address fields will be automatically filled based on the present address</li>
                                    </ul>
                                </li>




                                <li><strong>Married </strong>
                                    <ul>
                                        <li>The user can choose 'Yes' or 'No' from the dropdown to indicate <strong>Married status</strong> .</li>
                                        <li>If user choose 'Yes' Spose Name and Is Spouse Government Employee field will be show.</li>
                                        <li>If user choose 'No' Spose Name and Is Spouse Government Employee field will be hidden.</li>
                                    </ul>
                                </li>
                                <li><strong>Spouse Name</strong>
                                    <ul>
                                        <li>User should be able to enter <strong>Spouse Name</strong> and the text field should accept <strong>English charters only</strong>. </li>
                                    </ul>
                                </li>
                                <li><strong>Is Spouse Government Employee </strong>
                                    <ul>
                                        <li>The user can choose 'Yes' or 'No' from the dropdown to indicate whether Is <strong>Spouse Government Employee</strong> .</li>
                                        <li>If user  choose 'Yes' from the dropdown Department Type and Office Address field will be show.</li>
                                        <li>If user  choose 'No' from the dropdown Department Type and Office Address field will be hidden.</li>
                                    </ul>
                                </li>
                                <li><strong>Department Type</strong>
                                    <ul>
                                        <li>User will be able to enter <strong>Department Type</strong>in textbox.</li>
                                    </ul>
                                </li>
                                <li><strong>Office Address</strong>
                                    <ul>
                                        <li>User will be able to enter <strong>Office Address</strong>in textbox.</li>
                                    </ul>
                                </li>
                                <li><strong>Qualification</strong>
                                    <ul>
                                        <li>User will be able to select <strong>Qualification Type</strong>from dropdown. Data populated from <strong>Qualification Type master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Subject</strong>
                                    <ul>
                                        <li>User will be able to select <strong>Subject</strong>from dropdown. Data populated from <strong>Subject master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Board / Univercity name</strong>
                                    <ul>
                                        <li>User will be able to select <strong>Board / Univercity name</strong>from dropdown. Data populated from <strong>Board / Univercity name master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Passing Year</strong>
                                    <ul>
                                        <li>User will be able to select <strong>Passing Year</strong>from Calendar.</li>
                                    </ul>
                                </li>
                                <li><strong>Grade / Percentage</strong>
                                    <ul>
                                        <li>User will be able to select <strong>Grade / Percentage</strong>from dropdown. Data populated from <strong>Grade / Percentage master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Add</strong>
                                    <ul>
                                        <li>User Can Click Add Button.</li>
                                        <li>On Add button click Education Qualification field should be validated.</li>
                                        <li>After all fields Validate record will show below in grid. </li>
                                    </ul>

                                </li>
                                <!--Need to Apply  First Appointment Details -->
                                <li><strong>Save</strong>
                                    <ul>
                                        <li>User Can Click Save Button.</li>
                                        <li>On save button click form field should be validated.</li>
                                        <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to save this record?"). </li>
                                        <li>If click on Yes – Data will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!") </li>
                                        <li>If click on NO the data will not be saved and will return to the same page.</li>
                                    </ul>

                                </li>
                                <li><strong>Clear</strong>
                                    <ul>
                                        <li>Click on the clear button to clear all field page data and reload the same page. </li>
                                    </ul>
                                </li>


                                <li><strong>First Appointment District</strong>
                                    <ul>
                                        <li>User can select First Appointment District from dropdown, Data will be populate from District Master. </li>
                                    </ul>
                                </li>
                                <li><strong>Order No.</strong>
                                    <ul>
                                        <li>User will be able to enter Order No. in textbox. </li>
                                    </ul>
                                </li>
                                <li><strong>First Appointment Order Date</strong>
                                    <ul>
                                        <li>User can select First Appointment Order Date form Calendar. </li>
                                    </ul>
                                </li>
                                <li><strong>First Appointment Department </strong>
                                    <ul>
                                        <li>User can enter First Appointment Department in textbox. </li>
                                    </ul>
                                </li>
                                <li><strong>Employee’s Designation Type </strong>
                                    <ul>
                                        <li>User can select Employee’s Designation Type from dropdown, and data will populate form Designation Type Master. </li>
                                    </ul>
                                </li>
                                <li><strong>First Appointment Designation</strong>
                                    <ul>
                                        <li>User can select First Appointment Designation from dropdown, and data will populate form First Appointment Designation Master. </li>
                                    </ul>
                                </li>
                                <li><strong>Appointment Joining  Date</strong>
                                    <ul>
                                        <li>User can select Appointment Joining Date form Calendar. </li>
                                    </ul>
                                </li>
                                <li><strong>Panal Name</strong>
                                    <ul>
                                        <li>User can Select Panal Name from dropdown. </li>
                                    </ul>
                                </li>

                                <li><strong>Subject</strong>
                                    <ul>
                                        <li>User can select subject from dropdown, data will be popolate form subject master. </li>
                                    </ul>
                                </li>
                                <li><strong>Office/Institute/School Code & Name*</strong>
                                    <ul>
                                        <li>User can select Office/Institute/School Code & Name* from dropdown, data will be popolate form school registration page. </li>
                                    </ul>
                                </li>
                                <%--   <li><strong>DDO Code & Name</strong>
                                    <ul>
                                        <li>User can enter DDO Code & Name in textbox. </li>
                                    </ul>
                                </li>--%>
                                <li><strong>Sankul name</strong>
                                    <ul>
                                        <li>User will be able to select <strong>Sankul name </strong>from dropdown. Data populated from <strong>Sankul registration</strong>.</li>
                                    </ul>
                                </li>


                                <li><strong>School/Institute/Office Address of first Posting</strong>
                                    <ul>
                                        <li>User can enter School/Institute/Office Address of first Posting in textbox. </li>
                                    </ul>
                                </li>
                                <li><strong>Samvilian Order No.</strong>
                                    <ul>
                                        <li>User can enter Samvilian Order No. in textbox. </li>
                                    </ul>
                                </li>
                                <li><strong>Samvilian Order Date</strong>
                                    <ul>
                                        <li>User can select Samvilian Order Date form Calendar. </li>
                                    </ul>
                                </li>
                                <li><strong>Employee Retirement Date</strong>
                                    <ul>
                                        <li>Employee Retirement Date will be auto calculated, according to date of birth. </li>
                                    </ul>
                                </li>
                                <li><strong>Working in other Department/Organization on Deputation Transfer</strong>
                                    <ul>
                                        <li>User can select Working in other Department/Organization on Deputation Transfer form dropdown. </li>
                                        <li>If User select "Yes" Department Name textbox will be shown. </li>
                                        <li>If User select "No" Department Name textbox will be hidden. </li>
                                    </ul>
                                </li>
                                <li><strong>Deputation Department Name</strong>
                                    <ul>
                                        <li>Employee should be able to enter Deputation Department Name in textbox. </li>
                                    </ul>
                                </li>
                                <li><strong>Payroll Office Type</strong>
                                    <ul>
                                        <li>User can select Payroll Office Type from dropdown, and data will populate form Payroll Office Type Master. </li>
                                    </ul>
                                </li>
                                <li><strong>Type of Post</strong>
                                    <ul>
                                        <li>User can select Type of Post from dropdown, and data will populate form Type of Post Master. </li>
                                    </ul>
                                </li>
                                <li><strong>Level</strong>
                                    <ul>
                                        <li>User can select Level from dropdown, and data will populate form Level Master. </li>
                                    </ul>
                                </li>
                                <li><strong>Class</strong>
                                    <ul>
                                        <li>User can select Class from dropdown, and data will populate form Class Master. </li>
                                    </ul>
                                </li>
                                <li><strong>Pay Commission</strong>
                                    <ul>
                                        <li>User can select Class from dropdown, and data will populate form Pay Commission Master. </li>
                                        <li>On selection of fourth and sixth pay commission, (Pay scale, Grade pay and Basic pay will be shown and level will be hidden. </li>
                                        <li>On selection of Seventh pay commission, (Level, Pay Scale and Basic pay will be shown and Grade pay will be hidden. </li>
                                    </ul>
                                </li>
                                <li><strong>Pay scale</strong>
                                    <ul>
                                        <li>User can select Pay scale from dropdown, and data will populate form Pay scale Master. </li>
                                    </ul>
                                </li>
                                <li><strong>Grade Pay</strong>
                                    <ul>
                                        <li>User can select Grade Pay from dropdown, and data will populate form Grade Pay Master. </li>
                                    </ul>
                                </li>

                                <li><strong>Basic Pay</strong>
                                    <ul>
                                        <li>User can select Basic Pay from dropdown, and data will populate form Basic Pay Master. </li>
                                    </ul>
                                </li>
                                <li><strong>Is Current Appointment Details Same as First Appointment Details</strong>
                                    <ul>
                                        <li>User can check or uncheck "Current Appointment Same as First Appointment" checkbox. </li>
                                        <li>By checking the checkbox, the fields below all "current appointments details" will be filled in, just as they were for the first appointment. </li>
                                        <li>By unchecking the checkbox, all "current appointment details" fields will be blank and can be filled out by the user. </li>
                                    </ul>
                                </li>

                                <li><strong>Current Appointment District</strong>
                                    <ul>
                                        <li>User can select First Appointment District from dropdown, Data will be populate from District Master. </li>
                                    </ul>
                                </li>
                                <li><strong>Order No.</strong>
                                    <ul>
                                        <li>User will be able to enter Order No. in textbox. </li>
                                    </ul>
                                </li>
                                <li><strong>Current Appointment Order Date</strong>
                                    <ul>
                                        <li>User can select First Appointment Order Date form Calendar. </li>
                                    </ul>
                                </li>
                                <li><strong>Current Appointment Department </strong>
                                    <ul>
                                        <li>User can enter First Appointment Department in textbox. </li>
                                    </ul>
                                </li>
                                <li><strong>Employee’s Designation Type </strong>
                                    <ul>
                                        <li>User can select Employee’s Designation Type from dropdown, and data will populate form Designation Type Master. </li>
                                    </ul>
                                </li>
                                <li><strong>Appointment Designation</strong>
                                    <ul>
                                        <li>User can select First Appointment Designation from dropdown, and data will populate form First Appointment Designation Master. </li>
                                    </ul>
                                </li>
                                <li><strong>Appointment Joining  Date</strong>
                                    <ul>
                                        <li>User can select Appointment Joining Date form Calendar. </li>
                                    </ul>
                                </li>
                                <li><strong>Subject</strong>
                                    <ul>
                                        <li>User can select subject from dropdown, data will be popolate form subject master. </li>
                                    </ul>
                                </li>
                                <li><strong>Office/Institute/School Code & Name*</strong>
                                    <ul>
                                        <li>User can select Office/Institute/School Code & Name* from dropdown, data will be popolate form school registration page. </li>
                                    </ul>
                                </li>
                                <li><strong>Sankul name</strong>
                                    <ul>
                                        <li>User will be able to select <strong>Sankul name </strong>from dropdown. Data populated from <strong>Sankul registration</strong>.</li>
                                    </ul>
                                </li>


                                <li><strong>School/Institute/Office Address of first Posting</strong>
                                    <ul>
                                        <li>User can enter School/Institute/Office Address of first Posting in textbox. </li>
                                    </ul>
                                </li>
                                <li><strong>Samvilian Order No.</strong>
                                    <ul>
                                        <li>User can enter Samvilian Order No. in textbox. </li>
                                    </ul>
                                </li>
                                <li><strong>Samvilian Order Date</strong>
                                    <ul>
                                        <li>User can select Samvilian Order Date form Calendar. </li>
                                    </ul>
                                </li>
                                <li><strong>Employee Retirement Date</strong>
                                    <ul>
                                        <li>Employee Retirement Date will be auto calculated, according to date of birth. </li>
                                    </ul>
                                </li>
                                <li><strong>Working in other Department/Organization on Deputation Transfer</strong>
                                    <ul>
                                        <li>User can select Working in other Department/Organization on Deputation Transfer form dropdown. </li>
                                        <li>If User select "Yes" Department Name textbox will be shown. </li>
                                        <li>If User select "No" Department Name textbox will be hidden. </li>
                                    </ul>
                                </li>
                                <li><strong>Deputation Department Name</strong>
                                    <ul>
                                        <li>Employee should be able to enter Deputation Department Name in textbox. </li>
                                    </ul>
                                </li>
                                <li><strong>Payroll Office Type</strong>
                                    <ul>
                                        <li>User can select Payroll Office Type from dropdown, and data will populate form Payroll Office Type Master. </li>
                                    </ul>
                                </li>
                                <li><strong>Type of Post</strong>
                                    <ul>
                                        <li>User can select Type of Post from dropdown, and data will populate form Type of Post Master. </li>
                                    </ul>
                                </li>
                                <li><strong>Level</strong>
                                    <ul>
                                        <li>User can select Level from dropdown, and data will populate form Level Master. </li>
                                    </ul>
                                </li>
                                <li><strong>Class</strong>
                                    <ul>
                                        <li>User can select Class from dropdown, and data will populate form Class Master. </li>
                                    </ul>
                                </li>
                                <li><strong>Pay Commission</strong>
                                    <ul>
                                        <li>User can select Class from dropdown, and data will populate form Pay Commission Master. </li>
                                        <li>On selection of fourth and sixth pay commission, (Pay scale, Grade pay and Basic pay will be shown and level will be hidden. </li>
                                        <li>On selection of Seventh pay commission, (Level, Pay Scale and Basic pay will be shown and Grade pay will be hidden. </li>
                                    </ul>
                                </li>
                                <li><strong>Pay scale</strong>
                                    <ul>
                                        <li>User can select Pay scale from dropdown, and data will populate form Pay scale Master. </li>
                                    </ul>
                                </li>
                                <li><strong>Grade Pay</strong>
                                    <ul>
                                        <li>User can select Grade Pay from dropdown, and data will populate form Grade Pay Master. </li>
                                    </ul>
                                </li>

                                <li><strong>Basic Pay</strong>
                                    <ul>
                                        <li>User can select Basic Pay from dropdown, and data will populate form Basic Pay Master. </li>
                                    </ul>
                                </li>
                                <li><strong>Is Current Appointment Details Same as First Appointment Details</strong>
                                    <ul>
                                        <li>User can check or uncheck "Current Appointment Same as First Appointment" checkbox. </li>
                                        <li>By checking the checkbox, the fields below all "current appointments details" will be filled in, just as they were for the first appointment. </li>
                                        <li>By unchecking the checkbox, all "current appointment details" fields will be blank and can be filled out by the user. </li>
                                    </ul>
                                </li>


                                <li><strong>IFSC Code</strong>
                                    <ul>
                                        <li>User can enter IFSC Code in textbox </li>
                                        <li>On IFSC Code textbox selected index change, Bank and Branch name will be shown according to IFSC Code.</li>
                                    </ul>
                                </li>
                                <li><strong>Bank Name</strong>
                                    <ul>
                                        <li>Bank Name will automatically fill behalf of IFSC Code </li>
                                    </ul>
                                </li>
                                <li><strong>Branch Name</strong>
                                    <ul>
                                        <li>Branch Name will automatically fill behalf of IFSC Code </li>
                                    </ul>
                                </li>
                                <li><strong>Account Type</strong>
                                    <ul>
                                        <li>User can select Account Type form dropdown and data will populate form Database</li>
                                    </ul>
                                </li>
                                <li><strong>Account No.</strong>
                                    <ul>
                                        <li>User can enter Account No. in textbox</li>
                                    </ul>
                                </li>
                                <li><strong>DPF No.</strong>
                                    <ul>
                                        <li>User can enter DPF No. in textbox</li>
                                    </ul>
                                </li>
                                <li><strong>EPF No.</strong>
                                    <ul>
                                        <li>User can enter EPF No. in textbox</li>
                                    </ul>
                                </li>
                                <li><strong>GPF No.</strong>
                                    <ul>
                                        <li>User can enter GPF No. in textbox</li>
                                    </ul>
                                </li>
                                <li><strong>NPS No.</strong>
                                    <ul>
                                        <li>User can enter NPS No. in textbox</li>
                                    </ul>
                                </li>
                                <li><strong>Group Insurance No.</strong>
                                    <ul>
                                        <li>User can enter Group Insurance No. in textbox</li>
                                    </ul>
                                </li>
                                <li><strong>Gratuity No.</strong>
                                    <ul>
                                        <li>User can enter Gratuity No. in textbox</li>
                                    </ul>
                                </li>
                                <li><strong>EGLS No.</strong>
                                    <ul>
                                        <li>User can enter EGLS No. in textbox</li>
                                    </ul>
                                </li>
                                <li><strong>EDLI No.</strong>
                                    <ul>
                                        <li>User can enter EDLI No. in textbox</li>
                                    </ul>
                                </li>
                                <li><strong>ESIC No.</strong>
                                    <ul>
                                        <li>User can enter ESIC No. in textbox</li>
                                    </ul>
                                </li>
                                <li><strong>Save</strong>
                                    <ul>
                                        <li>User Can Click Save Button.</li>
                                        <li>On save button click form field should be validated.</li>
                                        <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to save this record?"). </li>
                                        <li>If click on Yes – Data will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!") </li>
                                        <li>If click on NO the data will not be saved and will return to the same page.</li>
                                    </ul>

                                </li>
                                <li><strong>Clear</strong>
                                    <ul>
                                        <li>Click on the clear button to clear all field page data and reload the same page. </li>
                                    </ul>
                                </li>

                            </ul>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function ShowHideCertificateDate() {
            var ddlCertificateDate = document.getElementById("ddlCertificateDate");
            var idCertificateDate = document.getElementById("idCertificateDate");

            if (ddlCertificateDate.value === "No") {
                idCertificateDate.style.display = "none";
            } else if (ddlCertificateDate.value === "Yes") {
                idCertificateDate.style.display = "block";
            } else {
                idCertificateDate.style.display = "none";
            }
        }

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
        function ShowHideCriticalIllness() {
            var ddlCriticalIllness = document.getElementById("ddlCriticalIllness");
            var DivCriticalIllness = document.getElementById("DivCriticalIllness");
            var handipaceType = document.getElementById("handipaceType");
            if (ddlCriticalIllness.value === "Yes") {
                DivCriticalIllness.style.display = "block";

            } else if (ddlCriticalIllness.value === "No") {
                DivCriticalIllness.style.display = "none";

            }
        }
        function ddlofficetype() {
            var Div_officetype1 = document.getElementById("Div_officetype1");
            if (ddlRegistrationType.value === "2") {
                Div_officetype1.style.display = "block";
            } else {
                Div_officetype1.style.display = "none";
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

        function ShowHideOfficeType() {

            var ddlRegistrationType = document.getElementById("ddlRegistrationType");
            var idDeptName = document.getElementById("Div_officetype1");
            if (ddlRegistrationType.value === "2") {
                idDeptName.style.display = "block";
            }
            else if (ddlWorkingDept.value === "1") {
                idDeptName.style.display = "none";
            }
            else if (ddlWorkingDept.value === "3") {
                idDeptName.style.display = "none";
            }

            else {
                idDeptName.style.display = "none";
            }

        }
        function ShowHideOfficeType1() {

            var ddlRegistrationType = document.getElementById("DropDownList1");
            var idDeptName = document.getElementById("OffiiceType");
            if (ddlRegistrationType.value === "2") {
                idDeptName.style.display = "block";
            }
            else if (ddlWorkingDept.value === "1") {
                idDeptName.style.display = "none";
            }
            else if (ddlWorkingDept.value === "3") {
                idDeptName.style.display = "none";
            }

            else {
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
            if ((tableAdd.rows.length - 1) == 6) {
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
    <script type="text/javascript" src="http://www.google.com/jsapi"></script>
    <script type="text/javascript">
        google.load("elements", "1", { packages: "transliteration" });
    </script>

    <script>
        function OnLoad() {
            var currValue = document.getElementById("txtMessage");

            var options = {
                sourceLanguage:
                    google.elements.transliteration.LanguageCode.ENGLISH,
                destinationLanguage:
                    [google.elements.transliteration.LanguageCode.HINDI],
                transliterationEnabled: true
            };


            var control = new

                google.elements.transliteration.TransliterationControl(options);
            control.makeTransliteratable(["txtMessage"]);

        }

        google.setOnLoadCallback(OnLoad);

    </script>
</asp:Content>

