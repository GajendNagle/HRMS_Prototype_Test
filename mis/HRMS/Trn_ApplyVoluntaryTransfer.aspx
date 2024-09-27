<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_ApplyVoluntaryTransfer.aspx.cs" Inherits="mis_HRMS_Trn_ApplyVoluntaryTransfer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/js/solid.min.js" integrity="sha512-L2znesU64H/rvdnaD4WBaRAmEcGvhBsVLXygPkhpgpUwcgjymD4amy68shdgZgLiIvyvV/vHRXAM4mTV8xqp+Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <style>
        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }

        #divtxtpanelname {
            display: none;
        }

        #divtxtvacantpost {
            display: none;
        }

        #hideaddbtn {
            display: none;
        }

        @media print {
            #diva {
                color: white;
            }
        }

        .specifyColor {
            accent-color: purple;
        }

        ::placeholder {
            color: red;
            opacity: 1; /* Firefox */
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
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#VoluntaryTransfer" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Transfer Request</span></a>
                        </li>
                        <li class="breadcrumb-item">Apply Voluntary Transfer</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <%--<div class="row mb-1">
        <div class="col-md-4 ">

            <img src="../../img/OTTMS.png" style="height: 70px" itle="Compassionate Appointment Facilitation &amp; Monitoring System (CAFMS)">
            <p></p>
        </div>
    </div>--%>
    <div class="card border card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-12 col-md-12">
                    <div class="marqueecontainer border-0">
                        <div class="headertext btn btn-primary rounded-pill py-2 d-flex align-items-center">
                            स्वैच्छिक स्थानांतरण के लिए आवेदन विवरण
                        </div>
                        <div>
                            <marquee style="width: 100%;"
                                onmouseover="this.stop();" onmouseout="this.start();"
                                direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black mt-1">
                                कर्मचारी इस पेज के माध्यम से स्वैच्छिक स्थानांतरण के लिए आवेदन कर सकते हैं।
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">

            <fieldset>
                <legend class="border border-dark border-2">Personal Information / व्यक्तिगत जानकारी</legend>

                <div class="row align-items-baseline">
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">

                        <label>
                            Employee Name (Code)/<br />
                            कर्मचारी का नाम (कोड)</label>
                        <input type="text" class="form-control text-dark" placeholder="Sajeda  Hameed (AA1142)" value="Sajeda  Hameed (AA1142)" style="color: black" disabled />
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                        <label>
                            Unique ID/ 
                                        <br />
                            यूनिक आई.डी</label>
                        <input name="txtUniqueID" type="text" class="form-control" disabled autocomplete="off" placeholder="AA1142" style="color: black" value="AA1142" />
                    </div>


                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">

                        <label>
                            Designation/
                                        <br />
                            पदनाम</label>
                        <input name="txtDesignation" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="Prathmik Shikshak" value="Prathmik Shikshak" />

                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">

                        <label>
                            District Name (Code)/<br />
                            जिले का नाम (कोड)</label>
                        <input name="txtDistrict" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="Bhopal (32)" value="Bhopal (32)" />
                    </div>


                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                        <label>
                            Block Name (Code)/
                                    <br />
                            विकासखण्ड का नाम (कोड)</label>
                        <input name="txtBlock" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="Phanda URBAN- New City (211)" value="Phanda URBAN- New City (211)" />
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                        <label>
                            Sankul Name (Code)/<br />
                            संकुल का नाम (कोड)</label>
                        <input name="txtSankulName" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="0" value=" 0" />
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                        <label>
                            OIS (UDISE Code)/<br />
                            ओ.आई.एस.(यूडाइस कोड)</label>
                        <input name="txtOsiCode" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="GOVT HSS BAGH SEVANIA (23320302539)" value="GOVT HSS BAGH SEVANIA (23320302539)" />
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                        <label>
                            Area (Urban/Rural)/<br />
                            क्षेत्र (शहरी/ग्रामीण)</label>
                        <input name="txtArea" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="NA" value="NA" />
                    </div>



                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                        <label>
                            Teaching Panel/<br />
                            शिक्षण का पैनल</label>
                        <input name="txtTeachingPanel" id="txtDOB" class="form-control" disabled style="color: black" autocomplete="off" value="SSS-2 Social Science" />
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">

                        <label>
                            Subject of Teaching/<br />
                            शिक्षण का विषय
                        </label>
                        <input name="txtSubject" id="txtAgeCrrnt" class="form-control" disabled style="color: black" autocomplete="off" value="HM-PS" />
                    </div>


                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                        <label>
                            Date Of Birth/<br />
                            जन्मतिथि</label>
                        <input name="txtDob" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="05/10/1962" value="05/10/1962" />
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                        <label>
                            Current Age (In Years)/<br />
                            वर्तमान आयु (वर्षों में)</label>
                        <input name="txtAge" type="text" class="form-control" disabled style="color: black" autocomplete="off" value="61" />
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">

                        <label>
                            Professional Qualification/<br />
                            व्यावसायिक योग्यता</label>
                        <input name="txtQualification" id="txtDatePostedCrrnOrg" class="form-control" disabled style="color: black" autocomplete="off" value="NA" />
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">

                        <label>
                            Posting Date in Current Organization/<br />
                            वर्तमान संस्था में पदस्थी दिनांक<span style="color: red">*</span></label>
                        <input name="txtPostingDate" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="04/09/2024" value="04/09/2024" />
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-3 mt-4">

                        <label>
                            Service Duration in Current Organization (In Years)/<br />
                            वर्तमान संस्था में कुल सेवा अवधि (वर्षो में)</label>
                        <input name="txtServiceDurantionYears" type="text" class="form-control" disabled style="color: black" autocomplete="off" placeholder="0" value="0" />
                    </div>



                </div>
            </fieldset>

            <%-- <div class="card-body">--%>


            <fieldset>
                <legend class="border border-dark border-2 ">Reason for Voluntary Transfer / स्वैच्छिक स्थानांतरण का कारण</legend>
                <ul style="list-style-type: disc">
                    <li>
                        <div class="row">
                            <div class="col-md-12 mt-3">
                                <label>
                                    Are you suffering from serious illness (if yes give description)<br />
                                    क्या आप गंभीर बीमारी से पीड़ित हैं (यदि हाँ तो विवरण दें)<span style="color: red">*</span></label>&emsp;
                    <input type="radio" name="SeriousIllness" value="Yes" onchange="SeriousIllnessChange(this);" class="specifyColor" /><label>Yes</label>&emsp;
                    <input type="radio" name="SeriousIllness" value="No" checked onchange="SeriousIllnessChange(this);" class="specifyColor" /><label>No</label>&emsp;&emsp;&emsp;
                            </div>
                        </div>
                        <div class="row align-items-baseline" id="divSeriousIllness" style="display: none;">
                            <div class="col-md-12 col-lg-6 ">
                                <label>
                                    Select Type of Critical Illness 
                                                        <br />
                                    गंभीर बीमारी का चयन करें<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option>Select</option>
                                    <option value="Cancer/ कैंसर">Cancer/ कैंसर</option>
                                    <option value="Brain Tumor/ मस्तिष्क का ट्यूमर">Brain Tumor/ मस्तिष्क का ट्यूमर</option>
                                    <option value="Kidney Transplant/ किडनी प्रत्यारोपण">Kidney Transplant/ किडनी प्रत्यारोपण</option>
                                    <option value="Open Heart Bypass Surgery /ओपन हार्ट बाईपास सर्जरी">Open Heart Bypass Surgery /ओपन हार्ट बाईपास सर्जरी</option>
                                    <option value="Parylasis / पक्षाघात">Parylasis / पक्षाघात</option>
                                </select>
                            </div>

                            <div class="col-md-12 col-lg-6 ">

                                <label>
                                    Illness Certificate from the Medical Board<br />
                                    मेडिकल बोर्ड से बीमारी का प्रमाण पत्र<span style="color: red">*</span></label>
                                <input name="txtCertMedicalBoard" type="file" class="border form-control" />
                                <span id="IllnesscertificateMessage" style="display: none; color: red;">Illness Certificate is Required in PDF File Format,Max Size (500 KB).</span>
                            </div>

                        </div>

                    </li>
                    <li>

                        <div class="row">
                            <div class="col-md-12 mt-3">

                                <label>
                                    Status of Disability (Yes Or No) If Yes, Type and Percentage of disability (Attach Certificate)<br />
                                    विकलांगता की स्थिति (हाँ अथवा नहीं) यदि हाँ तो - विकलांगता का प्रकार एवं प्रतिशत (प्रमाण पत्र संलग़ करें)<span style="color: red">*</span></label>&emsp;&emsp;
            <input type="radio" name="Disability" value="Yes" onchange="DisabilityStatusChange(this);" class="specifyColor" /><label>Yes</label>&emsp;
                                        <input type="radio" name="Disability" value="No" checked onchange="DisabilityStatusChange(this);" class="specifyColor" /><label>No</label>&emsp;&emsp;&emsp;
  
                                                <div id="fileCertMedicalBoard" style="display: none;">
                                                    <div class="row align-items-baseline mt-4">
                                                        <div class="col-md-12 col-lg-6 col-xl-4 ">
                                                            <label>
                                                                Select Type of Disability/<br />
                                                                विकलांगता का प्रकार चयन करें<span style="color: red;">*</span></label>
                                                            <select id="ddlHandiCaped" class="form-control select2">
                                                                <option>Select</option>
                                                                <option value="Cancer/ कैंसर">Blindnes/अंधापन</option>
                                                                <option value="Low Vision/कम दृष्टि">Low Vision/कम दृष्टि</option>
                                                                <option value="Hearing Impaiment/ श्रवण हानि">Hearing Impaiment/ श्रवण हानि</option>
                                                                <option value="Speech and Language / वाणी और भाषा">Speech  Language / वाणी और भाषा</option>
                                                                <option value="Loco Moto Disability / लोको मोटो विकलांगता">Loco Moto Disability / लोको मोटो विकलांगता</option>

                                                                <%--                                                                <option value="Mental Illness /मानसिक बिमारी">Mental Illness /मानसिक बिमारी</option>
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
                                                                <option value="Parkinson's Disease / पार्किंसंस रोग">Parkinson's Disease / पार्किंसंस रोग</option>--%>
                                                            </select>
                                                        </div>
                                                        <div id="HandicapePercentage" class="col-md-12 col-lg-6 col-xl-4 ">
                                                            <label>
                                                                Select Disability Percentage/<br />
                                                                विकलांगता प्रतिशत चयन करें<span style="color: red">*</span></label>
                                                            <select id="ddlHandicappedPercentage" class="form-control select2">
                                                                <option>--Select--</option>
                                                                <option value="40 to 50">40 to 50</option>
                                                                <option value="50 to 60">51 to 60</option>
                                                                <option value="60 to 70">61 to 70</option>
                                                                <option value="70 to 80">71 to 80</option>
                                                                <option value="80 to 90">81 to 90</option>
                                                                <option value="90 to 100">91 to 100</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-md-12 col-lg-6 col-xl-4 ">
                                                            <label>
                                                                Disability Certificate from the Medical Board/<br />
                                                                मेडिकल बोर्ड से विकलांगता प्रमाण पत्र<span style="color: red;">*</span></label>
                                                            <input name="CertMedicalBoard" id="fileCerdtMedicalBoard" type="file" class=" border form-control" />
                                                            <span id="DisabilitycertificateMessage" style="display: none; color: red;">Certificate is Required (Size 500 KB).</span>
                                                        </div>
                                                    </div>
                                                </div>
                            </div>

                        </div>

                    </li>

                    <li>
                        <div class="row">
                            <div class="col-md-12">
                                <label>
                                    Whether Spouse is in Service? (If yes, give details)<br />
                                    क्या जीवनसाथी सेवा में है?(यदि हां,तो ब्यौरा दें)<span style="color: red">*</span></label>&emsp;&emsp;
                                        <input type="radio" name="SpouseService" value="Yes" onchange="HusbandWifeServiceChange(this);" class="specifyColor" /><label>Yes</label>&emsp;
                                        <input type="radio" name="SpouseService" value="No" onchange="HusbandWifeServiceChange(this);" checked class="specifyColor" /><label>No</label>
                            </div>
                        </div>
                        <div id="divHusbandWiseService" style="display: none;">
                            <%--<div class="col-md-11">--%>

                            <div class="row align-items-baseline">
                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <label>
                                        Enter Spouse Name/<br />
                                        जीवनसाथी का नाम दर्ज करें<span style="color: red">*</span>&nbsp;</label>
                                    <input name="txtPostOfSpouse" type="text" class="form-control" autocomplete="off" placeholder="Enter Spouse Name" />
                                    <span id="spouseNameMessage" style="display: none; color: red;">Spouse Name is Required.</span>

                                </div>
                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <label>
                                        Enter Spouse Post/<br />
                                        जीवनसाथी का मूल पद दर्ज करें<span style="color: red">*</span>&nbsp;</label>
                                    <input name="txtPostOfSpouse" type="text" class="form-control" autocomplete="off" placeholder="Enter Spouse Post" />
                                    <span id="spousePostMessage" style="display: none; color: red;">Spouse Post is Required.</span>

                                </div>
                                <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
                                    <label>
                                        Enter Spouse Department/<br />
                                        जीवनसाथी का विभाग दर्ज करें<span style="color: red">*</span>&nbsp;</label>
                                    <input name="txtPlacePostingSpouse" type="text" class="form-control" autocomplete="off" placeholder="Enter Spouse Department " />
                                    <span id="spouseDepartmentMessage" style="display: none; color: red;">Spouse Department is Required.</span>

                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
                                    <label>
                                        Enter Spouse Office Address/<br />
                                        जीवनसाथी के कार्यालय का पता दर्ज करें<span style="color: red">*</span>&nbsp;</label>
                                    <input name="txtDistancePostingPlaces" type="text" class="form-control" autocomplete="off" placeholder="Enter Spouse Office Address" />
                                    <span id="spouseOfficeMessage" style="display: none; color: red;">Spouse Office Address is Required.</span>

                                </div>
                            </div>
                            <%-- </div>--%>
                        </div>


                    </li>

                    <li>
                        <div class="row mt-2">
                            <div class="col-md-12">


                                <label>
                                    Enter Reason for Seeking Transfer/<br />
                                    स्थानांतरण चाहने का कारण दर्ज करें<span style="color: red">*</span></label>
                                <input id="txtSeekingTransfer" name="txtTransferReason" maxlength="250" type="text" class="form-control" autocomplete="on" placeholder="Enter Transfer Seeking Reason" onclick="ReasonForTransfer()" />

                                <p class="char-count" style="color: red;"><span id="charsRemaining">200 </span> characters remaining</p>


                                <%--  <label>
                                            Enter Reason for Seeking Transfer/<br />
                                            स्थानांतरण चाहने का कारण दर्ज करें<span style="color: red">*</span></label>
                                        <input name="txtTransferReason" maxlength="250" type="text" class="form-control" autocomplete="off" placeholder="Enter Transfer Seeking Reason" />
                                        <div id="message" >200 characters remaining</div>--%>
                            </div>
                        </div>
                    </li>

                </ul>

            </fieldset>



            <div id="divVoluntaryTransfer">

                <fieldset>
                    <legend class="border border-dark border-2 ">Select Locations (Minimum 1, Maximum 20) / स्थान चुनें (न्यूनतम 1, अधिकतम 20)

                    </legend>
                    <%--                    <div class="row align-items-end">--%>
                    <div class="col-md-12">
                        <label>
                            Enter the information about the vacant places desired for transfer / स्थानांतरण हेतु वांछित रिक्त स्थानों की जानकारी दर्ज करें -</label>
                        <%--</div>--%>
                    </div>
                    <div class="row align-items-end">
                        <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                            <div class="form-group">
                                <label>
                                    Select OIS Type/<br />
                                    OIS प्रकार का चयन करें<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="Select">Select</option>
                                    <option value="Sheopur">School</option>
                                    <option value="Morena">Institute</option>
                                    <option value="Bhind">Office</option>


                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                            <div class="form-group">
                                <label>
                                    Select Office Type/<br />
                                    कार्यालय प्रकार का चयन करें<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option>Select</option>
                                    <option>HS (36)</option>
                                    <option>HSS (33)</option>
                                    <option>MS (35)</option>
                                    <option>PS (34)</option>


                                    <option>Select</option>
                                    <option>KGBV (32)</option>
                                    <option>Libraries (31)</option>
                                    <option>Maharshi Pathanjali Sanskrit Sanathan Bhopal (16)</option>
                                    <option>Other Institutes/Colleges</option>


                                    <option>Select</option>
                                    <option>BEO (12)</option>
                                    <option>Board of Secondary Education (17)</option>
                                    <option>BRC (13)</option>
                                    <option>CEO, ZP (08)</option>
                                    <option>Collector (07)</option>

                                </select>


                                <%--     <select class="form-control select2">
                                <option>Select</option>
                                <option>Deputy Secretary-(03)</option>
                                <option>CPI-(04)</option>
                                <option>CRSK-(05)</option>
                                <option>DPI-(06)</option>
                                <option>Collector-(07)</option>
                                <option>CEO, ZP-(08)</option>
                                <option>Joint Director-(09)</option>
                                <option>DEO-(10)</option>
                                <option>DPC-(11)</option>
                                <option>BEO-(12)</option>
                                <option>BRC-(13)</option>
                                <option>DAEO-(14)</option>
                                <option>DDO(Sankul)-(15)</option>
                                <option>Maharshi Pathanjali Sanskrit Sansthan Bhopal-(16)</option>
                                <option>Board of Secondary Education-(17)</option>
                                <option>State Open School-(18)</option>
                                <option>SED-(19)</option>
                                <option>TWD-(20)</option>
                                <option>CTD-(21)</option>
                                <option>RSK-(22)</option>
                                <option>RMSA-(23)</option>
                                <option>Divisional Deputy Commissioner, Tribal Dev.-(24)</option>
                                <option>I T D P-(25)</option>
                                <option>Other Institutes/Colleges-(26)</option>
                                <option>JD Tribal-(27)</option>
                                <option>DOTW-(28)</option>
                                <option>CRC-(29)</option>
                                <option>Libraries-(31)</option>
                                <option>KGBV-(32)</option>
                                <option>HSS-(33)</option>
                                <option>PS-(34)</option>
                                <option>MS-(35)</option>
                                <option>HS-(36)</option>
                            </select>--%>
                            </div>
                        </div>





                        <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                            <div class="form-group">
                                <label>
                                    Select District (Code)/<br />
                                    जिला (कोड) का चयन करें<span style="color: red">*</span>
                                </label>
                                <select class="form-control select2">
                                    <option>Select</option>
                                    <option>Sheopur-(01)</option>
                                    <option>Morena-(02)</option>
                                    <option>Bhind-(03)</option>
                                    <option>Gwalior-(04)</option>
                                    <option>Datia-(05)</option>
                                    <option>Shivpuri-(6)</option>
                                    <option>Guna-(7)</option>
                                    <option>Tikamgarh-(08)</option>
                                    <option>Chhatarpur-(09)</option>
                                    <option>Panna-(10)</option>
                                    <option>Sagar-(11)</option>
                                    <option>Damoh-(12)</option>
                                    <option>Satna-(13)</option>
                                    <option>Rewa-(14)</option>
                                    <option>Umaria-(15)</option>
                                    <option>Shahdol-(16)</option>
                                    <option>Sidhi-(17)</option>
                                    <option>Neemuch-(18)</option>
                                    <option>Mandsaur-(19)</option>
                                    <option>Ratlam-(20)</option>
                                    <option>Ujjain-(21)</option>
                                    <option>Shajapur-(22)</option>
                                    <option>Dewas-(23)</option>
                                    <option>Jhabua-(24)</option>
                                    <option>Dhar-(25)</option>
                                    <option>Indore-(26)</option>
                                    <option>Khargone-(27)</option>
                                    <option>Barwani-(28)</option>
                                    <option>Khandwa-(29)</option>
                                    <option>Rajgarh-(30)</option>
                                    <option>Vidisha-(31)</option>
                                    <option>Bhopal-(32)</option>
                                    <option>Sehore-(33)</option>
                                    <option>Raisen-(34)</option>
                                    <option>Betul-(35)</option>
                                    <option>Harda-(36)</option>
                                    <option>Narmadapuram-(37)</option>
                                    <option>Katni-(38)</option>
                                    <option>Jabalpur-(39)</option>
                                    <option>Narsinghpur-(40)</option>
                                    <option>Dindori-(41)</option>
                                    <option>Mandla-(42)</option>
                                    <option>Chhindwara-(43)</option>
                                    <option>Seoni-(44)</option>
                                    <option>Balaghat-(45)</option>
                                    <option>Ashoknagar-(46)</option>
                                    <option>Anuppur-(47)</option>
                                    <option>Burhanpur-(48)</option>
                                    <option>Alirajpur-(49)</option>
                                    <option>Singrauli-(50)</option>
                                    <option>Agar Malwa-(51)</option>
                                    <option>Niwari-(52)</option>
                                    <option>Maihar-(53)</option>
                                    <option>Ratlam-(56)</option>
                                    <option>Rajgarh-(87)</option>
                                </select>
                            </div>
                        </div>


                        <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                            <div class="form-group">
                                <label>
                                    Select Block (Code)/<br />
                                    विकासखण्ड (कोड) का चयन करें<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option>Select</option>
                                    <option>Vijaypur- (001)</option>
                                    <option>Sheopur- (2)</option>
                                    <option>Karahal- (3)</option>
                                    <option>Porsa- (4)</option>
                                    <option>Ambah- (5)</option>
                                    <->Morena- (6)<option>
                                    <option>Joura- (7)</option>
                                    <option>Pahargarh- (8)</option>
                                    <option>Ranu- (9)</option>
                                    <option>Mehgaon- (10)</option>
                                    <option>Bhind- (11)</option>
                                    <option>Lahar- (12)</option>
                                    <option>Ater- (13)</option>
                                    <option>Gohad- (14)</option>
                                    <option>Anand Nagar- (15)</option>
                                </select>

                            </div>

                        </div>


                        <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                            <div class="form-group">
                                <label>
                                    Select Sankul (Code)/<br />
                                    संकुल (कोड) का चयन करें<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option>Select</option>
                                    <option>VIJAYPUR, PRINCIPAL Boys HSS VIJAYPUR-(4012003010)</option>
                                    <option>Assistant Commissioner Tribal Development Sheopur-(4002506015)</option>
                                    <option>SAHSRAM, Principal HSS SAHSRAM-(4012003013</option>
                                    <option>VIJAYPUR, PRINCIPAL Girls HSS VIJAYPUR-(4012003011)</option>
                                    <option>OOCHHAPURA, Principal HSS OOCHHAPURA-(4012003015)</option>
                                    <option>BEERPUR, Principal HSS BEERPUR-(4012003012)</option>
                                    <option>SHEOPUR, PRINCIPAL Girls H.S.S. SHEOPUR- (4002003003)</option>

                                </select>

                            </div>

                        </div>




                        <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                            <div class="form-group">
                                <label>
                                    Select Office/Institute/School Code & Name/<br />
                                    कार्यालय/संस्थान/स्कूल कोड और नाम का चयन करें<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option>Select</option>
                                    <option value="(2345040410) AAMAI HS NEW JSK">(2345040410) AAMAI HS NEW JSK</option>
                                    <option value="(2332030006) AKBARPUR GOVT. HS">(2332030006) AKBARPUR GOVT. HS</option>
                                    <option value="(2327100059) B.HSS BISTAN">(2327100059) B.HSS BISTAN</option>
                                    <option value="(2345090040) BAIHAR HSS BOYS NEW JSK">(2345090040) BAIHAR HSS BOYS NEW JSK</option>
                                    <option value="(2345030063) BAMHANI HS NEW JSK">(2345030063) BAMHANI HS NEW JSK</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                            <div class="form-group">
                                <label>
                                    Select Post (Code)/<br />
                                    पद (कोड) का चयन करें<span style="color: red">*</span></label>
                                <%--<input onchange="ShowVacantPost()" placeholder="Enter Post Code" name="txtPostCode" value="" type="text" class="form-control" autocomplete="off" />--%>
                                <select class="form-control select2">
                                    <option>Select</option>
                                    <option value="2345">2345</option>
                                    <option value="3432">3432</option>
                                    <option value="6578">6578</option>
                                    <option value="0967">0967</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                            <div class="form-group">
                                <label>
                                    Panel Name/<br />
                                    पैनल का नाम<span style="color: red">*</span></label>
                                <input disabled="disabled" value="Panel Name" id="txtpanelname" type="text" class="form-control" autocomplete="off" />
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                            <div class="form-group">
                                <label>
                                    Vacant Post/<br />
                                    रिक्त पद<span style="color: red">*</span></label>
                                <input disabled="disabled" value="Vacant Post" id="txtvacantpost" type="text" class="form-control" autocomplete="off" placeholder="Enter Vacant Post" />
                            </div>
                        </div>




                        <div class="col-md-2  mt-4">
                            <div class="form-group">
                                <input type="button" id="btnAdd" class="btn w-lg btn-success btn-border btn btn-outline-info btn-border  w-lg" value="Add" onclick="AddRow();" />


                            </div>
                        </div>

                    </div>




                    <div class="row form-group">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table" id="mytable" style="width: 100%; table-layout: fixed; display: none;">
                                    <colgroup>
                                        <col style="width: 7%;">
                                        <col style="width: 13%;">
                                        <col style="width: 15%;">
                                        <col style="width: 13%;">
                                        <col style="width: 16%;">
                                        <col style="width: 10%;">
                                        <col style="width: 13%;">
                                        <col style="width: 11%;">
                                        <col style="width: 6%;">
                                    </colgroup>
                                    <tr>
                                        <th><b>Sr.No.<br />
                                            सरल क्र.</b></th>
                                        <th>
                                            <b>District Name(Code)/<br />
                                                जिले का नाम (कोड)
                                            </b>
                                        </th>
                                        <th>
                                            <b>Block Name(Code)/<br />
                                                विकासखण्ड का नाम(कोड)
                                            </b>
                                        </th>
                                        <th>
                                            <b>Sankul Name(Code)/<br />
                                                संकुल का नाम (कोड)
                                            </b>
                                        </th>
                                        <th>
                                            <b>OIS (UDISE Code)/<br />
                                                ओ.आई.एस.(यूडाइस कोड)
                                            </b>
                                        </th>
                                        <th>
                                            <b>Post Code/<br />
                                                पद कोड
                                            </b>
                                        </th>
                                        <th>
                                            <b>Panel Name/<br />
                                                पैनल का नाम
                                            </b>
                                        </th>
                                        <th>
                                            <b>Vacant Post/<br />
                                                रिक्त पद
                                            </b>
                                        </th>
                                        <th>Action/कार्रवाई</th>
                                        
                                    </tr>

                                    <tr id="row1" style="display: none">
                                        <td>1</td>
                                        <td>Sheopur-(01)</td>
                                        <td>Vijaypur-(001)</td>
                                        <td>VIJAYPUR, PRINCIPAL Boys HSS VIJAYPUR-(4012003010)</td>
                                        <td>4012003010</td>
                                        <td>2322</td>
                                        <td>S H-1 English</td>
                                        <td>1</td>
                                    
                                        <td>
                                             <button type="button" onclick="btnDel1()" class="btn btn-danger px-3" style="font-size:18px"><i class='fas fa-trash-alt'></i></button>
                                            
                                                
                                        </td>
                                    </tr>

                                    <tr id="row2" style="display: none">
                                        <td>2</td>
                                        <td>Monera-(02)</td>
                                        <td>Sheopur-(2)</td>
                                        <td>Assistant Commissioner Tribal Development Sheopur-(4002506015)</td>
                                        <td>4002506015</td>
                                        <td>3456</td>
                                        <td>S H-1 Hindi</td>
                                        <td>5</td>
                                         <td>
            <button type="button" onclick="btnDel2()"  class="btn btn-danger px-3" style="font-size:18px"><i class='fas fa-trash-alt'></i></button>
         
 </td>
                                    </tr>

                                    <tr id="row3" style="display: none">
                                        <td>3</td>
                                        <td>Sheopur-(01)</td>
                                        <td>Vijaypur-(001)</td>
                                        <td>VIJAYPUR, PRINCIPAL Boys HSS VIJAYPUR-(4012003010)</td>
                                        <td>4012003010</td>
                                        <td>2322</td>
                                        <td>S H-1 Hindi</td>
                                        <td>4</td>
                                                                                <td>
     <button type="button" onclick="btnDel3()" class="btn btn-danger px-3" style="font-size:18px"><i class='fas fa-trash-alt'></i></button>
        
</td>
                                    </tr>

                                    <tr id="row4" style="display: none">
                                        <td>4</td>
                                        <td>Bhind-(03)</td>
                                        <td>Karahal-(3)</td>
                                        <td>OOCHHAPURA, Principal HSS OOCHHAPURA-(4012003015)</td>
                                        <td>4012003015</td>
                                        <td>8763</td>
                                        <td>S H-1 English</td>
                                        <td>6</td>
                                         <td>
      <button type="button" onclick="btnDel4()" class="btn btn-danger px-3" style="font-size:18px"><i class='fas fa-trash-alt'></i></button>
         
 </td>
                                    </tr>

                                    <tr id="row5" style="display: none">
                                        <td>5</td>
                                        <td>Gwalior-(04)</td>
                                        <td>Porsa-(4)</td>
                                        <td>SHEOPUR, PRINCIPAL Girls H.S.S. SHEOPUR- (4002003003)</td>
                                        <td>4002003003</td>
                                        <td>1234</td>
                                        <td>S H-1 English</td>
                                        <td>12</td>
                                         <td>
      <button type="button" onclick="btnDel5()" class="btn btn-danger px-3" style="font-size:18px"><i class='fas fa-trash-alt'></i></button>
         
 </td>
                                    </tr>

                                    <tr id="row6" style="display: none">
                                        <td>6</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>

                                    <tr id="row7" style="display: none">
                                        <td>7</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>

                                    </tr>

                                    <tr id="row8" style="display: none">
                                        <td>8</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>

                                    </tr>

                                    <tr id="row9" style="display: none">
                                        <td>9</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>

                                    </tr>

                                    <tr id="row10" style="display: none">
                                        <td>10</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>

                                    </tr>
                                </table>

                            </div>
                        </div>
                    </div>

                    <hr />
                    <div class="row align-items-end " id="btnRow">
                        <div class="col-md-12">
                            <div class="form-group">
                                <button type="button" id="btnRqstToHO" class="Alert-Confirmation btn w-lg btn-success btn-border">Send Request</button>
                                <button id="btnClear" class="btn btn-outline-danger w-lg btn-border">Clear</button>

                            </div>
                        </div>
                    </div>

                </fieldset>


            </div>

        </div>


    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>
        
        let currentRow = 0;
        let clickCount = 0; // To track the number of clicks
        const table = document.getElementById('mytable');
        const rows = table.querySelectorAll('tbody tr');

        document.getElementById('btnAdd').addEventListener('click', function () {
            clickCount++; // Increase click count on each button click

            if (clickCount === 1) {
                table.style.display = 'table'; // Show table on first click
               
            }

            if (clickCount <= 20) {
                if (currentRow < rows.length) {
                    rows[currentRow].style.display = 'table-row'; // Show the current row
                    currentRow++; // Move to the next row for the next click
                }
            } else {
                alert('Cannot enter data for more than 20 people!'); // Show alert after 20 clicks
            }
        });
    </script>
    <script>
        function btnDel1() {
            document.getElementById("row1").style.display = "none";

        }

        function btnDel2() {
            document.getElementById("row2").style.display = "none";

        }

        function btnDel3() {
            document.getElementById("row3").style.display = "none";

        }

        function btnDel4() {
            document.getElementById("row4").style.display = "none";

        }

        function btnDel5() {
            document.getElementById("row5").style.display = "none";

        }
        
    </script>







    <script>

        // Getting DOM elements
        const txtSeekingTransfer = document.getElementById('txtSeekingTransfer');
        const charsRemaining = document.getElementById('charsRemaining');
        const maxChars = 200;

        txtSeekingTransfer.addEventListener('input', function () {
            // Get the current length of text (number of characters)
            let charCount = txtSeekingTransfer.value.length;

            // Update characters remaining
            let remaining = maxChars - charCount;
            charsRemaining.textContent = remaining;

            // Prevent typing if character count exceeds the limit
            if (remaining < 0) {
                txtSeekingTransfer.value = txtSeekingTransfer.value.substring(0, maxChars);
                charsRemaining.textContent = 0;
            }
        });



    </script>

    <script>

        function ShowMutualEmployeeInfo() {
            var txtmutualdistrict = document.getElementById("mutualEmpDistrict");
            var txtempname = document.getElementById("mutualEmpName");
            var txtempdesignation = document.getElementById("mutualEmpDesignation");
            var txtPanal = document.getElementById("mutualemppanel");
            var txtudisecode = document.getElementById("mutualempUdiseCode");
            var txtsankulcode = document.getElementById("mutulaempSankulCode");
            txtmutualdistrict.value = "Bhopal";
            txtempname.value = "Mohan Kumar";
            txtempdesignation.value = "Asst Teacher";
            txtpanel.value = "SSS-1 Mathematics";
            txtudisecode.value = "11111111-Naveen HS School Bhopal";
            txtsankulcode.value = "222222- Subash HS Bhopal ";
        }



        function ShowVacantPost() {
            var ddlPostCode = document.getElementById("ddlPostCode");
            var divtxtpanelname = document.getElementById("divtxtpanelname");
            var divtxtvacantpost = document.getElementById("divtxtvacantpost");

            if (ddlPostCode.value === "0") {
                divtxtpanelname.style.display = "none";
                divtxtvacantpost.style.display = "none";
                hideaddbtn.style.display = "none";
            } else {
                divtxtpanelname.style.display = "block";
                divtxtvacantpost.style.display = "block";
                hideaddbtn.style.display = "block";
            }
        }

        const voluntaryTransferRadio = document.getElementById('voluntaryTransferRadio');
        const mutualTransferRadio = document.getElementById('mutualTransferRadio');
        const divVoluntaryTransfer = document.getElementById('divVoluntaryTransfer');
        const divMutualTransfer = document.getElementById('divMutualTransfer');

        voluntaryTransferRadio.addEventListener('click', function () {
            if (voluntaryTransferRadio.checked) {
                divVoluntaryTransfer.style.display = 'block';
                divMutualTransfer.style.display = 'none';
            }
        });

        mutualTransferRadio.addEventListener('click', function () {
            if (mutualTransferRadio.checked) {
                divVoluntaryTransfer.style.display = 'none';
                divMutualTransfer.style.display = 'block';
            }
        });

        function DisabilityStatusChange(DisabilityRadio) {
            var fileCertMedicalBoard = document.getElementById("fileCertMedicalBoard");
            var IllnesscertificateMessage = document.getElementById("IllnesscertificateMessage");



            if (DisabilityRadio.value == "Yes") {
                fileCertMedicalBoard.style.display = "initial";
                IllnesscertificateMessage.style.display = "initial";

            } else {
                fileCertMedicalBoard.style.display = "none";
            }
        }

        function HusbandWifeServiceChange(HusbandWifeRadio) {
            var divHusbandWiseService = document.getElementById("divHusbandWiseService");
            var DisabilitycertificateMessage = document.getElementById("DisabilitycertificateMessage");



            if (HusbandWifeRadio.value == "Yes") {
                divHusbandWiseService.style.display = "initial";
                DisabilitycertificateMessage.style.display = "initial";
            } else {
                divHusbandWiseService.style.display = "none";
            }
        }

        function ReasonForTransfer() {
            var txtSeekingTransfer = document.getElementById("txtSeekingTransfer").value.trim();

            var spouseNameMessage = document.getElementById("spouseNameMessage");
            var spousePostMessage = document.getElementById("spousePostMessage");
            var spouseDepartmentMessage = document.getElementById("spouseDepartmentMessage");
            var spouseOfficeMessage = document.getElementById("spouseOfficeMessage");


            if (txtSeekingTransfer === '') {
                spouseNameMessage.style.display = 'block';
                spousePostMessage.style.display = 'block';
                spouseDepartmentMessage.style.display = 'block';
                spouseOfficeMessage.style.display = 'block';



            }
            else {
                spouseNameMessage.style.display = 'none';
                spousePostMessage.style.display = 'none';
                spouseDepartmentMessage.style.display = 'none';
                spouseOfficeMessage.style.display = 'none';

            }



        }

        function DisciplinaryActionChange(DisciplinaryActionRadio) {
            var divAdministrativeDisciplinary = document.getElementById("divAdministrativeDisciplinary");

            if (DisciplinaryActionRadio.value == "Yes") {
                divAdministrativeDisciplinary.style.display = "initial";
            } else {
                divAdministrativeDisciplinary.style.display = "none";
            }
        }

        function SeriousIllnessChange(SeriousIllnessRadio) {
            var divSeriousIllness = document.getElementById("divSeriousIllness");

            if (SeriousIllnessRadio.value == "Yes") {
                divSeriousIllness.style.display = "flex";
            } else {
                divSeriousIllness.style.display = "none";
            }
        }

        function BindSankul() {
            var txtSankulName = document.getElementById("txtSankulName");
            txtSankulName.value = "(2301090037) G.H.S.S. SHRI HAJARESWAR";
        }

        //function AddRow() {
        //    // debugger;
        //    var btnRow = document.getElementById("btnRow");
        //    var mytable = document.getElementById("mytable");

        //    btnRow.style.display = "block";
        //    mytable.style.display = "inline-table";

        //    if ((mytable.rows.length - 1) == 3) {
        //        alert('Maximum three entries allowed !!');
        //    }
        //    else {
        //        var rows = mytable.rows.length;
        //        var r = mytable.insertRow(rows);

        //        var ddlDistrict = document.getElementById("ddlDistrict");
        //        var ddlBlock = document.getElementById("ddlBlock");
        //        var ddlOffice = document.getElementById("ddlOffice");
        //        var ddlOfficce = document.getElementById("ddlOfficce");
        //        var txtSankulName = document.getElementById("txtSankulName");
        //        var txtPostCode = document.getElementById("ddlPostCode");
        //        var txtpanelname = document.getElementById("txtpanelname");

        //        var c1 = r.insertCell(0);
        //        c1.innerHTML = mytable.rows.length - 1;

        //        var c2 = r.insertCell(1);
        //        c2.innerHTML = ddlDistrict.value;

        //        var c3 = r.insertCell(2);
        //        c3.innerHTML = ddlBlock.value;

        //        var c4 = r.insertCell(3);
        //        c4.innerHTML = ddlOffice.value;

        //        var c4 = r.insertCell(4);
        //        c4.innerHTML = ddlOfficce.value;

        //        var c5 = r.insertCell(5);
        //        c5.innerHTML = txtSankulName.value;

        //        var c6 = r.insertCell(6);
        //        c6.innerHTML = txtPostCode.value;

        //        var c7 = r.insertCell(7);
        //        c7.innerHTML = txtpanelname.text;

        //        var c8 = r.insertCell(8);
        //        c8.innerHTML = txtvacantpost.text;

        //        var c9 = r.insertCell(9);
        //        c9.innerHTML = "<a class='Alert-Edit' onclick='EditConfirmation()'><a class='Alert-Delete' onclick='DeleteConfirmation()'><i class='fa fa-trash'></i></a>";

        //        ddlOffice.value = "Select";
        //        ddlDistrict.value = "Select";
        //        txtSankulName.value = "";
        //        ddlBlock.value = "Select";
        //        ddlPostCode.value = "0";
        //        txtpanelname.value = "";
        //        txtvacantpost.value = "";
        //        divtxtpanelname.style.display = "none";
        //        divtxtvacantpost.style.display = "none";
        //        hideaddbtn.style.display = "none";
        //    }
        //}
        //function AddRow() {
        //    var mytable = document.getElementById("mytable");
        //    var ddlDistrict = document.getElementById("ddlDistrict");
        //    var ddlBlock = document.getElementById("ddlBlock");
        //    var ddlOffice = document.getElementById("ddlOffice");
        //    var ddlOfficce = document.getElementById("ddlOfficce");
        //    var txtSankulName = document.getElementById("ddlOffice"); // Corrected the ID
        //    var txtPostCode = document.getElementById("ddlPostCode"); // Corrected the ID
        //    var txtpanelname = document.getElementById("txtpanelname");
        //    var txtvacantpost = document.getElementById("txtvacantpost"); // Added this line to get txtvacantpost element

        //    // Check if the maximum number of entries is reached
        //    if (mytable.rows.length - 1 >= 20) {
        //        alert('Maximum 20 entries allowed !!');
        //        return; // Exit the function without adding a new row
        //    }
        //    btnRow.style.display = "block";
        //    mytable.style.display = "inline-table";
        //    // Validate other conditions if necessary

        //    var newRow = mytable.insertRow(mytable.rows.length);

        //    var cell1 = newRow.insertCell(0);
        //    cell1.innerHTML = mytable.rows.length - 1;

        //    var cell2 = newRow.insertCell(1);
        //    cell2.innerHTML = ddlDistrict.value;

        //    var cell3 = newRow.insertCell(2);
        //    cell3.innerHTML = ddlBlock.value;

        //    var cell4 = newRow.insertCell(3);
        //    cell4.innerHTML = ddlOffice.value;

        //    var cell5 = newRow.insertCell(4);
        //    cell5.innerHTML = ddlOfficce.value;

        //    var cell6 = newRow.insertCell(5);
        //    cell6.innerHTML = txtPostCode.value;


        //    var cell7 = newRow.insertCell(6);
        //    cell7.innerHTML = txtpanelname.value;



        //    var cell8 = newRow.insertCell(7);
        //    cell8.innerHTML = txtvacantpost.value;

        //    var cell9 = newRow.insertCell(8);
        //    cell9.innerHTML = "<a class='Alert-Edit' onclick='EditConfirmation()'><a class='Alert-Delete' onclick='DeleteConfirmation()'><i class='fa fa-trash'></i></a>";
        //}



        function AddRow() {


            document.getElementById("mytable").style.display = "block";
        }


        //function myFunction() {
        //    var x = document.getElementById("show");
        //    if (x.style.display === "none") {
        //        x.style.display = "block";
        //    } else {
        //        x.style.display = "block";
        //    }
        //}
    </script>

    <script>
        function DeleteConfirmation() {
            Swal.fire({
                title: 'Are you sure?',
                text: "Do you want to Delete Details?",
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
                        text: 'Details Deleted Successfully!',
                        timer: 2000
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }
                    )
                }
            })
        }

        function EditConfirmation() {
            Swal.fire({
                title: 'Are you sure?',
                text: "Do you want to Edit Details?",
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
                //if (result.value) {
                //    Swal.fire({
                //        type: 'success',
                //        title: 'Success!',
                //        text: 'Salary Generated Successfully!',
                //        timer: 2000
                //        // animation: false,
                //        // customClass: {
                //        //     popup: 'animated tada'
                //        // }
                //    }
                //    )
                //}
            })
        }

    </script>

</asp:Content>









