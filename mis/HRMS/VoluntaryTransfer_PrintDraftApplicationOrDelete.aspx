<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VoluntaryTransfer_PrintDraftApplicationOrDelete.aspx.cs" Inherits="mis_HRMS_PrintDraftApplicationOrDelete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }

        th, td {
            padding: 15px;
        }

        @media print {
            /* Show modal content in full page */
            .modal-dialog {
                width: 200%;
                height: auto;
                margin: 0;
                padding: 0;
            }

            .modal-content {
                height: 200%;
                border: none;
                box-shadow: none;
            }

            .modal-body {
                width: 210%;
                height: auto;
                overflow: visible !important;
                zoom: 86%;
            }

            /* Hide unnecessary elements */
            body.modal-open {
                visibility: hidden;
            }

                body.modal-open .modal .modal-header,
                body.modal-open .modal .modal-body {
                    visibility: visible;
                }

            .modal-footer {
                display: none;
            }

            .modal-header {
                display: none;
            }
        }


        

        table th {
            font-weight: bold;
          
        }





        .header-title {
            text-align: center;
            font-size: 24px;
            font-weight: bold;
        }

        .sub-title {
            text-align: center;
            font-size: 18px;
        }

        .order-title {
            text-align: center;
            font-weight: bold;
            font-size: 20px;
            margin: 20px 0;
        }

        .qr-code {
            float: right;
        }

        .table-title {
            font-weight: bold;
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
                        <li class="breadcrumb-item">Print Draft Application</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <%-- <div class="row mb-1">
        <div class="col-md-4 ">

            <img src="../../img/OTTMS.png" style="height: 70px" itle="Compassionate Appointment Facilitation &amp; Monitoring System (CAFMS)">
            <p></p>
        </div>
    </div>--%>
    <div class="card mt-3 border card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-md-12">
                    <div class="marqueecontainer border-0">
                        <div class=" p-3 headertext btn btn-primary rounded-pill  d-flex align-items-center" style="font-size: 16px; font-weight: 900;">
                            ड्राफ्ट आवेदन प्रिंट करें, विवरण
                        </div>
                        <div>
                            <marquee style="width: 100%; color: black; font-size: 16px;"
                                onmouseover="this.stop();" onmouseout="this.start();"
                                direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                ड्राफ्ट आवेदन का प्रिंट लेकर स्वतः हस्ताक्षरित कर लॉक एप्लीकेशन में जाकर आवेदन अपलोड करें। 
                            </marquee>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend class="border border-dark border-2">Print Draft Application Of Voluntary Or Mutual Transfer/<br />

                    स्वैच्छिक या पारस्परिक स्थानांतरण का मसौदा आवेदन प्रिंट करें।
                </legend>
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
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <tr class="card-header">
                                    <th style="font-weight: bold;">Sr.No./<br />
                                        सरल क्र.</th>

                                    <th style="font-weight: bold;">Transfer Request Number/<br />
                                        स्थानांतरण अनुरोध संख्या</th>


                                    <th style="font-weight: bold;">Employee Name (Unique ID)/<br />
                                        कर्मचारी का नाम (यूनिक आई.डी.)</th>

                                    <th style="font-weight: bold;">Current OIS (UDISE Code)/<br />
                                        वर्तमान ओ.आई.एस.(यूडाइस कोड)</th>

                                    <th style="font-weight: bold;">Preferred Location/<br />
                                        वरीयता का स्थान</th>

                                    <th style="font-weight: bold;">Print<br />
                                        प्रिंट</th>


                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>TR2024089950</td>
                                    <td>Sajeda Hameed (AA1142)</td>
                                    <td>GOVT HSS BAGH SEVANIA (23320302539)</td>
                                    <td>GOVT HSS BAGH SEVANIA (23320302539)</td>
                                    <td>
                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop2"><i class="fa fa-print" aria-hidden="true"></i></button>
                                    </td>


                                </tr>

                                <tr>
                                    <td>2</td>

                                    <td>TR7648364789</td>

                                    <td>Rounak Nath(AR4781)</td>

                                    <td>BEERPUR, Principal HSS BEERPUR-(4012003012)</td>
                                    <td>BEERPUR, Principal HSS BEERPUR-(4012003012)</td>

                                    <td>
                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></button>
                                    </td>


                                </tr>

                            </table>
                        </div>
                    </div>
                </div>
                <div class="row">

                    <div class="col-md-12 text-center">
                        <p class="font-16"><span style="color: blue;">नोट:- स्वैच्छिक/पारस्परिक स्थानांतरण ड्राफ्ट आवेदन का प्रिंट लेकर स्वतः हस्ताक्षर करें ।</span></p>
                    </div>
                </div>
            </fieldset>



            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>
                                <div class="row mt-2">
                                    <div class="col-sm-2">
                                        <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 100px; height: auto; background: none" class="responsive" />
                                    </div>
                                    <div class="col-sm-8 text-center">
                                        <h4><strong><b>स्कूल शिक्षा विभाग
                  <br />
                                            मध्य प्रदेश शासन</b></strong></h4>
                                        <h4><strong><b>स्वैच्छिक स्थानांतरण के लिए आवेदन सह-घोषणा पत्र (DRAFT - Not Locked)</b></strong></h4>
                                    </div>
                                    <div class="col-sm-2">
                                        <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />
                                    </div>
                                </div>
                                <hr />
                                <div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="">
                                                <div class="table table-responsive table-bordered text-center">
                                                    <table class="table ">
                                                        <tr>
                                                            <th>वेरिफिकेशन कोड</th>
                                                            <td>757598</td>
                                                            <th>दिनाँक:-</th>
                                                            <td>09-03-2024</td>
                                                        </tr>
                                                    </table>
                                                    <h4 class="text-center mt-4 mb-4 font-bold"><u>:: ई-सेवा पुस्तिका अनुसार व्यक्तिगत जानकारी ::</u></h4>
                                                </div>
                                                <table class="table">
                                                  
                                                   
                                                   
                                                    <tr>
                                                        <th>आवेदन क्रमांक :</th>
                                                        <td>132240</td>
                                                        <th>आवेदन दिनाँक :</th>
                                                        <td>09-03-2024</td>
                                                    </tr>
                                                    <tr>
                                                        <th>कर्मचारी का नाम</th>
                                                        <td>Rounak Nath</td>
                                                        <th>यूनिक आई.डी</th>
                                                        <td>AR4781</td>
                                                    </tr>
                                                    <tr>
                                                        <th>पदनाम</th>
                                                        <td>Teacher (UDT)</td>
                                                        <th>ज़िला</th>
                                                        <td>Bhopal</td>
                                                    </tr>
                                                    <tr>
                                                        <th>ब्लॉक</th>
                                                        <td>Bhopal</td>

                                                        <th>क्षेत्र</th>
                                                        <td>Urban</td>
                                                    </tr>
                                                    <tr>
                                                        <th>संकुल कोड / नाम</th>
                                                        <td> BEERPUR, Principal HSS BEERPUR-(4012003012)	</td>

                                                        <th>वर्तमान कार्यालय/संस्था/विद्यालय नाम</th>
                                                        <td> BEERPUR, Principal HSS BEERPUR-(4012003012)	</td>
                                                    </tr>
                                                    <tr>
                                                        <th>जन्मतिथि</th>
                                                        <td>17/07/1992</td>

                                                        <th>आयु (वर्तमान की स्थिति में)</th>
                                                        <td>32 years</td>
                                                    </tr>
                                                    <tr>
                                                        <th>शैक्षणिक योग्यता</th>
                                                        <td>B Tech</td>

                                                        <th>शिक्षण पैनल जिस पर नियुक्ति की गई है</th>
                                                        <td>SSS-1 Mathematics</td>
                                                    </tr>
                                                    <tr>
                                                        <th>वर्तमान संस्था में पदस्थी दिनांक</th>
                                                        <td>15/04/2002</td>

                                                        <th>कुल अवधि वर्षो में</th>
                                                        <td>4</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-center mt-4 mb-4 font-bold" colspan="6">
                                                            <span class="font-bold" style="font-size: large;"><u>:: निःशक्तता वैवाहिक स्थिति रोग ग्रस्त (गंभीर बीमारी) से संवन्धित जानकारी ::</u></span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>क्या आप गंभीर बीमारी से पीड़ित हैं</th>
                                                        <td>हाँ </td>

                                                        <th>गंभीर बीमारी का प्रकार</th>
                                                        <td>कैंसर</td>
                                                    </tr>
                                                    <tr>
                                                        <th>विकलांगता की स्थिति</th>
                                                        <td>नहीं</td>
                                                        <th>क्या स्पाउस सेवा में है</th>
                                                        <td>हाँ</td>
                                                    </tr>
                                                    <tr>
                                                        <th>स्पाउस का नाम </th>
                                                        <td>अंकिता </td>
                                                        <th>स्पाउस का मूल पद</th>
                                                        <td>अध्यापिका</td>
                                                    </tr>
                                                    <tr>
                                                        <th>स्पाउस विभाग</th>
                                                        <td>मप्र स्कूल शिक्षा विभाग</td>
                                                        <th>स्पाउस कार्यालय का पता</th>
                                                        <td>भोपाल</td>
                                                    </tr>
                                                    <tr>
                                                        <th>स्थानांतरण चाहने का कारण</th>
                                                        <td>गंभीर बीमारी से पीड़ित होने के कारण देखभाल के लिए अपने गृह निवास पर ट्रांसफर चाहता हूं</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-center mt-4 mb-4 font-bold" colspan="6">
                                                            <span class="font-bold" style="font-size: large;"><u>:: विकल्प की जानकारी ::</u></span>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="">
                                                            <table class="table table-responsive table-bordered justify-content-center">
                                                                <tr class="card-header">
                                                                    <th>Sr. No.<br />
                                                                        सरल क्र.</th>
                                                                    <th>District<br />
                                                                        ज़िला</th>
                                                                    <th>Block<br />
                                                                        विकासखण्ड </th>
                                                                    <th>Shankul<br />
                                                                        संकुल</th>
                                                                    <th>Office/Institute/School (UDISE Code)<br />
                                                                        कार्यालय/संस्था/विद्यालय</th>
                                                                    <th>Post Code<br />
                                                                        पद कोड</th>
                                                                    <th>Panal<br />
                                                                        पैनल</th>
                                                                    <th>Vacant Post<br />
                                                                        रिक्त पद </th>
                                                                </tr>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>Bhopal</td>
                                                                    <td>Govindpura</td>
                                                                    <td>(2327100059) B.HSS BISTAN</td>
                                                                    <td>GPS NEEMI (Class 1 To 5)</td>
                                                                    <td>2345</td>
                                                                    <td>SSS-1 Mathematics</td>
                                                                    <td>01</td>
                                                                </tr>


                                                            </table>
                                                        </div>
                                                    </div>
                                                    <table style="width: 100%;">
                                                        <tbody>
                                                            <tr>
                                                                <th class="text-center font-20">: : <u>घोषणा</u> : :</th>
                                                            </tr>
                                                            <tr>
                                                                <td class="font-18">मैं प्रमाणित करता करती हूँ कि उपरोक्त जान‌कारी मेरे ज्ञान व विश्वास से एवं दस्तावेजों के अनुसार सत्य है, किसी भी प्रकार की असत्य
                                                              एवं त्रुटिपूर्ण जानकारी पर मेरा आवेदन स्थानांतरण रद्द कर दिया जावेगा। और मेरे विरुध्द अनुशासनात्मक कार्यवाही के लिए सक्षम अधिकारी स्वतंत्र होंगे।
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-end font-16 ">हस्ताक्षर<br />
                                                                    Arjun Talwar<br />
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </fieldset>
                            <div class="modal-footer text-center">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary" onclick="window.print()">Print</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>







           <div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel2" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <fieldset>
                    <div class="row mt-2">
                        <div class="col-sm-2">
                            <img id="imgLogoP2" src="../../img/image-260nw-1902805156.jpg" style="width: 100px; height: auto; background: none" class="responsive" />
                        </div>

                        <div class="col-sm-8 text-center">
                            <p class="header-title">
                                लोक शिक्षण संचालनालय मध्य प्रदेश<br />
                                गौतम नगर, भोपाल - 462021
                            </p>
                        </div>

                        <div class="col-sm-2">
                            <img id="imgLogo2" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />
                        </div>
                    </div>
                    <hr />
                    <div>
                        <div class="row">
                            <div class="col-md-6">
                                <span class="fw-bold" style="font-size: 18px;">CA/24-25/3835</span>
                            </div>
                            <div class="fw-bold col-md-6 text-end">

                                <span >दिनांक : 30/08/2024</span>
                            </div>
                        </div>
                        <!-- Order Title -->
                        <div class="row">
                            <div class="col-md-12">
                                <p class="order-title">:: आदेश ::</p>
                                <p class="sub-title" style="font-size: 15px">मध्य प्रदेश शासन स्कूल शिक्षा विभाग के परिपत्र 01-09/2022/20-1 दिनांक 30/08/2024 द्वारा स्कूल शिक्षा विभाग अंतर्गत कार्यरत अगले के स्थानांतरण हेतु निर्धारित नीति के तहत निम्नलिखित लोक सेवक को उनके नाम के सम्मुख तालिका के कॉलम क्रमांक 7 एवं 8 में अंकित संस्था एवं जिले के समान मान्यता एवं वेतनमान में स्थानांतरित कर अस्थायी रूप से आगामी आदेश तक पदस्थ किया जाता है ।</p>
                            </div>
                        </div>

                        <!-- Table Section -->
                        <div class="row">
                            <table class="table table-bordered">
                                <thead class="table-light">
                                    <tr>
                                        <th style="font-weight:bold; background-color:white;" scope="col">क्र.</th>
                                        <th style="font-weight:bold; background-color:white;" scope="col">यूनिक आई.डी</th>
                                        <th style="font-weight:bold; background-color:white;" scope="col">नाम और पद</th>
                                        <th style="font-weight:bold; background-color:white;" scope="col">विषय</th>
                                        <th style="font-weight:bold; background-color:white;" scope="col">कार्यरत संस्था एवं UDISE कोड</th>
                                        <th style="font-weight:bold; background-color:white;" scope="col">कार्यरत जिला</th>
                                        <th style="font-weight:bold; background-color:white;" scope="col">नवीन संस्था एवं UDISE कोड</th>
                                        <th style="font-weight:bold; background-color:white;" scope="col">नवीन पदस्थापन का जिला</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row" style="background-color:white;">1</th>
                                        <td>AA1142</td>
                                        <td>Sajeda Hameed- Prathmik Shikshak</td>
                                        <td>HM-PS</td>
                                        <td>GOVT HSS BAGH SEVANIA (23320302539)</td>
                                        <td>Bhopal (32)</td>
                                        <td>GOVT HSS BAGH SEVANIA (23320302539)</td>
                                        <td>Bhopal (32)</td>
                                    </tr>
                                   <%-- <tr>
                                        <th scope="row">2</th>
                                        <td>AA1143</td>
                                        <td>Sushma Gour- Prathmik Shikshak</td>
                                        <td>HM-PS</td>
                                        <td>GOVT HSS BAGH SEVANIA (23320302539)</td>
                                        <td>Bhopal (32)</td>
                                        <td>GOVT HSS BAGH SEVANIA (23320302539)</td>
                                        <td>Bhopal (32)</td>
                                    </tr>--%>
                                </tbody>
                            </table>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-12">
                                <p class="footer-text" style="font-size: 12px; line-height: 2">
                                    उपरोक्त स्थानांतरण निम्न शर्तों के अधीन रहेगा:
                                    <br />
                                    01. संबंधित लोक सेवक का स्थानांतरण आदेश जारी होने पर उसी दिन या उसके ई-सेवा प्रलेख/सेवा पुस्तक में स्थानांतरण आदेश में उल्लेखित जानकारी को प्रविष्ट करने के उपरांत नई पद स्थापना से कार्य ग्रहण करें एवं उसकी सूचना संबंधित संकुल प्राचार्य एवं जिला शिक्षा अधिकारी को दें।
                                    <br />
                                    02. आदेश प्राप्त लोक सेवक/लोक सेविका के जिला शिक्षा अधिकारी कार्यालय में अविलंब में सूचना देने के उपरांत कार्यमुक्ति आदेश एवं स्थानांतरित संस्था में कार्य ग्रहण करने तथा उसी दिन की डिजिटल उपस्थिति भेजें ताकि उनके वेतन एवं भत्तों का दावा प्रस्तुत किया जा सके, अन्यथा विलंब से वेतन भत्तों की देयता स्वीकार नहीं की जाएगी।
                                    <br />
                                    03. स्थानांतरित लोक सेवक का कार्य ग्रहण तथा कार्यमुक्ति (जिसका भी लागू) प्रकरण में देरी की स्थिति में संबंधित संस्था के प्रमुख का उत्तरदायित्व होगा जिसके स्थानांतरण के लिए शपथ पत्र प्रस्तुत करना अनिवार्य होगा।
                                    <br />
                                    04. स्थानांतरित लोक सेवक अपने कार्य ग्रहण की सूचना के संबंध में निर्देशों का पालन करेंगे।
                                    <br />
                                    05. यदि संबंधित लोक सेवक उपरोक्त आदेश के पालन में किसी भी प्रकार की अनदेखी या देरी करेगा तो संबंधित को नई संस्था में नियुक्त नहीं किया जाएगा एवं उसकी स्थिति की सूचना मध्यप्रदेश शासन को दी जाएगी।
                                    <br />
                                    06. उक्त आदेश का पालन नहीं करने पर मप्र शासन द्वारा कड़ी अनुशासनात्मक कार्यवाही की जाएगी।
                                    <br />
                                    07. कार्यभार ग्रहण करने के पश्चात पदस्थापन पर कार्यभार ग्रहण करने के आदेश की प्रतिलिपि भी संलग्न करें और सभी जानकारी लोक शिक्षण विभाग के माध्यम से मप्र शासन को प्रेषित की जाए।
                                </p>
                                <br />
                                <p class="signature text-end fw-bold">(शिवा गुप्ता)<br />
                                    आयुक्त<br />
                                    लोक शिक्षण, मध्य प्रदेश</p>
                            </div>
                        </div>
                    </div>
            </div>
            </fieldset>
            <div class="modal-footer text-center">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onclick="window.print()">Print</button>
            </div>
        </div>
    </div>
</div>

        </div>




    </div>
    




    <script>
        function myFunction() {

            document.getElementById("vacaniesDetail").style.display = "block";
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

