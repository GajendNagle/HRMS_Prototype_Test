<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Warden.aspx.cs" Inherits="mis_HostelManagment_Warden" %>

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
                            <a href="#HostelManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Hostel Management</span></a>
                        </li>

                        <li class="breadcrumb-item">Warden Registration</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">Warden Registration / वार्डन पंजीकरण
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <%--<div runat="server" id="divOffice">--%>
            <fieldset>
                <legend>Add Warden Details / वार्डन विवरण जोड़ें</legend>
                <%--   <div class="row align-items-end mb-0">
           
                    
                    <div class="col-xl-9">--%>
                <div class="row  align-items-end" style="position: relative; bottom: 20px;">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label asp-for="IdProofId" class="control-label">
                                Is Warden Teacher /<br /> क्या वार्डन शिक्षक हैं?<span style="color: red"> *</span>
                            </label>
                            <select asp-for="IdProofId" id="teacherSelect" class="form-select">
                                <option value="">-- Select --</option>
                                <option value="Yes">Yes</option>
                                <option value="No">No</option>
                            </select>
                            <span asp-validation-for="IdProofId" class="text-danger"></span>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Employee ID /<br />
                                कर्मचारी आईडी दर्ज करें<span style="color: red;">*</span></label>
                            <input type="text" id="txtEid" class="form-control" placeholder="Enter Unique ID" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">

                            <label>
                               Enter Warden Name (In English) /<br /> वार्डन का नाम (अंग्रेज़ी में) दर्ज करें<span style="color: red;">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Warden Name" />
                        </div>
                    </div>
                    <div class="col-md-3 top-50">


                        <div class="form-group">
                            <img class="profileimage w-50 h-50" src="../dist/images/avatar-13.png" id="uploadedImage" alt="Image Not Available" />
                            <br />
                            <input type="file" id="fileInpaut" class="form-control" onchange="displayImage(this)" />
                        </div>
                    </div>
                    <div class="col-md-3" id="txt_office">
                        <div class="form-group">
                            <label>
                                Enter Office Name /<br />
                                कार्यालय का नाम दर्ज करें<span style="color: red;">*</span></label>
                            <input type="text" id="txtoffice" class="form-control" placeholder="Enter Office Name" />
                        </div>

                    </div>

                    <div class="col-md-3" id="dob">
                        <div class="form-group">
                            <label>
                                Select Date of Birth/
                                <br />
                                जन्म तिथि का चयन करें<span style="color: red">*</span></label>
                            <input name="ename" type="date" class="form-control" autocomplete="off" onchange="calculateAge()" />
                        </div>
                    </div>




                    <%-- <div class="col-md-3" style="display: none;" id="WardenName1">
                        <div class="form-group">

                            <label>
                                Enter Warden Name<br />
                                वार्डन का नाम दर्ज करें<span style="color: red;">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Warden Name" />
                        </div>
                    </div>
                    <div class="col-md-3" style="display: none;" id="dob1">
                        <div class="form-group">
                            <label>
                                Select Date of Birth
                                <br />
                                जन्म तिथि का चयन करें<span style="color: red">*</span></label>
                            <input name="ename" type="date" class="form-control" autocomplete="off" onchange="calculateAge()" />
                        </div>
                    </div>--%>

<%--                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Age /<br />उम्र दर्ज करें<span style="color: red">*</span></label>
                            <input readonly="readonly" name="ename" id="txtAge" type="text" class="form-control" autocomplete="off" placeholder="Age" />
                        </div>
                    </div>--%>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Gender/
                 <br />
                                लिंग का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2" id="ddl_gender">
                                <%--<option value="0">--Select--</option>--%>
                                <option value="1">Male</option>
                                <option value="2">Female</option>
                                <option value="3">Other</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label asp-for="MobileNo" class="control-label">
                                Enter Mobile Number/<br />
                                मोबाइल नंबर दर्ज करें<span style="color: red"> *</span>
                            </label>
                            <input asp-for="MobileNo" id="MobileNo" placeholder="Enter Mobile Number" maxlength="10" class="form-control" onkeypress="return NumberOnly();" required data-msg="Field is requied" pattern="^([6-9][0-9]{9,11})$" />
                            <span asp-validation-for="MobileNo" class="text-danger"></span>
                        </div>
                    </div>



                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Email ID/<br /> ईमेल आईडी दर्ज करें<span style="color: red">*</span>
                            </label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Email Id" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter PAN No./ 
      <br />
                                पैन न. दर्ज करें<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter PAN No." />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Aadhaar No./
                                    <br />
                                आधार न. दर्ज करें<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Aadhaar No." />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label asp-for="IdProofId" class="control-label">
                                Select ID Proof Type/<br />
                                आईडी प्रूफ प्रकार का चयन करें<span style="color: red"> *</span>
                            </label>
                            <select asp-for="IdProofId" id="IdProofId"
                                class="form-select">
                                <option value="0">-- Select --</option>
                                <option value="1">Adhaar Card</option>
                                <option value="2">Voter ID</option>
                                <option value="3">Pan Card</option>
                                <option value="4">Driving Licence</option>
                                <option value="5">Passport</option>
                            </select>
                            <span asp-validation-for="IdProofId" class="text-danger"></span>
                        </div>
                    </div>
           


                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">
                                Enter Work Exeperience/<br />
                                कार्य अनुभव दर्ज करें  <span style="color: red">*</span>
                            </label>
                            <input placeholder="Enter Work Exeperience" class="form-control" required data-msg="Field is requied" />
                            <span asp-validation-for="IdProofId" class="text-danger"></span>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Highest Qualification/
            <br />
                                उच्चतम योग्यता<span style="color: red">*</span></label>
                            <select id="Education" class="form-control select2">
                                <option value="0">--Select--</option>
                                <option value="1">BALLB</option>
                                <option value="2">Bachelor of Arts</option>
                                <option value="3">Bachelor of Commerce</option>
                                <option value="4">Architecture</option>
                                <option value="5">BCA</option>
                                <option value="6">Computer Science</option>
                                <option value="7">Education</option>
                                <option value="8">BBA</option>
                                <option value="9">MBBS</option>
                                <option value="10">Bachelor of Science</option>
                                <option value="11">BDes in Design</option>
                                <option value="12">Biotechnology</option>
                                <option value="13">BSc IT</option>
                                <option value="14">Engineering</option>
                                <option value="15">Humanities</option>
                                <option value="16">Management</option>
                                <option value="17">Arts</option>
                                <option value="18">Aviation</option>
                                <option value="19">Bsc</option>
                                <option value="20">Chemical Engineering</option>
                                <option value="21">Civil Engineering</option>
                                <option value="22">Economics</option>
                                <option value="23">Electrical Engineering</option>
                                <option value="24">Fashion designing</option>
                                <option value="25">MBA</option>
                                <option value="26">Education Law</option>
                                <option value="27">Hospital Administration</option>
                                <option value="28">Master of Science Biochemistry</option>
                                <option value="29">MBA Finance</option>
                                <option value="30">MD</option>
                                <option value="31">Mass communications</option>
                                <option value="32">Masters Of Physician</option>
                                <option value="33">MCA</option>
                                <option value="34">PG Diploma in Entrepreneurship Development</option>
                                <option value="35">Executive PG program in Management</option>
                                <option value="36">Human Resource Management</option>
                                <option value="37">International business</option>
                                <option value="38">Master of Arts</option>
                                <option value="39">Master of Data Science</option>
                                <option value="40">MBA Business Analytics</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label asp-for="Address" class="control-label">
                                Enter Address/<br />
                                पता दर्ज करें<span style="color: red"> *</span></label>
                            <input asp-for="Address" id="HostelAddress" placeholder="Enter Address" maxlength="150" multiple="true" class="form-control" required data-msg="Field is requied" />
                            <span asp-validation-for="Address" class="text-danger"></span>
                        </div>
                    </div>
                             <div class="col-md-3">
                        <div class="form-group">
                            <label asp-for="IdProofDoc" class="control-label">
                                Upload Document/<br />
                                दस्तावेज़ अपलोड करें<span style="color: red"> *</span>
                            </label>
                            <input type="file" asp-for="IdProofDoc" id="IdProofDoc" class="form-control" required data-msg="Field is requied" accept="image/*" />
                            <span asp-validation-for="MobileNo" class="text-danger"></span>
                        </div>
                    </div>


                </div>



                <hr />
                <div class="col-md-12">
                    <div class="form-group text-center">
                        <button type="button" class="Alert-Confirmation btn btn-success w-lg btn-border" onclick="document.getElementById('HostlInfo').style.display = 'block'">Save</button>
                        <a href="Warden.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>

<%--    <fieldset id="HostlInfo" style="display: none;">
        <legend>Hostel Room Detail / छात्रावास कक्ष विवरण</legend>
        <div class="row justify-content-end">

            <div class="col-md-4 text-end">
                <div class="form-group">
                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                </div>
            </div>
        </div>
        <div class="row align-items-end">

            <div class="col-lg-12" runat="server" id="dvStudentDetails">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr role="row">
                                        <th scope="col">Sr.No./<br />
                                            क्र.सं.</th>
                                        <th scope="col">Hostel Name/<br />
                                            हॉस्टल का नाम</th>
                                        <th scope="col">Room Type/<br />
                                            कक्ष प्रकार   </th>
                                        <th scope="col">Hostel Room Number/<br />
                                            हॉस्टल का कक्ष नंबर </th>
                                        <th scope="col">No. of Bed/<br />
                                            बिस्तर की संख्या </th>
                                        <th scope="col">Rent Per Bed/<br />
                                            प्रति बिस्तर किराया</th>
                                        <th scope="col">Action/<br />कार्य
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr role="row" class="odd">
                                        <td align="center" valign="middle"><span>1</span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <span>Girls Hostel</span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <a>Single</a>

                                        </td>
                                        <td align="center" valign="middle">
                                            <a>201 </a>
                                        </td>

                                        <td align="center" valign="middle">
                                            <span>150</span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <span>Rs.1000/-</span>
                                        </td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>

                                </tbody>

                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </fieldset>--%>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
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
    </script>



    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var teacherSelect = document.getElementById('teacherSelect');
            var empid = document.getElementById('txtEid');
            var officename = document.getElementById('txtoffice');
            var wardenName = document.querySelector('input[placeholder="Enter Warden Name"]');
            var dob = document.getElementById('dob');
            var age = document.getElementById('txtAge');
            var gender = document.getElementById('ddl_gender');
            var mobileNo = document.getElementById('MobileNo');
            var email = document.querySelector('input[placeholder="Enter Email Id"]');
            var panNo = document.querySelector('input[placeholder="Enter PAN No."]');
            var aadhaarNo = document.querySelector('input[placeholder="Enter Aadhaar No."]');
            var idProof = document.getElementById('IdProofId');
            var workExperience = document.querySelector('input[placeholder="Enter Work Exeperience"]');
            var education = document.getElementById('Education');
            var address = document.getElementById('HostelAddress');

            teacherSelect.addEventListener('change', function () {
                if (teacherSelect.value === 'Yes') {
                    // Auto-fill fields for "Yes"
                    wardenName.value = 'Amit';
                    dob.value = '01-01-1991';
                    calculateAge(); // Ensure this function updates the age field
                    age.value = '34'; // Example Age
                    gender.value = 'Male';
                    mobileNo.value = '9876543210';
                    email.value = 'john.doe@example.com';
                    panNo.value = 'ABCDE1234F';
                    aadhaarNo.value = '1234-5678-9012';
                    idProof.value = '1'; // Assuming '1' corresponds to 'Adhaar Card'
                    workExperience.value = '5 years';
                    education.value = '3';
                    address.value = '123 Main Street, City, Country';
                    empid.value = '123456'
                    officename.value ='ABC'
                } else if (teacherSelect.value === 'No') {
                    // Clear fields for "No"
                    wardenName.value = '';
                    dob.value = '';
                    age.value = '';
                    gender.value = '0';
                    mobileNo.value = '';
                    email.value = '';
                    panNo.value = '';
                    aadhaarNo.value = '';
                    idProof.value = '0'; // Assuming '0' corresponds to '-- Select --'
                    workExperience.value = '';
                    education.value = '----';
                    address.value = '';
                    empid.value = ''
                    officename.value = ''
                }
            });
        });

        function calculateAge() {
            var dob = document.getElementById('dob').value;
            var age = document.getElementById('txtAge');
            if (dob) {
                var birthDate = new Date(dob);
                var today = new Date();
                var ageValue = today.getFullYear() - birthDate.getFullYear();
                var monthDifference = today.getMonth() - birthDate.getMonth();
                if (monthDifference < 0 || (monthDifference === 0 && today.getDate() < birthDate.getDate())) {
                    ageValue--;
                }
                age.value = ageValue;
            }
        }

    </script>
   

</asp:Content>

