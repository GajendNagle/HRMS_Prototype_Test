<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ProfileViewGFMS.aspx.cs" Inherits="mis_GuestFacultyManagement_ProfileViewGFMS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        .top-heading i {
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
        }

        .top-heading {
            position: relative;
            display: flex;
            background-image: url(../assets/images/svg/CardHeader.svg);
            justify-content: center;
            border-radius: 120px;
            box-shadow: inset 0px 0px 12px 6px rgb(168 168 201 / 44%);
            padding: 8px 16px;
            margin: 2.0rem;
        }

        .nav-tabs-custom.card-header-tabs {
            margin-top: -0.6em;
            margin-left: 1rem;
        }

        .nav-tabs-custom .nav-item .nav-link {
            border: 1px solid transparent;
            font-weight: var(--vz-font-weight-medium);
            border-top-left-radius: 33px;
            border-top-right-radius: 29px;
        }

        .profile-setting-img {
            position: relative !important;
            height: 150px !important;
        }

        .profile-wid-bg::before {
            background-image: none;
        }

        .profile-wid-bg {
            background-image: url(../assets/images/svg/CardHeader.svg) !important;
        }
    </style>

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

                        <li class="breadcrumb-item"><span>Update Information</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="position-relative mx-n4 mt-n4">
        <div class="profile-wid-bg profile-setting-img text-center">
            <div class="row">
                <div class="col-md-12 d-flex justify-content-center">
                    <div class="top-heading">
                        <i class="fa fa-circle" aria-hidden="true"></i>
                        <h3>Profile Details</h3>
                        <i class="fa fa-circle" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-12 col-lg-12">
        <div class="card mt-lg-n5">
            <div class="card-header-">
                <ul class="nav nav-tabs-custom rounded card-header-tabs border-bottom-0" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" id="NavQualification" href="#Qualification" role="tab">Update Information 
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" style="display: none" id="NavExperience" href="#Experience" role="tab">Experience Details
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" style="display: none" id="NavApplication" href="#Application" role="tab">Application Submission
                        </a>
                    </li>
                </ul>
            </div>
            <div class="card-body p-4">
                <div class="tab-content">
                    <div class="tab-pane active" id="Qualification" role="tabpanel">
                        <fieldset>
                            <div class="row mt-4 align-items-end">
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Select Qualification<br />
                                            योग्यता का चयन करे
                                        </label>
                                        <select id="Education" class="form-control select2">
                                            <option value="----">--Select--</option>
                                            <option value="BALLB">BALLB</option>
                                            <option value="BachelorOfArts">Bachelor of Arts</option>
                                            <option value="BachelorOfCommerce">Bachelor of Commerce</option>
                                            <option value="Architecture">Architecture</option>
                                            <option value="BCA">BCA</option>
                                            <option value="ComputerScience">Computer Science</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Select Board<br />
                                            बोर्ड का चयन करे 
                                        </label>
                                        <select id="Board" class="form-control select2">
                                            <option value="----">--Select--</option>
                                            <option value="MP Board">MP Board</option>
                                            <option value="CBSC Board">CBSC Board</option>
                                            <option value="ICSC Board">ICSC Board</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Select Subject<br />
                                            विषय का चयन करे 
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
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Select Passing Year<br />
                                            उत्तीर्ण वर्ष का चयन करे
                                        </label>
                                        <select id="PassingYear" class="form-control select2">
                                            <option value="----">--Select--</option>
                                            <option value="2020-2021d">2020-2021</option>
                                            <option value="2021-2022">2021-2022</option>
                                            <option value="2022-2023">2022-2023</option>
                                            <option value="2023-2024">2023-2024</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-end">
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Roll Number<br />
                                            रोल नंबर दर्ज करे 
                                        </label>
                                        <input type="text" id="rollnumber" class="form-control" placeholder="Enter Roll Number" />
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Percent<br />
                                            प्रतिशत दर्ज करे 
                                        </label>
                                        <input type="text" id="ddlPercentage" class="form-control" placeholder="Enter Percent" />
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Upload Certificate<br />
                                            प्रमाण पत्र अपलोड करे
                                        </label>
                                        <input type="file" id="fileInput" class="form-control" onchange="displayImage(this)">
                                    </div>
                                </div>
                                <div class="col-3">
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
                                                <th>Qualification<br />
                                                    योग्यता</th>
                                                <th>Board<br />
                                                    बोर्ड</th>
                                                <th>Subject<br />
                                                    विषय</th>
                                                <th>Year Of Passing<br />
                                                    उत्तीर्ण होने का वर्ष</th>
                                                <th>Roll Number<br />
                                                    रोल नंबर</th>
                                                <th>Percent<br />
                                                    प्रतिशत</th>
                                                <th>Upload Certificate<br />
                                                    प्रमाण पत्र अपलोड करें</th>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-md-12">
                                    <button type="button" class="Alert-Save2 btn btn-outline-success btn-border  w-lg">Save & Next</button>
                                    <a href="ProfileViewGFMS.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                    <div class="tab-pane" id="Experience" role="tabpanel">
                        <fieldset>
                            <div class="row mt-4 align-items-end">
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Select Panel<br />
                                            पैनल का चयन करे
                                        </label>
                                        <select id="Panel" class="form-control select2">
                                            <option value="----">--Select--</option>
                                            <option value="SSS-3">SSS-3</option>
                                            <option value="SSS-4">SSS-4</option>
                                            <option value="SSS-5">SSS-5</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Experience Work(In Year)<br />
                                            कार्य अनुभव दर्ज करे(वर्ष में)
                                        </label>
                                        <input type="text" id="WorkedYear" class="form-control" placeholder="Enter Experience Work" />
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Select Subject<br />
                                            विषय का चयन करे
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
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Professional Qualification Score<br />
                                            व्यावसायिक योग्यता अंक
                                        </label>
                                        <input type="text" id="scoreQualification" class="form-control" placeholder="Enter Qualification Score" />
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-end">
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Qualified Score
                                            <br />
                                            योग्यता अंक
                                        </label>
                                        <input type="text" id="QualifiedScore" class="form-control" placeholder="Enter Qualified Score" />
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Upload Certificate<br />
                                            प्रमाण पत्र अपलोड करे
                                        </label>
                                        <input type="file" id="fileInputs" class="form-control" onchange="displayImage(this)">
                                    </div>
                                </div>
                                <div class="col-3">
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
                                                <th>Upload Certificate<br />
                                                    प्रमाण पत्र अपलोड करें</th>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-md-12">
                                    <button type="button" class="Alert-Save3 btn btn-outline-success btn-border  w-lg">Save & Next</button>
                                    <a data-bs-toggle="tab" href="#Experience" onclick="document.getElementsByTagName('form').reset" role="tab" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                    <div class="tab-pane" id="Application" role="tabpanel">
                        <fieldset>
                            <div class="row mt-4 align-items-end">
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Enter UDISE Code<br />
                                            यूडीआईएसई कोड दर्ज करे
                                        </label>
                                        <input type="text" id="UdiceCode" class="form-control" placeholder="Enter UDICE Code">
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Enter School Name<br />
                                            विद्यालय का नाम दर्ज करे
                                        </label>
                                        <input class="form-control" type="text" placeholder="Enter School Name" />
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Select Vacant Panel<br />
                                            रिक्त पैनल का चयन करें
                                        </label>
                                        <select id="VacantPanel" class="form-control select2">
                                            <option value="----">--Select--</option>
                                            <option value="SSS-2">SSS-2</option>
                                            <option value="SSS-7">SSS-7</option>
                                            <option value="SSS-5">SSS-5</option>
                                            <option value="SSS-6">SSS-6</option>
                                            <option value="SSS-3">SSS-3</option>
                                        </select>
                                    </div>
                                </div>
                                <%-- </div>--%>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Select Vacant Post<br />
                                            रिक्त पोस्ट का चयन करें
                                        </label>
                                        <select id="VacantPost" class="form-control select2">
                                            <option value="----">--Select--</option>
                                            <option value="12">12</option>
                                            <option value="10">10</option>
                                            <option value="5">5</option>
                                            <option value="16">16</option>
                                            <option value="3">3</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-md-12">
                                    <button type="button" class="Alert-Save btn btn-outline-success btn-border w-lg">Apply for Post</button>
                                    <a href="ProfileViewGFMS.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
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
                                    document.getElementById("NavExperience").style.display = "block";
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
                                    document.getElementById("NavApplication").style.display = "block";
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
                c7.innerHTML = fileInputs.value;
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
                var Education = document.getElementById("Education");
                var Board = document.getElementById("Board");
                var Subject = document.getElementById("Subject");
                var Passing = document.getElementById("PassingYear");
                var rollnumber = document.getElementById("rollnumber");
                var total = document.getElementById("ddlPercentage");
                var fileInputs = document.getElementById("fileInput");
                var c1 = r.insertCell(0);
                c1.innerHTML = tableAdd.rows.length - 1;
                var c2 = r.insertCell(1);
                c2.innerHTML = Education.value;
                var c3 = r.insertCell(2);
                c3.innerHTML = Board.value;
                var c4 = r.insertCell(3);
                c4.innerHTML = Subject.value;
                var c5 = r.insertCell(4);
                c5.innerHTML = Passing.value;
                var c6 = r.insertCell(5);
                c6.innerHTML = rollnumber.value;
                var c7 = r.insertCell(6);
                c7.innerHTML = total.value;
                var c8 = r.insertCell(7);
                c8.innerHTML = fileInputs.value;
            }
        }

    </script>
</asp:Content>

