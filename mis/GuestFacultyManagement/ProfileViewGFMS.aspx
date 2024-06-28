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

    <div class="position-relative mx-n4 mt-n4">
        <div class="profile-wid-bg profile-setting-img text-center">
            <div class="row">
                <div class="col-md-12 d-flex justify-content-center">
                    <div class="top-heading">
                        <i class="fa fa-circle" aria-hidden="true"></i>
                        <h3>Profile View</h3>
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
                    <%--<li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#ProfileView" role="tab">Profile View
                        </a>
                    </li>--%>
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#Qualification" role="tab">Update Information 
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" href="#Experience" role="tab">Experience Details
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" href="#Application" role="tab">Application Submission
                        </a>
                    </li>
                </ul>
            </div>
            <div class="card-body p-4">
                <div class="tab-content">
<%--                    <div class="tab-pane active" id="ProfileView" role="tabpanel">
                        <div class="row">
                            <div class="col-12">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="row">
                                            <div class="col-6">
                                                <label>
                                                    Name (In English)
                                                    <br />
                                                    नाम (अंग्रेज़ी में)</label>
                                            </div>
                                            <div class="col-6">
                                                <label>: Raman Varma</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="row">
                                            <div class="col-6">
                                                <label>
                                                    Name (In Hindi)
                                                    <br />
                                                    नाम (हिंदी में)</label>
                                            </div>
                                            <div class="col-6">
                                                <label>: रमण वर्मा</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="row">
                                            <div class="col-6">
                                                <label>Gender </label>
                                            </div>
                                            <div class="col-6">
                                                <label>: Male</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="row">
                                            <div class="col-6">
                                                <label>Mobile No. </label>
                                            </div>
                                            <div class="col-6">
                                                <label>: 9876543210</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="row">
                                            <div class="col-6">
                                                <label>Date of Birth </label>
                                            </div>
                                            <div class="col-6">
                                                <label>: 01/01/1990</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="row">
                                            <div class="col-6">
                                                <label>
                                                    Category</label>
                                            </div>
                                            <div class="col-6">
                                                <label>: General</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="row">
                                            <div class="col-6">
                                                <label>
                                                    Father's Name
                                                </label>
                                            </div>
                                            <div class="col-6">
                                                <label>: Mr. Satish Varma</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="row">
                                            <div class="col-6">
                                                <label>
                                                    Mother's Name
                                                </label>
                                            </div>
                                            <div class="col-6">
                                                <label>: Mrs. Shobha Varma</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="row">
                                            <div class="col-6">
                                                <label>
                                                    Family Samagra ID
                                                </label>
                                            </div>
                                            <div class="col-6">
                                                <label>: 1234567890</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="row">
                                            <div class="col-6">
                                                <label>Marital Status </label>
                                            </div>
                                            <div class="col-6">
                                                <label>: Married</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="row">
                                            <div class="col-6">
                                                <label>
                                                    Email ID
                                                </label>
                                            </div>
                                            <div class="col-6">
                                                <label>: raman.varma@example.com</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                    <div class="tab-pane" id="Qualification" role="tabpanel">
                        <fieldset>
                            <div class="row mt-4">
                                <div class="col-2">
                                    <label>
                                        Qualification
                                    </label>
                                </div>
                                <div class="col-4">
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
                                <div class="col-2">
                                    <label>
                                        Board
                                    </label>
                                </div>
                                <div class="col-4">
                                    <select id="Board" class="form-control select2">
                                        <option value="----">--Select--</option>
                                        <option value="MP Board">MP Board</option>
                                        <option value="CBSC Board">CBSC Board</option>
                                        <option value="ICSC Board">ICSC Board</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-2">
                                    <label>
                                        Subject
                                    </label>
                                </div>
                                <div class="col-4">
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
                                <div class="col-2">
                                    <label>
                                        Year Passing
                                    </label>
                                </div>
                                <div class="col-4">
                                    <select id="YearPassing" class="form-control select2">
                                        <option value="----">--Select--</option>
                                        <option value="MP Board">2020-2021</option>
                                        <option value="CBSC Board">2021-2022</option>
                                        <option value="ICSC Board">2022-2023</option>
                                        <option value="ICSC Board">2023-2024</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-2">
                                    <label>
                                        Roll Number
                                    </label>
                                </div>
                                <div class="col-4">
                                    <input type="text" id="rollnumber" class="form-control" placeholder="Enter Roll Number" />
                                </div>
                                <div class="col-2">
                                    <label>
                                        Percentage
                                    </label>
                                </div>
                                <div class="col-4">
                                    <select id="Percentage" class="form-control select2">
                                        <option value="----">--Select--</option>
                                        <option value="">65%</option>
                                        <option value="">70%</option>
                                        <option value="">80%</option>
                                        <option value="">90%</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-2">
                                    <div class="form-group">
                                        <label>
                                            Upload Certificate
                                        </label>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="form-group">
                                        <input type="file" id="fileInput" class="form-control" onchange="displayImage(this)">
                                    </div>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-md-12">
                                    <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border  w-lg">Save</button>
                                    <a href="ProfileViewGFMS.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                    <div class="tab-pane" id="Experience" role="tabpanel">
                        <fieldset>
                            <div class="row mt-4">
                                <div class="col-2">
                                    <label>
                                        Panel
                                    </label>
                                </div>
                                <div class="col-4">
                                    <select id="Panel" class="form-control select2">
                                        <option value="----">--Select--</option>
                                        <option value="SSS-3">SSS-3</option>
                                        <option value="SSS-4">SSS-4</option>
                                        <option value="SSS-5">SSS-5</option>
                                    </select>
                                </div>
                                <div class="col-2">
                                    <label>
                                        Year's Worked On
                                    </label>
                                </div>
                                <div class="col-4">
                                    <select id="WorkedYear" class="form-control select2">
                                        <option value="----">--Select--</option>
                                        <option value="10">10</option>
                                        <option value="8">8</option>
                                        <option value="5">5</option>
                                        <option value="7">7</option>
                                        <option values="6">6</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-2">
                                    <label>
                                        Subject
                                    </label>
                                </div>
                                <div class="col-4">
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
                                <div class="col-2">
                                    <label>
                                        Prof. Qualification Score
                                    </label>
                                </div>
                                <div class="col-4">
                                    <input type="text" id="scoreQualification" class="form-control" placeholder="Enter Qualification Score" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-2">
                                    <div class="form-group">
                                        <label>
                                            Qualified Score 
                                        </label>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="form-group">
                                        <input type="text" id="QualifiedScore" class="form-control" placeholder="Enter Qualified Score" />
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="form-group">
                                        <label>
                                            Upload Certificate
                                        </label>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="form-group">
                                        <input type="file" id="fileInputs" class="form-control" onchange="displayImage(this)">
                                    </div>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-md-12">
                                    <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border  w-lg">Save</button>
                                    <a data-bs-toggle="tab" href="#Experience" onclick="document.getElementsByTagName('form').reset" role="tab" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                    <div class="tab-pane" id="Application" role="tabpanel">
                        <fieldset>
                            <div class="row mt-4">
                                <div class="col-2">
                                    <label>
                                        Enter UDISE Code  
                                    </label>
                                </div>
                                <div class="col-4">
                                    <input type="text" id="UdiceCode" class="form-control" placeholder="Enter UDICE Code">
                                </div>
                                <div class="col-2">
                                    <label>
                                        School Name
                                    </label>
                                </div>
                                <div class="col-4">
                                    <input class="form-control" type="text" placeholder="Enter School Name" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-2">
                                    <div class="form-group">
                                        <label>
                                            Select Vacant Panel
                                        </label>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="form-group">
                                        <select id="VacantPanel" class="form-control select2">
                                            <option value="----">-Select-</option>
                                            <option value="SSS-2">SSS-2</option>
                                            <option value="SSS-7">SSS-7</option>
                                            <option value="SSS-5">SSS-5</option>
                                            <option value="SSS-6">SSS-6</option>
                                            <option value="SSS-3">SSS-3</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="form-group">
                                        <label>
                                            Select Vacant Post
                                        </label>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <select id="VacantPost" class="form-control select2">
                                        <option value="----">-Select-</option>
                                        <option value="12">12</option>
                                        <option value="10">10</option>
                                        <option value="5">5</option>
                                        <option value="16">16</option>
                                        <option value="3">3</option>
                                    </select>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="Alert-Save btn btn-outline-success btn-border  w-lg">Apply for Post</button>
                        <a href="ProfileViewGFMS.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>F
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
                        text: "Do you want to save this record ?",
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
                                html: `Profile Registered Seccessfully! <br>  <p class="text fs-16 mb-0" style="/*font-weight: 500;*/">
                                Login Credintial sent on Registered Mail ID</p > `,

                               // timer: 2000,
                                onClose: () => {

                                    //$('#RegSuccessModel').modal('show'); // Assuming your modal has an id of 'myModal'
                                    //document.getElementById("fs_PersonalInfo").style.display = "block";
                                    //document.getElementById("fs_AddressInfo").style.display = "block";
                                    //document.getElementById("fs_Registration").style.display = "none";
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
</script>
</asp:Content>

