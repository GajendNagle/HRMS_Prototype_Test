<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Reg_GuestFaculty.aspx.cs" Inherits="mis_GuestFacultyManagement_Reg_GuestFaculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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

                        <li class="breadcrumb-item"><span>Guest Faculty Registration</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="card-title">Guest Faculty Registration / अतिथि शिक्षक पंजीकरण</h4>
                </div>
            </div>
        </div>

        <div class="card-body">
            <div class="row">
                <div class="col-md-12">
                    <fieldset id="fs_Registration">
                        <legend>Registration Via Samagra or Aadhar / समग्र या आधार के माध्यम से पंजीकरण</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <label>
                                    <input type="radio" name="RegistrationMode" value="Samagra" onchange="SelectRegistrationMode()" />
                                    Enter Samagra Id
                                    <br />
                                    समग्र आईडी दर्ज करें
                                </label>
                                <input type="text" class="form-control" id="txtSamagra" disabled placeholder="Samagra Id " />
                            </div>
                            <div class="col-md-3">
                                <label>
                                    <input type="radio" name="RegistrationMode" value="Aadhar" onchange="SelectRegistrationMode()" />
                                    Enter Aadhar Number
                                    <br />
                                    आधार नंबर दर्ज करें
                                </label>
                                <input type="text" class="form-control" id="txtAadhar" disabled placeholder="Aadhar Number  " />
                            </div>
                            <hr />
                            <div class="col-md-12">

                                <button type="button" class="btn btn-outline-success btn-rounded w-55" data-bs-toggle="modal" data-bs-target="#GETOtpModel">Genrate OTP</button>
                            </div>
                        </div>
                    </fieldset>
                    <%--model start--%>
                    <div class="modal fade" id="GETOtpModel" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="GETOtpModelLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="GETOtpModelLabel">OTP Verification</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <label>Enter OTP </label>
                                            <input type="text" class="form-control" placeholder="OTP" />
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-outline-success w-55 btn-border Alert-Verify">Submit</button>
                                    <a href="Reg_GuestFaculty.aspx" role="button" data-bs-dismiss="modal" class="btn w-55 btn-outline-danger btn-border">Clear</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--model End--%>
                    <fieldset id="fs_PersonalInfo" style="display: none">
                        <legend>Personal Information / व्यक्तिगत जानकारी</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <label>
                                   Enter Name (English)
                                    <br />
                                    नाम (इंग्लिश) दर्ज करें</label>
                                <input type="text" class="form-control" readonly value="Raman Varma" />
                            </div>
                            <div class="col-md-3">
                                <label>
                                   Enter Name (Hindi)
                                    <br />
                                    नाम (हिंदी) दर्ज करें</label>
                                <input type="text" class="form-control" readonly value="रमण वर्मा" />
                            </div>
                            <div class="col-md-3">
                                <label>
                                    Gender
                                    <br />
                                    लिंग</label>
                                <input type="text" class="form-control" readonly value="Male" />
                            </div>

                            <div class="col-md-3">
                                <label>
                                   Enter Mobile
                                    <br />
                                    मोबाइल दर्ज करें</label>
                                <input type="text" class="form-control" readonly value="9876543210" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <label>
                                   Select Date of Birth
                                    <br />
                                    जन्म तारीख</label>
                                <input type="date" class="form-control" readonly value="1990-01-01" />
                            </div>
                            <div class="col-md-3">
                                <label>
                                    Category
                                    <br />
                                    श्रेणी</label>
                                <input type="text" class="form-control" readonly value="General" />
                            </div>

                            <div class="col-md-3">
                                <label>
                                   Enter Father's Name
                                    <br />
                                    पिता का नाम दर्ज करें</label>
                                <input type="text" class="form-control" readonly value="Mr. Satish Varma" />
                            </div>
                            <div class="col-md-3">
                                <label>
                                   Enter Mother's Name
                                    <br />
                                    मां का नाम दर्ज करें</label>
                                <input type="text" class="form-control" readonly value="Mrs. Shobha Varma" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <label>
                                   Enter Family Samagra ID
                                    <br />
                                    परिवार समग्र आईडी दर्ज करें</label>
                                <input type="text" class="form-control" readonly value="1234567890" />
                            </div>

                            <div class="col-md-3">
                                <label>
                                   Select Marital Status
                                    <br />
                                    वैवाहिक स्थिति चयन करें</label>
                                <select class="form-select select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Single">Single</option>
                                    <option value="Married">Married</option>
                                    <option value="Divorced">Divorced</option>
                                    <option value="Widowed">Widowed</option>
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label>
                                   Enter Email ID
                                    <br />
                                    ईमेल आईडी दर्ज करें</label>
                                <input type="text" class="form-control" value="raman.varma@example.com" />
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="fs_AddressInfo" style="display: none">
                        <legend>Address Information / पता जानकारी</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <label>
                                   Select State
                                    <br />
                                    राज्य चयन करें</label>

                                <select class="form-select select2" disabled >
                                    <option value="--Select--">--Select--</option>
                                    <option value="Madhya Pradesh" selected>Madhya Pradesh</option>
                                    <option value="Maharashtra">Maharashtra</option>
                                    <!-- Add other states as needed -->
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label>
                                   Select Division
                                    <br />
                                    संभाग चयन करें</label>
                                <select class="form-select select2" disabled>
                                    <option value="--Select--">--Select--</option>

                                    <option value="Bhopal" selected>Bhopal</option>
                                    <option value="Indore">Indore</option>
                                    <!-- Add other divisions as needed -->
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label>
                                   Select District
                                    <br />
                                    जिला चयन करें</label>
                                <select class="form-select select2" disabled>
                                    <option value="--Select--">--Select--</option>
                                    <option value="Bhopal" selected>Bhopal</option>
                                    <option value="Indore">Indore</option>
                                    <!-- Add other districts as needed -->
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label>
                                   Select Block
                                    <br />
                                    ब्लॉक चयन करें</label>
                                <select class="form-select select2" disabled>
                                    <option value="--Select--">--Select--</option>

                                    <option value="Phanda">Phanda</option>
                                    <option value="Huzur" selected>Huzur</option>
                                    <!-- Add other blocks as needed -->
                                </select>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-3">
                                <label>
                                    Village
                                    <br />
                                    गांव</label>
                                <select class="form-select select2" disabled>
                                    <option value="--Select--">--Select--</option>

                                    <option value="Kalapipal">Kalapipal</option>
                                    <option value="Arjun Nagar" selected>Arjun Nagar</option>
                                    <!-- Add other villages as needed -->
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label>
                                    Pincode
                                    <br />
                                    पिनकोड</label>
                                <input type="text" class="form-control" disabled value="462023" />
                            </div>
                            <div class="col-md-6">
                                <label>
                                    Address
                                    <br />
                                    पता</label>
                                <textarea class="form-control" disabled rows="1">123, Main Street, Kalapipal, Bhopal</textarea>
                            </div>
                            <hr />
                            <div class="col-md-12 ">
                                <button type="button" class="btn btn-outline-success w-55 btn-border Alert-Save">Submit</button>
                                <a role="button" class="btn btn-outline-danger btn-rounded btn-border w-55" href="Reg_GuestFaculty.aspx">Clear</a>
                            </div>
                        </div>

                        <%--model start
                        <div class="modal fade" id="RegSuccessModel" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="RegSuccessModelLabel" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="RegSuccessModelLabel">Registered Seccessfully</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row mb-0">
                                            <div class="col-md-12">
                                                <p class="text fs-16 mb-0">
                                                    Profile Registered Seccessfully<br />
                                                    Login Credintial sent on Registered Mail ID
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer justify-content-center">
                                        <button type="button" class="btn btn-outline-success w-55 btn-border" data-bs-dismiss="modal">OK</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                            model End--%>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>

        function SelectRegistrationMode() {
            var value = document.querySelector('input[name="RegistrationMode"]:checked').value;
            if (value == "Samagra") {
                document.querySelector('#txtSamagra').disabled = false;
                document.querySelector('#txtAadhar').disabled = true;
                document.querySelector('#txtAadhar').disabled = true;
            } else if (value == "Aadhar") {
                document.querySelector('#txtSamagra').disabled = true;
                document.querySelector('#txtAadhar').disabled = false;
            }
        }

    </script>
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-Verify').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Verify OTP?",
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
                                text: 'OTP Verified Successfully!',
                                timer: 2000,
                                onClose: () => {

                                    $('#GETOtpModel').modal('hide'); // Assuming your modal has an id of 'myModal'
                                    document.getElementById("fs_PersonalInfo").style.display = "block";
                                    document.getElementById("fs_AddressInfo").style.display = "block";
                                    document.getElementById("fs_Registration").style.display = "none";
                                }

                            }
                            )
                        }
                    })
                });
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

