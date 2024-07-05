﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="CreateProject.aspx.cs" Inherits="mis_Development_CreateProject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        .form-group {
            margin-bottom: 1em;
        }

        #hide {
            display: none;
        }

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
                        <%--   <li class="breadcrumb-item">
                            <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Master Data</span></a>
                        </li>--%>
                        <li class="breadcrumb-item">
                            <a href="#Development" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('Development')">
                                <span>Development</span></a>
                        </li>
                        <li class="breadcrumb-item">Project Creation </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से स्कूल में उपयोग होने वाले फ़ोन नंबर्स का रजिस्ट्रेशन किया जाता हैं, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </marquee>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">New Project Creation / नई परियोजना जोड़े</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Project Creation/परियोजना निर्माण</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter OIS Code<br />
                                OIS कोड दर्ज करें <span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="Enter  OIS Code" />
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">

                            <input type="button" value="Search" id="BtnSurch" onclick="Show()" class="btn btn-outline-success btn-border w-lg" />
                            <a href="CreateProject.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>

                        </div>
                    </div>
                </div>
            </fieldset>
            <div id="Show" style="display: none;">
                <fieldset>
                    <legend>Project Creation Information/परियोजना निर्माण सूचना</legend>
                    <div class="row align-items-end">

                        <%--   <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                State Name<br />
                                राज्य का नाम<span style="color: red">*</span></label>
                            <select class="form-control" readonly="true">
                                <option value="Bhopal">Madhya Pradesh</option>
                                <option value="Select">Select</option>
                                <option value="Bhopal">Madhya Pradesh</option>
                                <option value="Bhopal">Chhattisgarh</option>
                                <option value="Rajasthan">Rajasthan</option>
                                <option value="Maharashtra">Maharashtra</option>
                                <option value="Nagaland">Nagaland</option>
                                <option value="Nashik">Nashik</option>
                                <option value="West">West</option>
                                <option value="Bengal">Bengal</option>
                                <option value="Telangana">Telangana</option>
                                <option value="Assam">Assam</option>
                                <option value="Tripura">Tripura</option>
                                <option value="Tamil">Tamil</option>
                                <option value="Nadu">Nadu</option>
                                <option value="Gujarat">Gujarat</option>
                                <option value="Sikkim">Sikkim</option>
                                <option value="Andhra">Andhra Pradesh</option>
                                <option value="Uttar">Uttar Pradesh</option>
                                <option value="Punjab">Punjab</option>
                                <option value="Karnataka">Karnataka</option>
                                <option value="Meghalaya">Meghalaya</option>
                                <option value="Uttarakhand">Uttarakhand</option>
                                <option value="Goa">Goa</option>
                                <option value="Haryana">Haryana</option>
                                <option value="Mizoram">Mizoram</option>
                                <option value="Arunachal">Arunachal Pradesh</option>
                                <option value="Bihar">Bihar</option>
                                <option value="Himachal">Himachal</option>
                                <option value="Kerala">Kerala</option>
                                <option value="Jharkhand">Jharkhand</option>
                                <option value="Orissa">Orissa</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Division Name
                                    <br />
                                संभाग  का नाम<span style="color: red">*</span>
                            </label>
                            <select class="form-control" readonly="true">
                                <option value="Bhopal">Bhopal</option>
                                <option value="Select">Select</option>
                                <option value="Bhopal">Bhopal</option>
                                <option value="Indore">Indore</option>
                                <option value="Gwalior">Gwalior</option>
                                <option value="Jabalpur">Jabalpur</option>
                                <option value="Ujjain">Ujjain</option>
                                <option value="Sagar">Sagar</option>
                                <option value="Rewa">Rewa</option>
                                <option value="Chambal">Chambal</option>
                                <option value="Shahdol">Shahdol</option>
                                <option value="Hoshangabad">Hoshangabad</option>
                                <option value="Narmadapuram">Narmadapuram</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                District Name<br />
                                ज़िला  का नाम<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control " readonly="true">
                                <option value="Bhopal">Bhopal</option>
                                <option value="Select">Select</option>
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
                    </div>--%>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Block Name
                                    <br />
                                    विकासखण्ड  का नाम<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl03" class="form-control" readonly="true">
                                    <option value="Agar">Hoshur</option>
                                    <option value="Select">Select</option>
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
                                <label>
                                    Sankul Code
                                <br />
                                    संकुल कोड<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" value="45854751-Kendriya Vidhyalaya"
                                    readonly />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    School  Code
              <br />
                                    संकुल कोड<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" value="45854751"
                                    readonly />
                            </div>
                        </div>


                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Principal Name<br />
                                    प्राचार्य का नाम <span style="color: red">*</span></label>
                                <input type="text" class="form-control" autocomplete="off" value="Neha Gupta" readonly />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Principal Mob.No<br />
                                    प्राचार्य मोबाइल नं <span style="color: red">*</span></label>
                                <input type="text" class="form-control" autocomplete="off" value="9632587410" readonly />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>
                                      Address
                     <br />
                                    पता <span style="color: red">*</span></label>
                                <textarea class="form-control  w-100"
                                    readonly rows="1" autocomplete="off" placeholder="Bhopal M.P"></textarea>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Add Project Creation / नई परियोजना जोड़े</legend>
                    <div class="row align-items-end">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>
                                    Select Work Category
                                <br />
                                    कार्य की श्रेणी का चयन करें<span style="color: red">*</span></label>
                                <select id="work-category" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="A">स्कूल मरम्मत/निर्माण</option>
                                    <option value="B">पेयजल व्यवस्था</option>
                                    <option value="C">स्कूल मार्ग निर्माण</option>
                                    <option value="D">अन्य कार्य</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4" id="school-subcategory-container">

                            <div class="form-group">
                                <label>
                                    Select Work Subcategory
                                <br />
                                    कार्य के प्रकार का चयन करें<span style="color: red">*</span></label>
                                <select id="school-subcategory" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="A">कक्षा निमार्ण</option>
                                    <option value="A">इमारत मरम्मत</option>
                                    <option value="A">स्कूल नया निमार्ण</option>
                                    <option value="B">हेंडपंप खनन</option>
                                    <option value="B">बोरबेल खनन</option>
                                    <option value="B">पानी की टंकी निर्माण</option>
                                    <option value="B">पेयजल हेतु पाइपलाइन निर्माण</option>
                                    <option value="C">WBM / कच्ची सड़क निमार्ण</option>
                                    <option value="C">CC Road निर्माण</option>
                                    <option value="C">मार्ग मरम्मत</option>
                                    <option value="C">मुरम रोड निर्माण</option>
                                    <option value="C">डामर रोड निर्माण</option>
                                    <option value="D">नाली निर्माण</option>
                                    <option value="D">पेपर ब्लाक निर्माण</option>

                                    <%--selection of this next textbox will visible--%>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4" id="hide">
                            <div class="form-group">
                                <label>
                                    Enter Other Work Details
                                <br />
                                    <%--This will be visible when select Other work form last  dropdown--%>
                                अन्य कार्य का विवरण दर्ज करेंं<span style="color: red">*</span></label>
                                <input type="text" class="form-control" autocomplete="off" placeholder="Enter Other Work Details" />
                            </div>
                        </div>
                        <%-- <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Work Place
                                <br />
                                कार्य स्थल दर्ज करेंं<span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="Enter Work Place" />
                        </div>
                    </div>--%>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>
                                    Enter Estimated Cost Amount
                                <br />
                                    अनुमानित राशि दर्ज करें<span style="color: red">*</span></label>
                                <input type="text" class="form-control" autocomplete="off" placeholder="Enter Estimated Cost Amount" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>
                                    Enter Work Description
                                <br />
                                    कार्य का विवरण दर्ज करेंं<span style="color: red">*</span></label>
                                <input type="text" class="form-control" autocomplete="off" placeholder="Enter Work Description" />
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <input type="hidden" asp-for="PrevEmpId" id="hdnPrevEmpId" />
                    <input type="hidden" asp-for="CompassionId" id="hdnCompassionId" />
                    <legend>Work Related Important Document / कार्य संबंधी आवश्यक दस्तावेज</legend>
                    <div class="row">
                        <div>
                            <h5 style="font-weight: 200;">Note :<span style="color: red;"> Please upload a PDF or JPG file that is less than 500 KB in size.</span></h5>
                        </div>
                        <div class="col-md-12 mt-3">
                            <table class="table table-bordered table-responsive-lg">
                                <thead>
                                    <th>Sr.No.<br />
                                        सरल क्रमांक</th>
                                    <th>Document Name
                                    <br />
                                        दस्तावेज का नाम</th>
                                    <th>Document Upload
                                    <br />
                                        दस्तावेज अपलोड</th>
                                    <th>View Document
                                    <br />
                                        दस्तावेज देंखे</th>
                                    <th>Remove Document
                                    <br />
                                        दस्तावेज हटाये</th>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td><b>Upload Techincal Document
                                        <br />
                                            तकनीकी दस्तावेज़ अपलोड करें </b></td>
                                        <td>
                                            <input type="file" id="docDeathCertificate" asp-for="docDeathCertificate" required pattern=".+\.pdf$" data-pattern-msg="Only Pdf Accept" class="form-control getfileinfo" data-msg="Field is required." onchange="ValidateUploadFile(this,'lnkDeathofCertificate')" />
                                            <span id="spndocDeathCertificateName" style="display: none"></span>
                                            <span asp-validation-for="docDeathCertificate" class="text-danger"></span>
                                        </td>
                                        <td class="text-center">
                                            <a id="lnkDeathofCertificate" href="#" class="clore-primary text-center"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                        <td class="text-center"><a id="lnkDeathofCertificate" href="#" class="btn-outline-danger btn-rounded"><i class="fa fa-trash"></i></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td><b>Upload Civil Document
                                        <br />
                                            सिविल दस्तावेज अपलोड करें </b></td>
                                        <td>
                                            <input id="docDateofBirth" type="file" asp-for="docDateofBirth" class="form-control getfileinfo" required onchange="ValidateUploadFile(this,'lnkDob')" pattern=".+\.pdf$" data-pattern-msg="Only Pdf Accept" />
                                            <span id="spndocDateofBirthName" style="display: none;"></span>
                                            <span asp-validation-for="docDateofBirth" class="text-danger"></span>
                                        </td>
                                        <td class="text-center">
                                            <a id="lnkDeathofCertificate" href="#" class="clore-primary text-center"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                        <td class="text-center"><a id="lnkDeathofCertificate" href="#" class="btn-outline-danger btn-rounded"><i class="fa fa-trash"></i></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td><b>Upload Elecrtrical Document
                                        <br />
                                            इलेक्ट्रिकल दस्तावेज अपलोड करें </b></td>
                                        <td>
                                            <input id="docResidenceCertificate" type="file" asp-for="docResidenceCertificate" required class="form-control getfileinfo" onchange="ValidateUploadFile(this,'lnkDomicile')" pattern=".+\.pdf$" data-pattern-msg="Only Pdf Accept" />
                                            <span id="spndocResidenceCertificateName" style="display: none"></span>
                                            <span asp-validation-for="docResidenceCertificate" class="text-danger"></span>
                                        </td>
                                        <td class="text-center">
                                            <a id="lnkDeathofCertificate" href="#" class="clore-primary text-center"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                        <td class="text-center"><a id="lnkDeathofCertificate" href="#" class="btn-outline-danger btn-rounded"><i class="fa fa-trash"></i></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td><b>Upload Project Document
                                        <br />
                                            परियोजना के दस्तावेज अपलोड करें </b></td>
                                        <td>
                                            <input id="docCasteCertificate" type="file" class="form-control getfileinfo" asp-for="docCasteCertificate" onchange="ValidateUploadFile(this,'lnkCaste')" pattern=".+\.pdf$" data-pattern-msg="Only Pdf Accept" />
                                            <span id="spndocCasteCertificateName" style="display: none"></span>
                                            <span asp-validation-for="docCasteCertificate" class="text-danger"></span>
                                        </td>
                                        <td class="text-center">
                                            <a id="lnkDeathofCertificate" href="#" class="clore-primary text-center"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                        <td class="text-center"><a id="lnkDeathofCertificate" href="#" class="btn-outline-danger btn-rounded"><i class="fa fa-trash"></i></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td><b>Upload Other Document
                                        <br />
                                            अन्य दस्तावेज अपलोड करें </b></td>
                                        <td>
                                            <input id="docHscOrHsscCertificate" type="file" asp-for="docHscOrHsscCertificate" class="form-control getfileinfo" required onchange="ValidateUploadFile(this,'lnkHSC')" pattern=".+\.pdf$" data-pattern-msg="Only Pdf Accept" />
                                            <span id="spndocHscOrHsscCertificateName" style="display: none"></span>
                                            <span asp-validation-for="docHscOrHsscCertificate" class="text-danger"></span>
                                        </td>
                                        <td class="text-center">
                                            <a id="lnkDeathofCertificate" href="#" class="clore-primary text-center"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                        <td class="text-center"><a id="lnkDeathofCertificate" href="#" class="btn-outline-danger btn-rounded"><i class="fa fa-trash"></i></a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </fieldset>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">

                            <input type="button" value="SAVE" id="submit-btn" class="Alert-Save btn btn-outline-success btn-border w-lg" />
                            <a href="CreateProject.aspx" class="btn btn-outline-danger btn-border w-lg">CLEAR</a>

                        </div>
                    </div>

                </div>


            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>

        debugger
        function Show() {
            document.getElementById("Show").style.display = 'block';
        }

    </script>
    <script>
        $(document).ready(function () {
            $('.select2').select2();

            const subcategoryOptions = {
                'A': [
                    { value: 'A1', text: 'कक्षा निमार्ण' },
                    { value: 'A2', text: 'इमारत मरम्मत' },
                    { value: 'A3', text: 'स्कूल नया निमार्ण' }
                ],
                'B': [
                    { value: 'B1', text: 'हेंडपंप खनन' },
                    { value: 'B2', text: 'बोरबेल खनन' },
                    { value: 'B3', text: 'पानी की टंकी निर्माण' },
                    { value: 'B4', text: 'पेयजल हेतु पाइपलाइन निर्माण' }
                ],
                'C': [
                    { value: 'C1', text: 'WBM / कच्ची सड़क निमार्ण' },
                    { value: 'C2', text: 'CC Road निर्माण' },
                    { value: 'C3', text: 'मार्ग मरम्मत' },
                    { value: 'C4', text: 'मुरम रोड निर्माण' },
                    { value: 'C5', text: 'डामर रोड निर्माण' }
                ],
                'D': [
                    { value: 'D1', text: 'नाली निर्माण' },
                    { value: 'D2', text: 'पेपर ब्लाक निर्माण' },
                    { value: 'D3', text: 'अन्य कार्य' }
                ]
            };

            $('#work-category').change(function () {
                const selectedCategory = $(this).val();
                const $subcategory = $('#school-subcategory');
                $subcategory.empty();
                $subcategory.append('<option value="--Select--">--Select--</option>');

                if (selectedCategory === 'D') {
                    $('#school-subcategory-container').hide();
                    $('#hide').show();
                } else {
                    $('#school-subcategory-container').show();
                    $('#hide').hide();

                    if (subcategoryOptions[selectedCategory]) {
                        subcategoryOptions[selectedCategory].forEach(option => {
                            $subcategory.append(`<option value="${option.value}">${option.text}</option>`);
                        });
                    }
                }
            });

            $('#school-subcategory').change(function () {
                const selectedSubcategory = $(this).val();
                if (selectedSubcategory === 'D3') { // Assuming 'D3' is the value for "अन्य कार्य"
                    $('#hide').show();
                } else {
                    $('#hide').hide();
                }
            });
        });
    </script>
    <script>
        debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Save this record ?",
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
                                text: 'Project Record  Save Successfully! Project Code is P0019',
                                timer: 2000000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )

                        }
                    })
                });
            },

                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>
</asp:Content>

