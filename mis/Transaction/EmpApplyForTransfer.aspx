<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmpApplyForTransfer.aspx.cs" Inherits="mis_Transaction_EmpApplyForTransfer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #divtxtpanelname {
            display: none;
        }

        #divtxtvacantpost {
            display: none;
        }

        #hideaddbtn {
            display: none;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Employee Apply Transfer</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                    <li class="breadcrumb-item active">Employee Apply Transfer Request</li>
                </ol>
            </div>
        </div>
    </div>

    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>

        <div class="card-body">
            <fieldset>
                <legend>Employee Personal Information
                </legend>
                <fieldset>
                    <div class="row mt-2">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Employee Name/<br />
                                    कर्मचारी का नाम<span style="color: red">*</span></label>
                                <input name="txtEmpName" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Employee Name" value="Arjun Talwar" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Unique ID /<br />
                                    यूनिक आई.डी<span style="color: red">*</span></label>
                                <input name="txtUniqueID" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Unique ID" value="AR4781" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Designation /<br />
                                    पदनाम <span style="color: red">*</span></label>
                                <input name="txtDesignation" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Designation" value="Teacher (UDT)" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label class="font-bold">
                                District/<br />
                                ज़िला<span style="color: red">*</span></label>
                            <input name="txtDistrict" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter District" value="Bhopal" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <label class="font-bold">
                                Block/<br />
                                ब्लॉक<span style="color: red">*</span></label>
                            <input name="txtBlock" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter District" value="Govindapura" />
                        </div>

                        <div class="col-md-3">
                            <label class="font-bold">
                                Area/<br />
                                क्षेत्र<span style="color: red">*</span></label>
                            <input name="txtBlock" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Area" value="Urban" />
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Sankul Code/ Name
                 <br />
                                    संकुल कोड / नाम<span style="color: red">*</span></label>
                                <input name="txtSankulName" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Sankul Name" value="15151235256-PVT VINAYAK PUBLIC SCHOOL TARRAKHURD" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Present Office/Institute/School Name / वर्तमान कार्यालय/संस्था/विद्यालय नाम<span style="color: red">*</span></label>
                                <input name="txtPresentParentInstitution" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Name of the Present Parent Institution" value="52125212542-Naveen HHS school Bhopal" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Date of Birth
                                    <br />
                                    / जन्मतिथि<span style="color: red">*</span></label>
                                <input name="DOB" id="txtDOB" class="form-control" readonly autocomplete="off" value="17/07/1992" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Age (As On 01.07.2024)
             <br />
                                    /                                      
             आयु (वर्तमान की स्थिति में)<span style="color: red">*</span></label>
                                <input name="DOB" id="txtAgeCrrnt" class="form-control" readonly autocomplete="off" value="32 years" />
                            </div>
                        </div>


                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Professional Qualifications /<br />
                                    शैक्षणिक योग्यता<span style="color: red">*</span></label>
                                <input name="txtQualification" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Educational And Professional Qualifications" value="B Tech" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Panal of Teaching on Which Appointment Is Made /<br />
                                    शिक्षण पैनल जिस पर नियुक्ति की गई है<span style="color: red">*</span></label>
                                <input name="txtPanel" type="text" class="form-control" readonly autocomplete="off" value="SSS-1 Mathematics" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Date Posted in Current Organization /
                              <br />
                                    वर्तमान संस्था में पदस्थी दिनांक<span style="color: red">*</span></label>
                                <input name="DOB" id="txtDatePostedCrrnOrg" class="form-control" readonly autocomplete="off" value="15/04/2002" />
                            </div>
                        </div>



                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Total Duration in Years /<br />
                                    कुल अवधि वर्षो में<span style="color: red">*</span></label>
                                <input name="txtTotalDurantionYears" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Total Duration in Years" value="4" />
                            </div>
                        </div>


                    </div>
                </fieldset>
                <fieldset>
                    <div class="row mt-2">
                        <div class="col-md-12">
                            <ul style="list-style-type: disc">
                                <li>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Are You Suffering From Serious Illness / क्या आप गंभीर बीमारी से पीड़ित हैं (यदि हाँ तो विवरण दें)<span style="color: red">*</span></label>&emsp;&emsp;
            <input type="radio" name="SeriousIllness" value="Yes" onchange="SeriousIllnessChange(this);" /><label>Yes</label>&emsp;
            <input type="radio" name="SeriousIllness" value="No" checked onchange="SeriousIllnessChange(this);" /><label>No</label>&emsp;&emsp;&emsp;
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row" id="divSeriousIllness" style="display: none;">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Type of Critical Illness<span style="color: red">*</span></label>
                                                <select class="form-control select2">
                                                    <option>--Select--</option>
                                                    <option value="Cancer/ कैंसर">Cancer/ कैंसर</option>
                                                    <option value="Brain Tumor/ मस्तिष्क का ट्यूमर">Brain Tumor/ मस्तिष्क का ट्यूमर</option>
                                                    <option value="Kidney Transplant/ किडनी प्रत्यारोपण">Kidney Transplant/ किडनी प्रत्यारोपण</option>
                                                    <option value="Open Heart Bypass Surgery /ओपन हार्ट बाईपास सर्जरी">Open Heart Bypass Surgery /ओपन हार्ट बाईपास सर्जरी</option>
                                                    <option value="Parylasis / पक्षाघात">Parylasis / पक्षाघात</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>Certificate from the Medical Board / मेडीकल बोर्ड का प्रमाण पत्र संलग्न करें- &nbsp; <span style="color: red">*</span></label>
                                                <input name="txtCertMedicalBoard" type="file" class="border form-control" />
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Status Of Disability (Yes Or No) If Yes, Type And Percentage Of Disability (Attach Certificate) / विकलांगता की स्थिति (हाँ अथवा नहीं) यदि हाँ तो - विकलांगता का प्रकार एवं प्रतिशत (प्रमाण पत्र संलग़ करें)<span style="color: red">*</span></label>&emsp;&emsp;
            <input type="radio" name="Disability" value="Yes" onchange="DisabilityStatusChange(this);" /><label>Yes</label>&emsp;
        <input type="radio" name="Disability" value="No" checked onchange="DisabilityStatusChange(this);" /><label>No</label>&emsp;&emsp;&emsp;
  
                                                <div id="fileCertMedicalBoard" style="display: none;">
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <label>Handicapped Type<span style="color: red;">*</span></label>
                                                            <select id="ddlHandiCaped" class="form-control select2">
                                                                <option>--Select--</option>
                                                                <option value="Cancer/ कैंसर">Blindnes/अंधापन</option>
                                                                <option value="Low Vision/कम दृष्टि">Low Vision/कम दृष्टि</option>
                                                                <option value="Hearing Impaiment/ श्रवण हानि">Hearing Impaiment/ श्रवण हानि</option>
                                                                <option value="Speech and Language / वाणी और भाषा">Speech  Language / वाणी और भाषा</option>
                                                                <option value="Loco Moto Disability / लोको मोटो विकलांगता">Loco Moto Disability / लोको मोटो विकलांगता</option>
                                                                <option value="Mental Illness /मानसिक बिमारी">Mental Illness /मानसिक बिमारी</option>
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
                                                                <option value="Parkinson's Disease / पार्किंसंस रोग">Parkinson's Disease / पार्किंसंस रोग</option>

                                                            </select>
                                                        </div>
                                                        <div id="HandicapePercentage" class="col-md-3">
                                                            <div class="form-group">
                                                                <label>Handicapped Percentage<span style="color: red">*</span></label>
                                                                <select id="ddlHandicappedPercentage" class="form-control select2">
                                                                    <option>--Select--</option>
                                                                    <option value="40 to 50">40 to 50</option>
                                                                    <option value="50 to 60">50 to 60</option>
                                                                    <option value="60 to 70">60 to 70</option>
                                                                    <option value="70 to 80">70 to 80</option>
                                                                    <option value="80 to 90">80 to 90</option>
                                                                    <option value="90 to 100">90 to 100</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <label>Handicapped Certificate<span style="color: red;">*</span></label>
                                                            <input name="CertMedicalBoard" id="fileCerdtMedicalBoard" type="file" class=" border form-control" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row justify-content-center">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Whether the spouse Is in Service / क्या स्पाउस सेवा में है । (यदि हाँ तो विवरण दें)<span style="color: red">*</span></label>&emsp;&emsp;
        <input type="radio" name="SpouseService" value="Yes" onchange="HusbandWifeServiceChange(this);" /><label>Yes</label>&emsp;
        <input type="radio" name="SpouseService" value="No" onchange="HusbandWifeServiceChange(this);" checked /><label>No</label>
                                            </div>
                                        </div>
                                        <div id="divHusbandWiseService" style="display: none;">
                                            <div class="col-md-11">
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>Name and Original Post of Spouse / स्पाउस का नाम एवं मूल पद<span style="color: red">*</span>&nbsp;</label>
                                                                <input name="txtPostOfSpouse" type="text" class="form-control" autocomplete="off" placeholder="Enter Name and Original Post of Spouse" />
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>Spouse Department / स्पाउस विभाग<span style="color: red">*</span>&nbsp;</label>
                                                                <input name="txtPlacePostingSpouse" type="text" class="form-control" autocomplete="off" placeholder="Enter  Spouse Department " />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <label>Spouse Office Address/ स्पाउस कार्यालय का पता<span style="color: red">*</span>&nbsp;</label>
                                                                <input name="txtDistancePostingPlaces" type="text" class="form-control" autocomplete="off" placeholder="Enter Spouse Office Address" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row justify-content-center">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Has Any Administrative Disciplinary Action Been Taken Against The Concerned? / क्या संबंधित के विरुद्ध कोई प्रशासनिक अनुशासनात्मक कार्यवाही की गई है। (यदि हाँ तो विवरण दें)<span style="color: red">*</span></label>&emsp;&emsp;
            <input type="radio" name="AdministrativeDisciplinary" value="Yes" onchange="DisciplinaryActionChange(this)" /><label>Yes</label>&emsp;
        <input type="radio" name="AdministrativeDisciplinary" value="No" onchange="DisciplinaryActionChange(this)" checked /><label>No</label>
                                            </div>
                                        </div>
                                        <div id="divAdministrativeDisciplinary" style="display: none;">
                                            <div class="col-md-11">
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>Salary Increase Stopped /वेतन वृद्धि रोकी गई -<span style="color: red">*</span>&nbsp;</label>
                                                                <input name="txtSalaryIncreasedStop" type="text" class="form-control" autocomplete="off" placeholder="Enter Salary Increase Stopped" />
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>Salary Deducted/Withheld / वेतन काटी/रोकी गई-<span style="color: red">*</span>&nbsp;</label>
                                                                <input name="txtSalaryDeducted" type="text" class="form-control" autocomplete="off" placeholder="Enter Salary Deducted/Withheld" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <label>Suspension or Major/Minor Penalty Imposed / निलंबन अथवा दीर्घ/ लघु शास्ति अधिरोपित की गई<span style="color: red">*</span>&nbsp;</label>
                                                                <input name="txtSuspensionPenalty" type="text" class="form-control" autocomplete="off" placeholder="Enter Suspension or Major/Minor Penalty Imposed" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Reason for Seeking Transfer/स्थानांतरण चाहने का कारण <small><b>(200 शब्दों में)</b></small><span style="color: red">*</span></label>
                                            <input name="txtTransferReason" maxlength="250" type="text" class="form-control" autocomplete="off" placeholder="Enter Reason for Seeking Transfer" />
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </fieldset>
                <%--   <fieldset>
                    <div class="row mt-2">
                        <div class="col-md-5">
                            <div class="form-group">
                                <label>Reason for Seeking Transfer/स्थानांतरण चाहने का कारण<span style="color: red">*</span></label>
                                <input name="txtTransferReason" type="text" class="form-control" autocomplete="off" placeholder="Enter Reason for Seeking Transfer" />
                            </div>
                        </div>
                        <div class="col-md-7">
                            <div class="form-group">
                                <label>Total Number Enrolled in the Current Posting Institution / वर्तमान पदस्थापना संस्था में कुल दर्ज संख्या<span style="color: red">*</span></label>
                                <input name="txtTotalEnrolledCrrnPost" type="text" class="form-control" autocomplete="off" placeholder="Enter Total Number Enrolled in the Current Posting Institution" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Total Number of Teachers/Clerks/Servants Posted in the Current Posting Institution / वर्तमान पदस्थापना संस्था में पदस्थ शिक्षकों/लिपिक/भृत्यों की कुल संख्या <span style="color: red">*</span></label>
                                <input name="txtTotalTeacherPostedCrrnt" type="text" class="form-control" autocomplete="off" placeholder="Enter Total Number of Teachers/Clerks/Servants Posted in the Current Posting Institution" />
                            </div>
                        </div>
                    </div>
                </fieldset>--%>





                <div id="divVoluntaryTransfer">

                    <fieldset>
                        <legend>Voluntary Tansfer Request</legend>
                        <div class="row mt-2">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Enter the Information about the Vacant Places Desired for Transfer in the Following Table / स्थानांतरण हेतु चाहे गये रिक्त स्थानों की जानकारी निम्न तालिका में अंकित करे -</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <label class="font-bold">District Name / जिले का नाम<span style="color: red">*</span></label>
                                <select id="ddlDistrict" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
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
                            <div class="col-md-3">
                                <label class="font-bold">Block Name / विकासखण्ड का नाम<span style="color: red">*</span></label>
                                <select id="ddlBlock" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
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

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Sankul Name /
संकुल का नाम
                                    </label>
                                    <select class="form-control" id="ddlOffice" onchange="BindSankul();">
                                        <option>Select</option>
                                        <option value="(2345040410) AAMAI HS NEW JSK">(2345040410) AAMAI HS NEW JSK</option>
                                        <option value="(2332030006) AKBARPUR GOVT. HS">(2332030006) AKBARPUR GOVT. HS</option>
                                        <option value="(2327100059) B.HSS BISTAN">(2327100059) B.HSS BISTAN</option>
                                        <option value="(2345090040) BAIHAR HSS BOYS NEW JSK">(2345090040) BAIHAR HSS BOYS NEW JSK</option>
                                        <option value="(2345030063) BAMHANI HS NEW JSK">(2345030063) BAMHANI HS NEW JSK</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        Office/Institute/School (UDISE Code) / कार्यालय/संस्था/विद्यालय
            <span style="color: red">*</span></label>
                                    <select class="form-control" id="ddlOfficce" onchange="BindSankul();">
                                        <option>Select</option>
                                        <option value="(2345040410) AAMAI HS NEW JSK">(2345040410) AAMAI HS NEW JSK</option>
                                        <option value="(2332030006) AKBARPUR GOVT. HS">(2332030006) AKBARPUR GOVT. HS</option>
                                        <option value="(2327100059) B.HSS BISTAN">(2327100059) B.HSS BISTAN</option>
                                        <option value="(2345090040) BAIHAR HSS BOYS NEW JSK">(2345090040) BAIHAR HSS BOYS NEW JSK</option>
                                        <option value="(2345030063) BAMHANI HS NEW JSK">(2345030063) BAMHANI HS NEW JSK</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label>
                                        Post Code /
                              
                                   पद कोड<span style="color: red">*</span></label>
                                    <%--<input onchange="ShowVacantPost()" placeholder="Enter Post Code" name="txtPostCode" value="" type="text" class="form-control" autocomplete="off" />--%>
                                    <select class="form-control" id="ddlPostCode" onchange="ShowVacantPost();">
                                        <option value="0">Select</option>
                                        <option value="2345">2345</option>
                                        <option value="3432">3432</option>
                                        <option value="6578">6578</option>
                                        <option value="0967">0967</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-2" id="divtxtpanelname">
                                <div class="form-group">
                                    <label>
                                        Panal Name / पैनल का नाम
                                     <span style="color: red">*</span></label>
                                    <input disabled="disabled" value="SSS-1 Mathematics" id="txtpanelname" type="text" class="form-control" autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-2" id="divtxtvacantpost">
                                <div class="form-group">
                                    <label>
                                        Vacant Post / रिक्त पद
                                        <span style="color: red">*</span></label>
                                    <input disabled="disabled" value="01" id="txtvacantpost" type="text" class="form-control" autocomplete="off" placeholder="Enter Vacant Post" />
                                </div>
                            </div>
                            <div class="col-md-2 mt-4" id="hideaddbtn">
                                <div class="form-group">
                                    <input type="button" id="btnAdd" class="btn btn-info btn-rounded" value="Add" onclick="AddRow();" />
                                </div>
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table" id="mytable" style="display: none;">
                                        <tbody>
                                            <tr>
                                                <th>Sr.No./सरल क्र.</th>
                                                <th>District Name / जिले का नाम</th>
                                                <th>Block Name / विकासखण्ड का नाम</th>
                                                <th>Sankul Name / संकुल का नाम</th>
                                                <th>Office/Institute/School (UDISE Code) / कार्यालय/संस्था/विद्यालय</th>

                                                <th>Post Code / पद कोड</th>
                                                <th>Panal Name / पैनल का नाम</th>
                                                <th>Vacant Post / रिक्त पद</th>
                                                <th>Action</th>
                                            </tr>
                                            <%-- <tr>
                                               <td>1</td>
                                               <td>GIMS Khaspadia</td>
                                               <td>23450301102</td>
                                               <td>शास० उच्च०मा० विद्या० तिरोटी</td>
                                               <td>कंटगी बालाघाट</td>
                                               <td>4170840</td>
                                               <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                           </tr>--%>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <div class="row justify-content-center" id="btnRow">
                        <div class="col-md-4">
                            <div class="form-group">
                                <button type="button" id="btnRqstToHO" class="Alert-Confirmation btn btn-success btn-rounded">Send Request</button>
                                <button id="btnClear" class="btn btn-danger btn-rounded">Clear</button>
                            </div>
                        </div>
                    </div>

                </div>

            </fieldset>
        </div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
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

            if (DisabilityRadio.value == "Yes") {
                fileCertMedicalBoard.style.display = "initial";
            } else {
                fileCertMedicalBoard.style.display = "none";
            }
        }

        function HusbandWifeServiceChange(HusbandWifeRadio) {
            var divHusbandWiseService = document.getElementById("divHusbandWiseService");

            if (HusbandWifeRadio.value == "Yes") {
                divHusbandWiseService.style.display = "initial";
            } else {
                divHusbandWiseService.style.display = "none";
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
        function AddRow() {
            var mytable = document.getElementById("mytable");
            var ddlDistrict = document.getElementById("ddlDistrict");
            var ddlBlock = document.getElementById("ddlBlock");
            var ddlOffice = document.getElementById("ddlOffice");
            var ddlOfficce = document.getElementById("ddlOfficce");
            var txtSankulName = document.getElementById("ddlOffice"); // Corrected the ID
            var txtPostCode = document.getElementById("ddlPostCode"); // Corrected the ID
            var txtpanelname = document.getElementById("txtpanelname");
            var txtvacantpost = document.getElementById("txtvacantpost"); // Added this line to get txtvacantpost element

            // Check if the maximum number of entries is reached
            if (mytable.rows.length - 1 >= 20) {
                alert('Maximum 20 entries allowed !!');
                return; // Exit the function without adding a new row
            }
            btnRow.style.display = "block";
            mytable.style.display = "inline-table";
            // Validate other conditions if necessary

            var newRow = mytable.insertRow(mytable.rows.length);

            var cell1 = newRow.insertCell(0);
            cell1.innerHTML = mytable.rows.length - 1;

            var cell2 = newRow.insertCell(1);
            cell2.innerHTML = ddlDistrict.value;

            var cell3 = newRow.insertCell(2);
            cell3.innerHTML = ddlBlock.value;

            var cell4 = newRow.insertCell(3);
            cell4.innerHTML = ddlOffice.value;

            var cell5 = newRow.insertCell(4);
            cell5.innerHTML = ddlOfficce.value;

            var cell6 = newRow.insertCell(5);
            cell6.innerHTML = txtPostCode.value;


            var cell7 = newRow.insertCell(6);
            cell7.innerHTML = txtpanelname.value;



            var cell8 = newRow.insertCell(7);
            cell8.innerHTML = txtvacantpost.value;

            var cell9 = newRow.insertCell(8);
            cell9.innerHTML = "<a class='Alert-Edit' onclick='EditConfirmation()'><a class='Alert-Delete' onclick='DeleteConfirmation()'><i class='fa fa-trash'></i></a>";
        }
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
