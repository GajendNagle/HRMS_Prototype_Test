<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" %>

<script runat="server">

</script>

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
                        <li class="breadcrumb-item">
                            <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Master Data</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#OfficeMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')">
                                <span>Office Master Data</span></a>
                        </li>
                        <li class="breadcrumb-item">Directory Master Data</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                <%--इस पेज के माध्यम से स्कूल में उपयोग होने वाले फ़ोन नंबर्स का रजिस्ट्रेशन किया जाता हैं, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |--%>
            </marquee>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">New Project Creation</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Add Project Creation / नई परियोजना जोड़े</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                School/<br />
                                स्कूल <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="0">All</option>

                                <option value="3">Subhash  Higher Secondary School
                                </option>
                                <option value="4">Maharana Pratap School</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Work Category /<br />
                                कार्य की श्रेणी का चयन करे<span style="color: red">*</span></label>
                            <select id="work-category" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="A">स्कूल मरम्मत/निर्माण</option>
                                <option value="B">पेयजल व्यवस्था</option>
                                <option value="C">स्कूल मार्ग निर्माण</option>
                                <option value="D">अन्य कार्य</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3" id="school-subcategory-container">

                        <div class="form-group">
                            <label>
                                Select Work Subcategory /<br />
                                कार्य के नाम का चयन करे<span style="color: red">*</span></label>
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
                    <div class="col-md-3" id="hide">
                        <div class="form-group">
                            <label>
                                Enter Other Work Details /<br />
                                <%--This will be visible when select Other work form last  dropdown--%>
                                अन्य कार्य का विवरण दर्ज करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="Enter Other Work Details" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Work Place /<br />
                                कार्य स्थल दर्ज करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="Enter Work Place" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Enter Estimated Budget Cost(Approx. In Rs) / अनुमानित बजट दर्ज करे<span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="Enter Estimated Budget Cost(Approx. In Rs) Mobile No." />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>
                                Enter Work Description /<br />
                                कार्य का विवरण दर्ज करें<span style="color: red">*</span></label>
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
                        <h5 style="font-weight: 500;">Note :<span style="color: red;"> Please upload a PDF or JPG file that is less than 500 KB in size.</span></h5>
                    </div>
                    <div class="col-md-12 mt-3">
                        <table class="table table-bordered table-responsive-lg">
                            <thead>
                                <th>क्रं</th>
                                <th>दस्तावेज का नाम</th>
                                <th>दस्तावेज अपलोड</th>
                                <th>दस्तावेज देंखे</th>
                                <th>दस्तावेज हटाये</th>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td><b>Select Techincal Document Document :<span style="color: red">*</span><br />
                                        तकनिकी दस्तावेज का चयन करे :</b></td>
                                    <td>
                                        <input type="file" id="docDeathCertificate" asp-for="docDeathCertificate" required pattern=".+\.pdf$" data-pattern-msg="Only Pdf Accept" class="form-control getfileinfo" data-msg="Field is required." onchange="ValidateUploadFile(this,'lnkDeathofCertificate')" />
                                        <span id="spndocDeathCertificateName" style="display: none"></span>
                                        <span asp-validation-for="docDeathCertificate" class="text-danger"></span>
                                    </td>
                                    <td>
                                        <a id="lnkDeathofCertificate" href="#" class="hideanc btn btn-block shadow btn-outline-success btn-rounded">View</a></td>
                                    <td><a id="lnkDeathofCertificate" href="#" class="hideanc btn btn-block shadow btn-outline-danger btn-rounded">Delete</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td><b>Select Civil Document Document :<span style="color: red">*</span><br />
                                        सिविल दस्तावेज का चयन कर :</b></td>
                                    <td>
                                        <input id="docDateofBirth" type="file" asp-for="docDateofBirth" class="form-control getfileinfo" required onchange="ValidateUploadFile(this,'lnkDob')" pattern=".+\.pdf$" data-pattern-msg="Only Pdf Accept" />
                                        <span id="spndocDateofBirthName" style="display: none;"></span>
                                        <span asp-validation-for="docDateofBirth" class="text-danger"></span>
                                    </td>
                                    <td>
                                        <a id="lnkDeathofCertificate" href="#" class="hideanc btn btn-block shadow btn-outline-success btn-rounded">View</a></td>
                                    <td><a id="lnkDeathofCertificate" href="#" class="hideanc btn btn-block shadow btn-outline-danger btn-rounded">Delete</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td><b>Select Elecrtrical Document Document :<span style="color: red">*</span><br />
                                        इलेक्ट्रिकल  दस्तावेज का चयन करे :</b></td>
                                    <td>
                                        <input id="docResidenceCertificate" type="file" asp-for="docResidenceCertificate" required class="form-control getfileinfo" onchange="ValidateUploadFile(this,'lnkDomicile')" pattern=".+\.pdf$" data-pattern-msg="Only Pdf Accept" />
                                        <span id="spndocResidenceCertificateName" style="display: none"></span>
                                        <span asp-validation-for="docResidenceCertificate" class="text-danger"></span>
                                    </td>
                                    <td>
                                        <a id="lnkDeathofCertificate" href="#" class="hideanc btn btn-block shadow btn-outline-success btn-rounded">View</a></td>
                                    <td>
                                        <a id="lnkDeathofCertificate" href="#" class="hideanc btn btn-block shadow btn-outline-danger btn-rounded">Delete</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td><b>Select Project Document :<span style="color: red">*</span><br />
                                        परियोजना के दस्तावेज का चयन करे :</b></td>
                                    <td>
                                        <input id="docCasteCertificate" type="file" class="form-control getfileinfo" asp-for="docCasteCertificate" onchange="ValidateUploadFile(this,'lnkCaste')" pattern=".+\.pdf$" data-pattern-msg="Only Pdf Accept" />
                                        <span id="spndocCasteCertificateName" style="display: none"></span>
                                        <span asp-validation-for="docCasteCertificate" class="text-danger"></span>
                                    </td>
                                    <td>
                                        <a id="lnkDeathofCertificate" href="#" class="hideanc btn btn-block shadow btn-outline-success btn-rounded">View</a></td>
                                    <td>
                                        <a id="lnkDeathofCertificate" href="#" class="hideanc btn btn-block shadow btn-outline-danger btn-rounded">Delete</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td><b>Select Other Document :<br />
                                        अन्य दस्तावेज का चयन करे :</b></td>
                                    <td>
                                        <input id="docHscOrHsscCertificate" type="file" asp-for="docHscOrHsscCertificate" class="form-control getfileinfo" required onchange="ValidateUploadFile(this,'lnkHSC')" pattern=".+\.pdf$" data-pattern-msg="Only Pdf Accept" />
                                        <span id="spndocHscOrHsscCertificateName" style="display: none"></span>
                                        <span asp-validation-for="docHscOrHsscCertificate" class="text-danger"></span>
                                    </td>
                                    <td>
                                        <a id="lnkDeathofCertificate" href="#" class="hideanc btn btn-block shadow btn-outline-success btn-rounded">View</a></td>
                                    <td>
                                        <a id="lnkDeathofCertificate" href="#" class="hideanc btn btn-block shadow btn-outline-danger btn-rounded">Delete</a>
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

                        <input type="button" value="SAVE" id="submit-btn" class="btn btn-outline-success btn-border w-lg" />
                        <a asp-action="Create" class="btn btn-outline-danger btn-border w-lg">CLEAR</a>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
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
</asp:Content>

