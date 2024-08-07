<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ProfileViewGFMS.aspx.cs" Inherits="mis_GuestFacultyManagement_ProfileViewGFMS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        .no-border th, .no-border td {
            border: 0px;
            background-color: transparent;
            width: calc(100% / 4);
        }

        .no-border tr {
            padding: 0.2rem 1rem;
            background-color: transparent;
        }

        .table tr:nth-child(even), .table tr, .table th {
            background-color: transparent;
        }

        .nav-pills .nav-link {
            border-radius: var(--vz-nav-pills-border-radius);
        }

        .btnShow {
        }


        @media print {
            .card-body, .card, #printCard {
                padding: 0;
                margin: 0;
            }

            .card-border-primary {
                border: 0
            }
        }

        /*   .top-heading i {
            display: flex;
            align-items: center;
            font-size: 10px;
            color: #fff;
        }

        .top-heading h3 {
            margin: 0;
            font-family: var(--vz-font-sans-serif) !important;
            font-size: 16px;
            color: #fff;
            padding: 0 11px;
            border-radius: 120px;
        }*/

        /*   .top-heading {
            position: relative;
            display: flex;
            background-color: var(--vz-primary);
            background-image: url(../assets/images/svg/CardHeader.svg);
            justify-content: center;
            border-radius: 120px;
            box-shadow: inset 0px 0px 12px 6px rgb(168 168 201 / 44%);
            padding: 8px 16px;
            margin: 2.0rem;
        }
*/
        /*  .nav-tabs-custom.card-header-tabs {
            margin-top: -0.6em;
            margin-left: 1rem;
        }*/
        /*
        .nav-tabs-custom .nav-item .nav-link {
            border: 1px solid transparent;
            font-weight: var(--vz-font-weight-medium);
            border-top-left-radius: 33px;
            border-top-right-radius: 29px;
        }
*/
        .profile-setting-img {
            position: relative !important;
            height: 150px !important;
        }

        .profile-wid-bg::before {
            background-image: none;
        }

        .profile-wid-bg {
            background-color: var(--vz-primary);
            background-image: url(../assets/images/svg/CardHeader.svg) !important;
        }
    </style>

    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

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
                            <a href="#GFMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Guest Faculty Management System</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#GuestFaculty" data-bs-toggle="collapse" role="button" aria-expanded="false" onclick="SidebarToggle('GFMS')"><span>Guest Faculty Login</span></a>
                        </li>

                        <li class="breadcrumb-item"><span>Qualification / Experience Information</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="col-md-12 col-lg-12">
        <div class="card card-border-primary">
            <div class="card-header d-print-none">
                <ul class="nav nav-pills" role="tablist">
                    <li class="nav-item">
                        <h5><a class=" nav-link   active " data-bs-toggle="tab" id="NavQualification" href="#Qualification" role="tab">Qualification Information 
                        </a></h5>
                    </li>
                    <li class="nav-item">
                        <h5><a class="nav-link" data-bs-toggle="tab" id="NavExperience" href="#Experience" role="tab">Experience Details
                        </a></h5>
                    </li>
                    <li class="nav-item">
                        <h5><a class="nav-link " data-bs-toggle="tab" id="NavApplication" href="#Application" role="tab">EKYC Details 
                        </a></h5>
                    </li>
                </ul>
            </div>
            <div class="card-body p-4">
                <div class="tab-content">
                    <div class="tab-pane active show" id="Qualification" role="tabpanel">
                        <fieldset>
                            <legend>Add Qualification Details / योग्यता विवरण</legend>
                            <div class="row mt-4 align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select Academic Year<br />
                                            शैक्षणिक वर्ष का चयन करे <span style="color: red">*</span>
                                        </label>
                                        <%--<input name="name" id="AcademicYear" placeholder="Select Academic Year" class="form-control  datepickerYear" />--%>
                                        <select id="AcademicYear" class="form-control select2">
                                            <option value="----">--Select--</option>
                                            <option>2024-25</option>
                                            <option>2023-24</option>
                                            <option>2022-23</option>
                                            <option>2021-22</option>
                                            <option>2020-21</option>
                                            <option>2019-20</option>

                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select Qualification<br />
                                            योग्यता का चयन करे<span style="color: red">*</span>
                                        </label>
                                        <select id="Education" class="form-control select2">
                                            <option value="select">--Select--</option>
                                            <option value="10th">10th</option>
                                            <option value="12th">12th</option>
                                            <option value="Graduation">Graduation</option>
                                            <option value="PostGraduation">Post Graduation</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select Course<br />
                                            पाठयक्रम का चयन करें<span style="color: red">*</span></label>
                                        <select class="form-select select2" id="ddlCourse">
                                            <option value="----">--Select--</option>
                                            <option value="Architecture">Architecture</option>
                                            <option value="Arts">Arts</option>
                                            <option value="Aviation	 ">Aviation	 </option>
                                            <option value="Bachelor of Arts">Bachelor of Arts</option>
                                            <option value="Bachelor of Commerce">Bachelor of Commerce</option>
                                            <option value="Bachelor of Science ">Bachelor of Science </option>
                                            <option value="Bachelor of Technology">Bachelor of Technology</option>
                                            <option value="BALLB ">BALLB </option>
                                            <option value="BBA ">BBA </option>
                                            <option value="BCA ">BCA </option>
                                            <option value="BDes in Design">BDes in Design</option>
                                            <option value="Biochemistry">Biochemistry</option>
                                            <option value="Biotechnology ">Biotechnology </option>
                                            <option value="Bsc ">Bsc </option>
                                            <option value="BSc IT">BSc IT</option>
                                            <option value="Chemical Engineering">Chemical Engineering</option>
                                            <option value="Civil Engineering ">Civil Engineering </option>
                                            <option value="Computer Science">Computer Science</option>
                                            <option value="Economics ">Economics </option>
                                            <option value="Electrical Engineering">Electrical Engineering</option>
                                            <option value="Engineering ">Engineering </option>
                                            <option value="Executive PG program in Management">Executive PG program in Management</option>
                                            <option value="Fashion designing ">Fashion designing </option>
                                            <option value="Hospital Administration ">Hospital Administration </option>
                                            <option value="Human Resource Management ">Human Resource Management </option>
                                            <option value="Humanities">Humanities</option>
                                            <option value="International business">International business</option>
                                            <option value="Law">Law</option>
                                            <option value="Management">Management</option>
                                            <option value="Mass communications ">Mass communications </option>
                                            <option value="Master of Arts">Master of Arts</option>
                                            <option value="Master of Data Science">Master of Data Science</option>
                                            <option value="Master of Science Biochemistry">Master of Science Biochemistry</option>
                                            <option value="Masters Of Physician">Masters Of Physician</option>
                                            <option value="MBA">MBA</option>
                                            <option value="MBA Business Analytics">MBA Business Analytics</option>
                                            <option value="MBA Finance">MBA Finance</option>
                                            <option value="MBBS">MBBS</option>
                                            <option value="MCA">MCA</option>
                                            <option value="PG Diploma in Entrepreneurship Development">PG Diploma in Entrepreneurship Development</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select Board<br />
                                            बोर्ड का चयन करे<span style="color: red">*</span>
                                        </label>
                                        <select id="Board" class="form-control select2">
                                            <option value="----">--Select--</option>
                                            <option value="MP Board">MP Board</option>
                                            <option value="CBSC Board">CBSC Board</option>
                                            <option value="ICSC Board">ICSC Board</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select Subject<br />
                                            विषय का चयन करे<span style="color: red">*</span>
                                        </label>
                                        <select id="Subject" class="form-control select2">
                                            <option value="----">--Select--</option>
                                            <option value="Computer">Computer</option>
                                            <option value="Science">Science</option>
                                            <option value="BBA">Maths</option>
                                            <option value="MBBS">Physics</option>
                                            <option value="Biotechnology">Biotechnology</option>
                                            <option value="Management">Management</option>
                                            <option value="ChemicalEngineering">Chemical Engineering</option>
                                            <option value="CivilEngineering">Civil Engineering</option>
                                            <option value="Economics">Economics</option>
                                            <option value="ElectricalEngineering">Electrical Engineering</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select Passing Year<br />
                                            उत्तीर्ण वर्ष का चयन करे<span style="color: red">*</span>
                                        </label>

                                        <%--<input id="PassingYear" name="name" placeholder="Select Passing Year" class="form-control  datepickerYear2" />--%>
                                        <select id="PassingYear" class="form-control select2">
                                            <option value="----">--Select--</option>
                                            <option value="2024">2024</option>
                                            <option value="2023">2023</option>
                                            <option value="2022">2022</option>
                                            <option value="2021">2021</option>
                                            <option value="2020">2020</option>
                                            <option value="2019">2019</option>
                                            <option value="2018">2018</option>
                                            <option value="2017">2017</option>
                                            <option value="2016">2016</option>
                                            <option value="2015">2015</option>
                                            <option value="2014">2014</option>
                                            <option value="2013">2013</option>
                                            <option value="2012">2012</option>
                                            <option value="2011">2011</option>
                                            <option value="2010">2010</option>
                                            <option value="2009">2009</option>
                                            <option value="2008">2008</option>
                                            <option value="2007">2007</option>
                                            <option value="2006">2006</option>
                                            <option value="2005">2005</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Roll Number<br />
                                            रोल नंबर दर्ज करे<span style="color: red">*</span>
                                        </label>
                                        <input type="text" id="rollnumber" class="form-control" placeholder="Enter Roll Number" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Enter Total Mark<br />
                                            कुल अंक दर्ज करे<span style="color: red">*</span></label>
                                        <input type="text" id="totalmark" class="form-control" placeholder="Enter Total Mark" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Obtained Marks<br />
                                            कुल प्राप्त अंक दर्ज करे<span style="color: red">*</span>
                                        </label>
                                        <input type="text" id="obtainedmrk" class="form-control" placeholder="Enter Obtained Marks" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Upload Certificate<br />
                                            प्रमाण पत्र अपलोड करे<span style="color: red">*</span>
                                        </label>
                                        <input type="file" id="fileInput" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <input type="button" id="btnQualification" class="btn btn-outline-success w-lg btn-border" value="ADD" onclick="AddQualification();" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered" id="tblQualification" style="display: none;">
                                            <tr>
                                                <th>Sr. No.<br />
                                                    सरल क्र.</th>
                                                <th>Academic Year<br />
                                                    शैक्षणिक वर्ष</th>
                                                <th>Board / University<br />
                                                    बोर्ड / विश्वविद्यालय</th>
                                                <th>Qualification<br />
                                                    योग्यता</th>
                                                <th>Course
                                                    <br />
                                                    कोर्स</th>
                                                <th>Subject<br />
                                                    विषय</th>
                                                <th>Roll Number<br />
                                                    रोल नंबर</th>
                                                <th>Total Mark<br />
                                                    कुल प्राप्तांक</th>
                                                <th>Obtained Mark<br />
                                                    अर्जित प्राप्तांक</th>
                                                <th>View Certificate<br />
                                                    प्रमाण पत्र देखे</th>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-md-10 text-center">
                                    <button type="button" class="Alert-Save2 btn btn-outline-success btn-border  w-lg">Save & Next</button>
                                    <a href="ProfileViewGFMS.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input type="checkbox" style="margin:6px"/><span style="font-size:15px; font-weight:bold">Experience</span>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                    <div class="tab-pane" id="Experience" role="tabpanel">
                        <fieldset>
                            <legend>Add Experience Details / अनुभव विवरण</legend>
                            <div class="row mt-4 align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select Panel<br />
                                            पैनल का चयन करे<span style="color: red">*</span>
                                        </label>
                                        <select id="Panel" class="form-control select2">
                                            <option value="----">--Select--</option>
                                            <option value="SSS-3">SSS-3</option>
                                            <option value="SSS-4">SSS-4</option>
                                            <option value="SSS-5">SSS-5</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Experience Work(In Year)<br />
                                            कार्य अनुभव दर्ज करे(वर्ष में)<span style="color: red">*</span>
                                        </label>
                                        <input type="text" id="WorkedYear" class="form-control" placeholder="Enter Experience Work" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select Subject<br />
                                            विषय का चयन करे<span style="color: red">*</span>
                                        </label>
                                        <select id="Subjects" class="form-control select2">
                                            <option value="----">--Select--</option>
                                            <option value="Computer">Computer</option>
                                            <option value="Science">Science</option>
                                            <option value="BBA">Maths</option>
                                            <option value="MBBS">Physics</option>
                                            <option value="Biotechnology">Biotechnology</option>
                                            <option value="Management">Management</option>
                                            <option value="ChemicalEngineering">Chemical Engineering</option>
                                            <option value="CivilEngineering">Civil Engineering</option>
                                            <option value="Economics">Economics</option>
                                            <option value="ElectricalEngineering">Electrical Engineering</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Professional Qualification Score<br />
                                            व्यावसायिक योग्यता अंक<span style="color: red">*</span>
                                        </label>
                                        <input type="text" id="scoreQualification" class="form-control" placeholder="Enter Qualification Score" />
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Qualified Score
                                            <br />
                                            योग्यता अंक<span style="color: red">*</span>
                                        </label>
                                        <input type="text" id="QualifiedScore" class="form-control" placeholder="Enter Qualified Score" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Upload Certificate<br />
                                            प्रमाण पत्र अपलोड करे<span style="color: red">*</span>
                                        </label>
                                        <input type="file" id="fileInputs" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <input type="button" id="btnExperience" class="btn btn-outline-success w-lg btn-border" value="ADD" onclick="AddExperience();" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered" id="tblExperience" style="display: none;">
                                            <tr>
                                                <th>Sr. No.<br />
                                                    सरल क्र.</th>
                                                <th>Panel<br />
                                                    पैनल</th>
                                                <th>Enter Experience Work(In Year)<br />
                                                    कार्य अनुभव दर्ज करे(वर्ष में)</th>
                                                <th>Subject<br />
                                                    विषय</th>
                                                <th>Professional Qualification Score<br />
                                                    व्यावसायिक योग्यता स्कोर</th>
                                                <th>Qualification Score<br />
                                                    योग्यता अंक</th>
                                                <th>View Certificate<br />
                                                    प्रमाण पत्र देखे</th>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-md-12 text-center">
                                    <button type="button" class="Alert-Save3 btn btn-outline-success btn-border  w-lg">Save & Next</button>
                                    <a data-bs-toggle="tab" href="#Experience" onclick="document.getElementsByTagName('form').reset" role="tab" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                    <div class="tab-pane " id="Application" role="tabpanel">
                        <div class="row">
                            <div class="col-md-12" id="printCard">

                                <fieldset class="px-0">
                                    <legend class=" ms-3 d-print-none">Print Or Download KYC Details</legend>
                                    <div class="border-bottom border-dark  mt-0 ">

                                        <div class="row text-center align-items-center">
                                            <div class="col-2">
                                                <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 140px; height: auto; background: none" class="responsive" />
                                            </div>
                                            <div class="col-8 text-center">

                                                <h3><strong><b>अतिथि शिक्षक - आवेदक का विवरण</b></strong></h3>
                                                <label><b>Details as per EKYC</b></label>

                                            </div>
                                            <div class="col-2">
                                                <%--<img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />--%>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="row">
                                        <div class="col-12 mt-2">
                                            <div class="table-responsive">
                                                <table class="table no-border">
                                                    <tbody class="border-0">

                                                        <tr>
                                                            <th>Name  </th>
                                                            <td>Yash Varma</td>
                                                            <th>Father / Husband / Guardian Name</th>
                                                            <td>Mr. Papeendra  Varma</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Date Of Birth</th>
                                                            <td>17/07/1996</td>
                                                            <th>Gender</th>
                                                            <td>Male</td>
                                                        </tr>
                                                        <tr class="bottom-border">
                                                            <th>Address</th>
                                                            <td>Near New Girls H.S. School Bari 
                                                                    <br />
                                                                Dist. Raisen M.P. District: RAISEN  </td>
                                                            <th>Pin Code</th>
                                                            <td>464665</td>
                                                        </tr>
                                                    </tbody>
                                                </table>

                                            </div>
                                        </div>
                                        <div class="col-12 mt-2">
                                            <div class="table-responsive">
                                                <table class="table no-border">
                                                    <tbody class="border-0">
                                                        <tr>
                                                            <th>Category</th>
                                                            <td>SC</td>
                                                            <th>Mental Status</th>
                                                            <td>Unmarried</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Mother Name</th>
                                                            <td>Mrs. Nimesh Varma</td>
                                                            <td></td>
                                                            <td></td>
                                                        </tr>
                                                        <tr class="bottom-border">
                                                            <th>Mobile No</th>
                                                            <td>8602367114</td>
                                                            <th>Email ID</th>
                                                            <td>yash10yns@gmail.com </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="p-2">
                                        <div class="row mt-3">
                                            <div class="col-md-12 text-center">
                                                <h5>Qualification Details </h5>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="table-responsive">
                                                    <table class="table table-bordered text-center">
                                                        <thead>
                                                            <tr>
                                                                <th>S. No</th>
                                                                <th>Year</th>
                                                                <th>Qualification</th>
                                                                <th>Course</th>
                                                                <th>Subject</th>
                                                                <th>Board University</th>
                                                                <th>Roll Number</th>
                                                                <th>Total Marks</th>
                                                                <th>Obtained Marks</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>1</td>
                                                                <td>2010-11</td>
                                                                <td>HIGH SCHOOL</td>
                                                                <td>All</td>
                                                                <td>All</td>
                                                                <td>MP Board</td>
                                                                <td>116528203</td>
                                                                <td>600.00</td>
                                                                <td>428.00</td>
                                                            </tr>
                                                            <tr>
                                                                <td>2</td>
                                                                <td>2012-13</td>
                                                                <td>HSS (11<sup>th</sup>/12<sup>th</sup>)</td>
                                                                <td>Science</td>
                                                                <td>PCM</td>
                                                                <td>MP Board</td>
                                                                <td>236519077</td>
                                                                <td>500.00</td>
                                                                <td>292.00</td>
                                                            </tr>
                                                            <tr>
                                                                <td>3</td>
                                                                <td>2015-16</td>
                                                                <td>GRADUATE</td>
                                                                <td>Computer Science</td>
                                                                <td>Computer Science</td>
                                                                <td>State Govt. University</td>
                                                                <td>14157421</td>
                                                                <td>3700.00</td>
                                                                <td>2362.00</td>
                                                            </tr>

                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12 text-center">
                                                <h5>Experience Details Table</h5>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="table-responsive">
                                                    <table class="table table-bordered text-center">
                                                        <thead class="nowrap">
                                                            <tr>
                                                                <th>S. No.</th>
                                                                <th>Panel</th>
                                                                <th>Qualification</th>
                                                                <th>Subject</th>
                                                                <th>Qualification Score</th>
                                                                <th>Professional Qualification Score</th>
                                                                <th>Retaired Govt. Teacher</th>
                                                                <th>Year 2020-21 Score (Out Of 25)</th>
                                                                <th>Total Score Out Of 25</th>
                                                            </tr>
                                                        </thead>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>SSS-1 Maths</td>
                                                            <td>PG</td>
                                                            <td>गणित / Maths</td>
                                                            <td>70.2</td>
                                                            <td>100.0</td>
                                                            <td>0.0</td>
                                                            <td>0</td>
                                                            <td>170.2</td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-12 mb-3">
                                                <h4 class="text-center">महत्वपूर्ण निर्देश </h4>
                                            </div>
                                            <div class="col-12 mb-3">
                                                <p><b>आवेदक के लिए (EKYC से संबंधित)-पूर्व में EKYC समग्र के माध्यम से की जाती थी, इस प्रक्रिया में आंशिक बदलाव करते हुए अब EKYC सीधे आधार से की जा रही है। आधार EKYC से प्रदर्शित जानकारी यदि त्रुटिपूर्ण है, तो आवेदक को सही जानकारी दर्ज करने की सुविधा दी गई है। इस प्रक्रिया के पश्चात पोर्टल से प्रिन्ट किए गए आवेदनपत्र में EKYC तथा आवेदक द्वारा दर्ज जानकारी पृथक पृथक प्रदर्शित होगी। </b></p>
                                            </div>
                                            <div class="col-12">
                                                <ul>
                                                    <li><b>संकुल प्राचार्य के लिए (सत्यापन से संबंधित) - </b>संकुल प्राचार्य आवेदक द्वारा दर्ज जानकारी को प्रस्तुत अंकसूची/प्रमाणपत्र से मिलान करते हुए सत्यापित करेंगे।</li>
                                                </ul>

                                            </div>



                                        </div>
                                    </div>
                                </fieldset>
                            </div>
                            <div class="col-md-12 px-4 d-print-none text-center">
                                <button onclick="printModalContent('printCard');" type="button" class=" btn btn-outline-success btn-border w-lg">Print</button>
                                <a role="button" class=" btn btn-outline-secondary btn-border w-lg" download="EKYC_Details" href="/mis/Document/GFMS_EKYCDetails.pdf">Download</a>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>
    </div>
    <div class="modal fade" id="pdfModal" tabindex="-1" role="dialog" aria-labelledby="pdfModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content ">
                <div class="modal-header">
                    <h3 class="modal-title font-bold">View Certificate  </h3>
                    <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <embed id="pdfViewer" style="min-height: 500px; width: 100%" src="../Document/HRMS_Document (1).pdf" />
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <%-- <script src="https://schooledutest.tserver.co.in/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script>
        $('.datepickerYear').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true,
            orientation: 'bottom'
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear % 100); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });
        $('.datepickerYear2').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true,
            orientation: 'bottom'
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);

                var financialYear = selectedYear;
                $('.datepickerYear2').val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });

        // Function to set default value to current financial year
        function setDefaultFinancialYear() {
            var currentDate = new Date();
            var currentYear = currentDate.getFullYear();
            var nextYear = currentYear + 1;
            var financialYear = currentYear + '-' + (nextYear % 100);
            this.value = financialYear;
        }

        // Set default value to current financial year on page load
        $(document).ready(function () {
            setDefaultFinancialYear();
        });


    </script>--%>
    <script>
        function printModalContent(modalId) {
            var modalContent = document.querySelector('#' + modalId).cloneNode(true);
            document.body.innerHTML = modalContent.innerHTML
            window.print();
            window.location.href = "ProfileViewGFMS.aspx";
        }
        document.addEventListener('keydown', function (event) {
            if (event.ctrlKey && event.key === 'p') {

                if (document.getElementById("Application").classList == "tab-pane active show") {
                    event.preventDefault();
                    printModalContent('printCard');
                }
            }
        });

        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to apply for post ?",
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
                                html: `Application Submitted Successfully! <br>  <p class="text fs-16 mb-0" style="/*font-weight: 500;*/">
                                Application Id: 12345</p > `,

                                // timer: 2000,
                                onClose: () => {


                                    //document.getElementById("fs_Registration").style.display = "none";
                                }
                            }
                            )
                        }
                    })
                });
                $('.Alert-Save2').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to save Qualification record ?",
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
                                text: `Qualification Save Successfully! `,

                                timer: 4000,
                                onClose: () => {
                                    document.getElementById("NavExperience").click();


                                }
                            }
                            )
                        }
                    })
                });
                $('.Alert-Save3').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to save Experience Details?",
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
                                text: `Experience Details Save Successfully! `,

                                timer: 4000,
                                onClose: () => {
                                    document.getElementById("NavApplication").click();


                                }
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


        function AddExperience() {
            var tableAdd = document.getElementById("tblExperience");
            tableAdd.style.display = "table";
            if ((tableAdd.rows.length - 1) == 5) {
                alert('Maximum five entries allowed !!');
            }
            else {
                tableAdd.style.display = "table";
                var rows = tableAdd.rows.length;
                var r = tableAdd.insertRow(rows);
                var Panels = document.getElementById("Panel");
                var Date = document.getElementById("WorkedYear");
                var Subject = document.getElementById("Subjects");
                var scoreQualification = document.getElementById("scoreQualification");
                var QualifiedScore = document.getElementById("QualifiedScore");
                var fileInputs = document.getElementById("fileInputs");
                var c1 = r.insertCell(0);
                c1.innerHTML = tableAdd.rows.length - 1;
                var c2 = r.insertCell(1);
                c2.innerHTML = Panels.value;
                var c3 = r.insertCell(2);
                c3.innerHTML = Date.value;
                var c4 = r.insertCell(3);
                c4.innerHTML = Subject.value;
                var c5 = r.insertCell(4);
                c5.innerHTML = scoreQualification.value;
                var c6 = r.insertCell(5);
                c6.innerHTML = QualifiedScore.value;
                var c7 = r.insertCell(6);
                c7.style = "text-align:center";
                c7.innerHTML = '<a role="button" class=" btn btn-outline-secondary btn-border btnShow" data-bs-toggle="modal" data-bs-target="#pdfModal"><i class="fas fa-eye"></a>';
            }
        }
        function AddQualification() {
            var tableAdd = document.getElementById("tblQualification");
            tableAdd.style.display = "table";
            if ((tableAdd.rows.length - 1) == 5) {
                alert('Maximum five entries allowed !!');
            }
            else {
                tableAdd.style.display = "table";
                var rows = tableAdd.rows.length;
                var r = tableAdd.insertRow(rows);
                var AcademicYear = document.getElementById("AcademicYear");
                var Education = document.getElementById("Education");
                var ddlCourse = document.getElementById("ddlCourse");
                var Board = document.getElementById("Board");
                var Subject = document.getElementById("Subject");
                //var Passing = document.getElementById("PassingYear");
                var rollnumber = document.getElementById("rollnumber");
                var totalmark = document.getElementById("totalmark");
                var obtainedmrk = document.getElementById("obtainedmrk");
                var fileInputs = document.getElementById("fileInput");
                var c1 = r.insertCell(0);
                c1.innerHTML = tableAdd.rows.length - 1;
                var c2 = r.insertCell(1);
                c2.innerHTML = AcademicYear.value;
                var c3 = r.insertCell(2);
                c3.innerHTML = Board.value;
                var c4 = r.insertCell(3);
                c4.innerHTML = Education.value;
                var c5 = r.insertCell(4);
                c5.innerHTML = ddlCourse.value;
                var c6 = r.insertCell(5);
                c6.innerHTML = Subject.value;
                //var c7 = r.insertCell(6);
                //c7.innerHTML = Passing.value;
                var c8 = r.insertCell(6);
                c8.innerHTML = rollnumber.value;
                var c9 = r.insertCell(7);
                c9.innerHTML = totalmark.value;
                var c10 = r.insertCell(8);
                c10.innerHTML = obtainedmrk.value;
                var c11 = r.insertCell(9);
                c11.style = "text-align:center";
                c11.innerHTML = '<a role="button" class=" btn btn-outline-secondary btn-border btnShow" data-bs-toggle="modal" data-bs-target="#pdfModal"><i class="fas fa-eye"></a>';
            }
        };
    </script>

</asp:Content>

