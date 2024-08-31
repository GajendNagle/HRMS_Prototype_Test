<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SecurityGourd.aspx.cs" Inherits="mis_HostelManagment_SecurityGourd" %>

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
                        <li class="breadcrumb-item">Security Guard Registration</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">Security Guard Registration / सुरक्षा गार्ड पंजीकरण
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Add Security Guard / सुरक्षा गार्ड जोड़ें</legend>
                <div class="row align-items-end mb-0">
                    <div class="col-xl-9">
                        <div class="row align-items-end">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Enter Security Guard Name<br />
                                        सुरक्षा गार्ड का नाम दर्ज करें<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Security Guard Name" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Select Date of Birth
                                    <br />
                                        जन्म तिथि का चयन करें<span style="color: red">*</span></label>
                                    <input name="ename" id="dob" type="date" class="form-control" autocomplete="off" onchange="calculateAge()" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Age
                                    <br />
                                        उम्र<span style="color: red">*</span></label>
                                    <input readonly="readonly" name="ename" id="txtAge" type="text" class="form-control" autocomplete="off" placeholder=" Age" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Select Gender
                                                <br />
                                        लिंग का चयन करें<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="--Select--">Male</option>
                                        <option value="--Select--">Female</option>
                                        <option value="--Select--">Other</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label asp-for="MobileNo" class="control-label">
                                        Enter Mobile Number<br />
                                        मोबाइल नंबर दर्ज करें<span style="color: red">*</span>
                                    </label>
                                    <input asp-for="MobileNo" id="MobileNo" placeholder="Enter Mobile Number" maxlength="10" class="form-control" onkeypress="return NumberOnly();" required data-msg="Field is requied" pattern="^([6-9][0-9]{9,11})$" />
                                    <span asp-validation-for="MobileNo" class="text-danger"></span>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Enter Email Id
              <br />
                                        ईमेल आई.डी. दर्ज करें<span style="color: red">*</span>
                                    </label>
                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Email Id" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3">
                        <div class="row align-items-end">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <img class="profileimage" src="../dist/images/avatar-13.png" style="margin-bottom: 35px; margin-left: 30px" id="uploadedImage" alt="Image Not Available" />
                                    <br />
                                    <input type="file" id="fileInpaut" class="form-control" onchange="displayImage(this)" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label asp-for="IdProofId" class="control-label">
                                Select ID Proof Type<br />
                                आईडी प्रूफ प्रकार का चयन करें<span style="color: red">*</span>
                            </label>
                            <select asp-for="IdProofId" id="IdProofId"
                                class="form-select">
                                <option value="">-- Select --</option>
                                <option value="">Adhaar Card</option>
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
                                Upload Document<br />
                                दस्तावेज़ अपलोड करें<span style="color: red">*</span>
                            </label>
                            <input type="file" asp-for="IdProofDoc" id="IdProofDoc" class="form-control" required data-msg="Field is requied" accept="image/*" />
                            <span asp-validation-for="MobileNo" class="text-danger"></span>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="control-label">
                                Enter Work Exeperience<br />
                                कार्य अनुभव दर्ज करें<span style="color: red">*</span>
                            </label>
                            <input class="form-control" placeholder="Enter Work Exeperience" required data-msg="Field is requied" />
                            <span asp-validation-for="IdProofId" class="text-danger"></span>
                        </div>
                    </div>


                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Highest Qualification
            <br />
                                उच्चतम योग्यता<span style="color: red">*</span></label>
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
                    <div class="col-md-3">
                        <div class="form-group">
                            <label asp-for="Address" class="control-label">
                                Enter Company Name<br />
                                कंपनी का नाम दर्ज करें<span style="color: red">*</span></label>
                            <input id="df" placeholder=" Enter Company Name" maxlength="150"  class="form-control" required data-msg="Field is requied" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label asp-for="Address" class="control-label">
                                Enter Address<br />
                                पता दर्ज करें<span style="color: red">*</span></label>
                            <input  id="HostelAddress" placeholder="Enter Address" maxlength="150" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <div class="form-group">
                            <button type="button" class="Alert-Confirmation btn btn-success w-lg btn-border" onclick="document.getElementById('GaurdInformation').style.display = 'block'">Save</button>
                            <a href="SecurityGourd.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="GaurdInformation" style="display: none;">
                <legend>Security Gaurd Detail / सुरक्षा गार्ड विवरण</legend>
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
                <div class="row">
                    <div class="col-lg-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.<br />
                                            क्र.सं.</th>
                                        <th>Security Gaurd Name<br />
                                            सुरक्षा गार्ड का नाम</th>
                                        <th>Mobile Number<br />
                                            मोबाइल नंबर</th>
                                        <th>Email<br />
                                            ईमेल </th>
                                        <th>Age<br />
                                            उम्र</th>
                                        <th>Gender<br />
                                            लिंग</th>
                                        <th>Highest Qualification<br />
                                            उच्चतम योग्यता</th>
                                        <th>Work Experience
                                                <br />
                                            कार्य अनुभव
                                        </th>
                                        <th>Action
                                            <br />
                                            कार्रवाई
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1
                                        </td>
                                        <td>Rahul
                                        </td>
                                        <td>8956231476
                                        </td>
                                        <td>Rahul@gmail.com</td>
                                        <td>26</td>
                                        <td>Male</td>
                                        <td>BALLB</td>
                                        <td>5</td>
                                        <td><a class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></a>
                                            <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

