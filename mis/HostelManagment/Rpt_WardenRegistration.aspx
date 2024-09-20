<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_WardenRegistration.aspx.cs" Inherits="mis_HostelManagment_Rpt_WardenRegistration" %>

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
                        <li class="breadcrumb-item">
                            <a href="#HostelReport" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HostelManagement')" aria-expanded="false"><span>Hostel Management Report</span></a>
                        </li>
                        <li class="breadcrumb-item">Warden Registration Report</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-12 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            Warden Registration Report / वार्डन पंजीकरण रिपोर्ट
                        </div>
                        <div>
                            <marquee style="width: 100%;"
                                onmouseover="this.stop();" onmouseout="this.start();"
                                direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                .
                            </marquee>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Warden Registration Report / वार्डन पंजीकरण रिपोर्ट</legend>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            Select Office Type<br />
                            कार्यालय प्रकार का चयन करें<span style="color: red">*</span>
                        </label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option>School</option>
                            <option>Office</option>
                            <option>Institude</option>
                        </select>
                    </div>

                    <div class="col-md-3">
                        <label>
                            Select Office Name<br />
                            कार्यालय नाम का चयन करें<span style="color: red">*</span></label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option value="3">GOVT HSS MAHARANA PRATAP</option>
                            <option value="3">GOVT HSS BOYS, KOTRA SULTANABAD</option>
                            <option value="3">GOVT HSS EX, SUBHASH,SHIVAJI</option>
                            <option value="3">GOVT HSS KHAJURI KALAN</option>
                        </select>
                    </div>

                    <div class="col-md-3">
                        <label>Is Warden Teacher ?
                            <br />क्या वार्डन शिक्षक है?<span style="color: red">*</span>
                        </label>
                        <select class="form-control select2" id="ddlSelect">
                            <option value="1">All</option>
                            <option value="2">Yes</option>
                            <option value="3">No</option>
                        </select>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="showHideRemarkView()">Search</button>
                        <a href="Rpt_WardenRegistration.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>

            <fieldset id="table1" style="display: none;">
                <legend>Details / विवरण</legend>
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

                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.
                                <br />
                                            क्रमांक</th>
                                        <th>Office Name
                                <br />
                                            कार्यालय का नाम
                                        </th>
                                        <th>Hostel Name
                                            <br />छात्रावास का नाम
                                        </th>
                                        <th>Is Warden Teacher<br />
                                            क्या वार्डन शिक्षक है?
                                        </th>
                                        <th>Warden Name<br />
                                            वार्डन का नाम</th>
                                        <th>Contact No.<br />
                                            संपर्क नंबर</th>
                                        <th>Action<br />
                                            कार्यवाही</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>GOVT HSS MAHARANA PRATAP</td>
                                        <td>Kanha Shri Boys and Girls Hostel</td>
                                        <td>Yes</td>
                                        <td>Sneha Thakur</td>
                                        <td>7823456790</td>
                                        <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></span></td>
                                    </tr>

                                    <tr>
                                        <td>2</td>
                                        <td>GOVT HSS BOYS, KOTRA SULTANABAD</td>
                                        <td>Bright Star Hostel</td>
                                        <td>Yes</td>
                                        <td>Simran Yadav</td>
                                        <td>6564896734</td>
                                        <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></span></td>
                                    </tr>

                                    <tr>
                                        <td>3</td>
                                        <td>GOVT HSS EX, SUBHASH,SHIVAJI</td>
                                        <td>Ma Narmada Girls Hostel</td>
                                        <td>No</td>
                                        <td>Tanuja Sharma</td>
                                        <td>9089234567</td>
                                        <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></span></td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset id="table2" style="display: none;">
                <legend>Details / विवरण</legend>
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

                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.
                    <br />
                                            क्रमांक</th>
                                        <th>Office Name
                    <br />
                                            कार्यालय का नाम
                                        </th>
                                        <th>Is Warden Teacher<br />
                                            क्या वार्डन शिक्षक है?
                                        </th>
                                        <th>Warden Name<br />
                                            वार्डन का नाम</th>
                                        <th>Contact No.<br />
                                            संपर्क नंबर</th>
                                        <th>Action<br />
                                            कार्यवाही</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>GOVT HSS MAHARANA PRATAP</td>
                                        <td>Kanha Shri Boys and Girls Hostel</td>
                                        <td>Yes</td>
                                        <td>Sneha Thakur</td>
                                        <td>7823456790</td>
                                        <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></span></td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header" id="myDIV3">
                            <h4 class="modal-title" id="myLargeModalLabel3">Warden Details / वार्डन विवरण</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>
                                <legend>Warden Details / वार्डन विवरण</legend>
                                <div class="row align-items-end mb-0">
                                    <div class="col-xl-9">
                                        <div class="row align-items-end">
                                            <div class="col-md-4">
                                                <div class="form-group">

                                                    <label>
                                                        Enter Warden Name<br />
                                                        वार्डन का नाम दर्ज करें<span style="color: red;">*</span></label>
                                                    <input type="text" class="form-control" value="Radhika Arora" readonly="readonly" />
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>
                                                        Select Date of Birth
                                    <br />
                                                        जन्म तिथि का चयन करें<span style="color: red">*</span></label>
                                                    <input name="ename" id="dob" type="date" class="form-control" autocomplete="off" value="1990-01-10" readonly="readonly" />
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>
                                                        Enter Age
                                    <br />
                                                        उम्र<span style="color: red">*</span></label>
                                                    <input readonly="readonly" name="ename" id="txtAge" type="text" class="form-control" autocomplete="off" placeholder="34" />
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>
                                                        Select Gender
                 <br />
                                                        लिंग का चयन करें<span style="color: red">*</span></label>
                                                    <select class="form-control select2" disabled="disabled">
                                                        <option value="--Select--">--Select--</option>
                                                        <option value="--Select--">Male</option>
                                                        <option selected="selected">Female</option>
                                                        <option value="--Select--">Other</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label asp-for="MobileNo" class="control-label">
                                                        Enter Mobile Number/<br />
                                                        मोबाइल नंबर दर्ज करें<span style="color: red"> *</span>
                                                    </label>
                                                    <input asp-for="MobileNo" id="MobileNo" placeholder="Enter Mobile Number" maxlength="10" class="form-control" onkeypress="return NumberOnly();" required data-msg="Field is requied" pattern="^([6-9][0-9]{9,11})$" value="8945678901" readonly="readonly"/>
                                                    <span asp-validation-for="MobileNo" class="text-danger"></span>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>
                                                        Enter Email Id
              <br />
                                                        ईमेल आई.डी.<span style="color: red">*</span>
                                                    </label>
                                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Email Id" value="radhika@gmail.com" readonly="readonly"/>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="col-xl-3">
                                        <div class="row align-items-end">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <img class="profileimage" src="../dist/images/avatar-13.png" id="uploadedImage" alt="Image Not Available"/>
                                                    <br />
                                                    <input type="file" id="fileInpaut" class="form-control" onchange="displayImage(this)"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row align-items-end">

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Enter PAN No. 
      <br />
                                                पैन न. दर्ज करें<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" autocomplete="off" value="AFZPK7190K" readonly="readonly"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Enter Aadhaar No.
                                                <br />
                                                आधार न. दर्ज करें<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" autocomplete="off" value="623187093465" readonly="readonly"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label asp-for="IdProofId" class="control-label">
                                                Select ID Proof Type/<br />
                                                आईडी प्रूफ प्रकार का चयन करें<span style="color: red"> *</span>
                                            </label>
                                            <select asp-for="IdProofId" id="IdProofId"
                                                class="form-select" disabled="disabled">
                                                <option value="">-- Select --</option>
                                                <option value="" selected="selected">Adhaar Card</option>
                                                <option value="">Voter ID</option>
                                                <option value="">Pan Card</option>
                                                <option value="">Driving Licence</option>
                                                <option value="">Passport</option>
                                            </select>
                                            <span asp-validation-for="IdProofId" class="text-danger"></span>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label asp-for="IdProofDoc" class="control-label">
                                                Upload Document/<br />
                                                दस्तावेज़ अपलोड करें<span style="color: red"> *</span>
                                            </label>
                                            <input type="text" asp-for="IdProofDoc" id="IdProofDoc" class="form-control" required data-msg="Field is requied" value="Adhar.jpg" readonly="readonly" />
                                            <span asp-validation-for="MobileNo" class="text-danger"></span>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label asp-for="IdProofId" class="control-label">
                                                Is a Teacher/<br />
                                                क्या यह शिक्षक हे?<span style="color: red"> *</span>
                                            </label>
                                            <select asp-for="IdProofId"
                                                class="form-select" disabled="disabled">
                                                <option value="">-- Select --</option>
                                                <option value="" selected="selected">Yes </option>
                                                <option value="">No </option>
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
                                            <input placeholder="Enter Work Exeperience" class="form-control" value="5 Years" readonly="readonly" />
                                            <span asp-validation-for="IdProofId" class="text-danger"></span>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Highest Qualification
            <br />
                                                उच्चतम योग्यता<span style="color: red">*</span></label>
                                            <select id="Education" class="form-control select2" disabled="disabled">
                                                <option value="----">--Select--</option>
                                                <option value="BALLB">BALLB</option>
                                                <option value="BachelorOfArts">Bachelor of Arts</option>
                                                <option value="BachelorOfCommerce" selected="selected">Bachelor of Commerce</option>
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

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label asp-for="Address" class="control-label">
                                                Enter Address/<br />
                                                पता दर्ज करें<span style="color: red"> *</span></label>
                                            <input asp-for="Address" id="HostelAddress" value="Mr John Smith. 132, My Street, Kingston, Bhopal" maxlength="150" multiple="true" class="form-control" required data-msg="Field is requied" readonly="readonly"/>
                                            <span asp-validation-for="Address" class="text-danger"></span>
                                        </div>
                                    </div>

                                </div>
                                <hr />
                                <div class="col-md-12 align-items-end">
                                    <div class="form-group">
                                        <button type="button" class="Alert-Confirmation btn btn-success w-lg btn-border" data-bs-dismiss="modal">Save</button>
                                        <a href="Rpt_WardenRegistration.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                                        <button type="button" class="btn btn-outline-info w-lg btn-border">Print Card</button>
                                    </div>
                                </div>
                            </fieldset>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script type="text/javascript">
        function showHideRemarkView() {
            var ddlSelect = document.getElementById('ddlSelect');
            //var remarkView = document.getElementById("RemarkView");

            if (ddlSelect.value == "1") {
                //remarkView.style.display = "initial";
                table1.style.display = "block";
                table2.style.display = "none";
            }
            else if (ddlSelect.value == "2") {
                table2.style.display = "block";
                table1.style.display = "none";
            }
            else {
                table1.style.display = "none";
                table2.style.display = "none";
            }
        }
    </script>
</asp:Content>

